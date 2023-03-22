local wolfhud = BLT.Mods:GetModByName("WolfHUD")
if wolfhud then
else
	if RequiredScript == "lib/managers/platformmanager" then
		core:module("PlatformManager")

		local set_rich_presence_original = WinPlatformManager.set_rich_presence
		function WinPlatformManager:set_rich_presence(name, ...)
			set_rich_presence_original(self, name or self._current_rich_presence, ...)

			if SystemInfo:distribution() == Idstring("STEAM") then
				-- Default config
				local display = "#raw_status" --"#DisplayMe"
				local group_key = ""
				local group_count = ""

				local game_state = "menu"
				local game_mode = ""
				local game_heist = ""
				local game_heistday = ""
				local game_difficulty = ""
				
				if self._current_rich_presence ~= "Idle" then
					if Global.game_settings.permission == "private" and not Global.game_settings.single_player then
						game_state = "private"
					else
						-- Handle Steam RP Grouping
						if not Global.game_settings.single_player then
							if managers.network.matchmake and managers.network.matchmake.lobby_handler then
								group_key = managers.network.matchmake.lobby_handler:id()
							end

							local session = managers.network:session()
							group_count = tostring(session and #session:all_peers() or 1)
						end

						-- Determine game state
						if _G.game_state_machine and (_G.game_state_machine:current_state_name() == "menu_main" or _G.game_state_machine:current_state_name() == "ingame_lobby_menu") then
							game_state = "lobby"
						elseif self._current_rich_presence == "SPEnd" or self._current_rich_presence == "MPEnd" then
							game_state = "payday"
						else
							game_state = "playing"
						end

						-- Popululate gamemode, heist and difficulty
						if managers.crime_spree and managers.crime_spree:is_active() then		-- Crime Spree
							game_mode = "crime_spree"
							game_heist = self:get_current_level_id()
							local spree_lvl = managers.crime_spree:server_spree_level()
							game_difficulty = spree_lvl and managers.money:add_decimal_marks_to_string(tostring(spree_lvl)) or "(N/A)"
						elseif managers.skirmish and managers.skirmish:is_skirmish() then		-- Holdout
							game_mode = "skirmish"
							game_heist = self:get_current_level_id()
							game_difficulty = string.format("%i/%i", managers.skirmish:current_wave_number() or 1, tweak_data and #tweak_data.skirmish.ransom_amounts or 9)
						elseif managers.job:has_active_job() then								-- Heists
							game_heist = self:get_current_job_id()

							if #(managers.job:current_job_chain_data() or {}) > 1 then
								game_mode = "heist_chain"
								game_heistday = tostring(managers.job:current_stage() or "")
							else
								game_mode = "heist"
							end

							game_difficulty = tweak_data and tweak_data:index_to_difficulty(managers.job:current_difficulty_stars() + 2) or Global.game_settings.difficulty or "easy"
						else
							-- Overwrite game state if nothing is selected
							game_state = "lobby_no_job"
						end
					end
				end

				-- Send our data to Steam
				Steam:set_rich_presence("steam_display", display)		-- Currently not usable, only Overkill can setup required localized strings here...
				Steam:set_rich_presence("steam_player_group", group_key)
				Steam:set_rich_presence("steam_player_group_size", group_count)

				Steam:set_rich_presence("game:state", game_state)
				Steam:set_rich_presence("game:mode", game_mode)
				Steam:set_rich_presence("game:heist", game_heist)
				Steam:set_rich_presence("game:heist_day", game_heistday)
				Steam:set_rich_presence("game:difficulty", game_difficulty)

				Steam:set_rich_presence("status", self:build_status_string(display, game_state, game_mode, game_heist, game_heistday, game_difficulty, group_count))
			end
		end

		local suffixList = {
			"_prof$",
			"_day$",
			"_night$",
			"_wrapper$",
			"^skm_"
		}
		local ignoreSuffix = {
			["election_day"] = true
		}

		function WinPlatformManager:get_current_job_id()
			local job_id = managers.job:current_job_id()

			if job_id and not ignoreSuffix[job_id] then
				for _, suffix in ipairs(suffixList) do
					job_id = job_id:gsub(suffix, "")
				end
			end

			return job_id or "UNKNOWN"
		end

		function WinPlatformManager:get_current_level_id()
			local level_id = Global.game_settings.level_id

			if level_id and not ignoreSuffix[level_id] then
				for _, suffix in ipairs(suffixList) do
					level_id = level_id:gsub(suffix, "")
				end
			end

			return level_id or self:get_current_job_id()
		end		

		function WinPlatformManager:build_status_string(display, state, mode, heist, day, difficulty, group_count)
			
			RPUC = _G.RichPresenceUltimate
		
			if string.len(tostring(RPUC.settings.players)) > 0 then
				gap = " "
			else
				gap = ""
			end

			if string.len(tostring(RPUC.settings.days)) > 1 then
				gap2 = " "
			else
				gap2 = ""
			end

			if RPUC.settings.bracket_counter then
				BRACKET_LEFT_1 = RPUC.settings.bracket1
				BRACKET_RIGHT_1 = RPUC.settings.bracket2
			else
				BRACKET_LEFT_1 = ""
				BRACKET_RIGHT_1 = ""
			end
			
			if RPUC.settings.bracket_days then
				BRACKET_LEFT_2 = RPUC.settings.bracket1
				BRACKET_RIGHT_2 = RPUC.settings.bracket2
			else
				BRACKET_LEFT_2 = ""
				BRACKET_RIGHT_2 = ""
			end
			
			if RPUC.settings.bracket_diffs then
				BRACKET_LEFT_3 = RPUC.settings.bracket1
				BRACKET_RIGHT_3 = RPUC.settings.bracket2
			else
				BRACKET_LEFT_3 = ""
				BRACKET_RIGHT_3 = ""
			end		
		
			if RPUC.settings.comas then
				COMA = RPUC.settings.coma
			else
				COMA = ""
			end

			if Global.game_settings.single_player then
				solo = " {#Mode_%game:mode%}"
			else
				if RPUC.settings.hide_player_counter then
					coop = " {#Mode_%game:mode%}"
					card = " {#Mode_%game:mode%}"
				else
					coop = " {#Mode_%game:mode%}"..COMA.." "..BRACKET_LEFT_1..group_count.."/4"..gap..RPUC.settings.players..BRACKET_RIGHT_1
					card = " {#Mode_%game:mode%}"..COMA.." "..BRACKET_LEFT_1..group_count.."/4"..gap..RPUC.settings.players..BRACKET_RIGHT_1
				end
			end
			
			if RPUC.settings.hide_player_counter then
				lobby = RPUC.settings.empty
			else
				lobby = RPUC.settings.empty..COMA.." "..BRACKET_LEFT_1..group_count.."/4"..gap..RPUC.settings.players..BRACKET_RIGHT_1
			end

			if (RPUC.settings.tagless and not RPUC.settings.anonymous and not RPUC.settings.anonymous_tag) or (string.len(RPUC.settings.tag) == 0) then
				tag = "{#State_%game:state%}"
			elseif RPUC.settings.anonymous and not RPUC.settings.anonymous_tag and not RPUC.settings.tagless then
				tag = " "..string.char(10).." " or string.char(10) or " "
			elseif (RPUC.settings.anonymous_tag and not RPUC.settings.anonymous and not RPUC.settings.tagless) then
				tag = "["..RPUC.settings.tag.."]"
			elseif not RPUC.settings.tagless and not RPUC.settings.anonymous and not RPUC.settings.anonymous_tag then
				tag = "["..RPUC.settings.tag.."]".." {#State_%game:state%}"
			else
				tag = "Too many settings in 'Advanced' are enabled (2 or more)"
			end

			local tokens = {
				["#raw_status"] =				tag,

				["#State_menu"] =				RPUC.settings.menu,
				["#State_private"] =			RPUC.settings.private,
				["#State_lobby_no_job"] =		lobby,
				["#State_lobby"] =				solo or card,
				["#State_playing"] =			solo or coop,
				["#State_payday"] =				solo or coop,

				["#Mode_crime_spree"] =			RPUC.settings.cs..COMA.." {#Level_%game:heist%}"..COMA.." ".."(Lvl. %game:difficulty%)",
				["#Mode_skirmish"] =			RPUC.settings.ho..COMA.." {#Level_%game:heist%}", --RPUC.settings.ho..COMA.." {#Level_%game:heist%}"..COMA.." ".."(Wave %game:difficulty%)",
				["#Mode_heist"] =				"{#Job_%game:heist%}"..COMA.." "..BRACKET_LEFT_3.."{#Difficulty_%game:difficulty%}"..BRACKET_RIGHT_3,
				["#Mode_heist_chain"] =			"{#Job_%game:heist%}"..COMA.." "..BRACKET_LEFT_2..RPUC.settings.days..gap2.."%game:heist_day%"..BRACKET_RIGHT_2..COMA.." "..BRACKET_LEFT_3.."{#Difficulty_%game:difficulty%}"..BRACKET_RIGHT_3,

				["#Difficulty_easy"] =			"",
				["#Difficulty_normal"] =		RPUC.settings.nrml,
				["#Difficulty_hard"] =			RPUC.settings.hrd,
				["#Difficulty_overkill"] =		RPUC.settings.vh,
				["#Difficulty_overkill_145"] =	RPUC.settings.ovk,
				["#Difficulty_easy_wish"] =		RPUC.settings.mh,
				["#Difficulty_overkill_290"] =	RPUC.settings.dw,
				["#Difficulty_sm_wish"] =		RPUC.settings.ds,

				["#Job_short"] = 				"The Basics",
				["#Job_short1"] = 				RPUC.settings.tut1,
				["#Level_short1_stage1"] = 		"Stealth - Flash Drive",
				["#Level_short1_stage2"] = 		"Stealth  - Erasing History",
				["#Job_short2"] = 				RPUC.settings.tut2,
				["#Level_short2_stage1"] = 		"Loud - Get The Coke",
				["#Level_short2_stage2b"] = 	"Loud - Plan B",
				["#Job_chill"] = 				RPUC.settings.relax,
				["#Level_chill"] = 				RPUC.settings.relax,
				["#Job_chill_combat"] = 		RPUC.settings.combat,
				["#Level_chill_combat"] = 		RPUC.settings.combat,
				["#Job_safehouse"] = 			RPUC.settings.relax,
				["#Level_safehouse"] = 			RPUC.settings.relax,
				["#Job_haunted"] = 				RPUC.settings.shn,
				["#Level_haunted"] = 			RPUC.settings.shn,
				["#Job_branchbank"] = 			RPUC.settings.rand,
				["#Job_branchbank_gold"] = 		RPUC.settings.gold,
				["#Job_branchbank_deposit"] = 	RPUC.settings.depo,
				["#Job_branchbank_cash"] = 		RPUC.settings.cash,
				["#Level_branchbank"] = 		"Bank Heist",
				["#Job_arm"] = 					"Transport Heists",
				["#Job_arm_und"] = 				RPUC.settings.pass,
				["#Level_arm_und"] = 			RPUC.settings.pass,
				["#Job_arm_hcm"] = 				RPUC.settings.town,
				["#Level_arm_hcm"] = 			RPUC.settings.town,
				["#Job_arm_cro"] = 				RPUC.settings.cross,
				["#Level_arm_cro"] = 			RPUC.settings.cross,
				["#Job_arm_for"] = 				RPUC.settings.train,
				["#Level_arm_for"] = 			RPUC.settings.train,
				["#Job_arm_fac"] = 				RPUC.settings.harbour,
				["#Level_arm_fac"] = 			RPUC.settings.harbour,
				["#Job_arm_par"] = 				RPUC.settings.park,
				["#Level_arm_par"] = 			RPUC.settings.park,
				["#Job_watchdogs"] = 			RPUC.settings.wd,
				["#Level_watchdogs_1"] = 		"Truck Load",
				["#Level_watchdogs_2"] = 		"Boat Load",
				["#Job_watchdogs_stage2"] = 	"Boat Load",
				["#Level_watchdogs_stage2"] = 	"Boat Load",
				["#Job_election_day"] = 		RPUC.settings.day,
				["#Level_election_day_1"] = 	"Right Track",
				["#Level_election_day_2"] = 	"Swing Vote",
				["#Level_election_day_3"] = 	"Breaking Ballot",
				["#Job_alex"] = 				RPUC.settings.rats,
				["#Level_alex_1"] = 			"Cook Off",
				["#Level_alex_2"] = 			"Code for Meth",
				["#Level_alex_3"] = 			"Bus Stop",
				["#Job_framing_frame"] = 		RPUC.settings.frame,
				["#Level_framing_frame_1"] = 	"Art Gallery",
				["#Level_framing_frame_2"] = 	"Train Trade",
				["#Level_framing_frame_3"] = 	"Framing",
				["#Job_firestarter"] = 			RPUC.settings.fs,
				["#Level_firestarter_1"] = 		"Airport",
				["#Level_firestarter_2"] = 		"FBI Server",
				["#Level_firestarter_3"] = 		"Trustee Bank",
				["#Job_welcome_to_the_jungle"] = 		RPUC.settings.oil,
				["#Level_welcome_to_the_jungle_1"] = 	"Club House",
				["#Level_welcome_to_the_jungle_2"] = 	"Engine Problem",
				["#Job_hox"] = 					RPUC.settings.hox,
				["#Level_hox_1"] = 				"The Breakout",
				["#Level_hox_2"] = 				"The Search",
				["#Job_mia"] = 					RPUC.settings.hm,
				["#Level_mia_1"] = 				RPUC.settings.hm,
				["#Level_mia_2"] = 				"Four Floors",
				["#Job_peta"] = 				RPUC.settings.goat,
				["#Level_peta"] = 				"This was not the deal",
				["#Level_peta2"] = 				"Dirty work",
				["#Job_hox_3"] = 				RPUC.settings.reven,
				["#Level_hox_3"] = 				RPUC.settings.reven,
				["#Job_mus"] = 					RPUC.settings.diam,
				["#Level_mus"] = 				RPUC.settings.diam,
				["#Job_run"] = 					RPUC.settings.heat,
				["#Level_run"] = 				RPUC.settings.heat,
				["#Job_red2"] = 				RPUC.settings.fwb,
				["#Level_red2"] = 				RPUC.settings.fwb,
				["#Job_born"] = 				RPUC.settings.biker,
				["#Level_born"] = 				"Lion's Den",
				["#Level_chew"] = 				"Interception",
				["#Job_rvd"] = 					RPUC.settings.rvd,
				["#Level_rvd2"] = 				"Garnet Group Boutique",
				["#Level_rvd1"] = 				"Highland Mortuary",
				["#Job_nightclub"] = 			RPUC.settings.club,
				["#Level_nightclub"] = 			RPUC.settings.club,
				["#Job_brb"] = 					RPUC.settings.brook,
				["#Level_brb"] = 				RPUC.settings.brook,
				["#Job_flat"] = 				RPUC.settings.panic,
				["#Level_flat"] = 				RPUC.settings.panic,
				["#Job_cage"] = 				RPUC.settings.cars,
				["#Level_cage"] = 				RPUC.settings.cars,
				["#Job_pbr2"] = 				RPUC.settings.birth,
				["#Level_pbr2"] = 				RPUC.settings.birth,
				["#Job_rat"] = 					RPUC.settings.cook,
				["#Level_rat"] = 				RPUC.settings.cook,
				["#Job_ukrainian_job"] = 		RPUC.settings.job,
				["#Level_ukrainian_job"] = 		RPUC.settings.job,
				["#Job_gallery"] = 				RPUC.settings.art,
				["#Level_gallery"] = 			RPUC.settings.art,
				["#Job_glace"] = 				RPUC.settings.bridge,
				["#Level_glace"] = 				RPUC.settings.bridge,
				["#Job_sah"] = 					RPUC.settings.auction,
				["#Level_sah"] = 				RPUC.settings.auction,
				["#Job_roberts"] = 				RPUC.settings.gobank,
				["#Level_roberts"] = 			RPUC.settings.gobank,
				["#Job_tag"] = 					RPUC.settings.feds,
				["#Level_tag"] = 				RPUC.settings.feds,
				["#Job_dark"] = 				RPUC.settings.station,
				["#Level_dark"] = 				RPUC.settings.station,
				["#Level_wwh"] = 				RPUC.settings.deal,
				["#Job_wwh"] = 					RPUC.settings.deal,
				["#Job_friend"] = 				RPUC.settings.scar,
				["#Level_friend"] = 			RPUC.settings.scar,
				["#Job_man"] = 					RPUC.settings.taxman,
				["#Level_man"] = 				RPUC.settings.taxman,
				["#Job_des"] = 					RPUC.settings.rock,
				["#Level_des"] = 				RPUC.settings.rock,
				["#Job_help"] = 				RPUC.settings.prison,
				["#Level_help"] = 				RPUC.settings.prison,
				["#Job_big"] = 					RPUC.settings.big,
				["#Level_big"] = 				RPUC.settings.big,
				["#Job_cane"] = 				RPUC.settings.santa,
				["#Level_cane"] = 				RPUC.settings.santa,
				["#Job_spa"] = 					RPUC.settings.tenten,
				["#Level_spa"] = 				RPUC.settings.tenten,
				["#Job_jewelry_store"] = 		RPUC.settings.jewels,
				["#Level_jewelry_store"] = 		RPUC.settings.jewels,
				["#Job_jolly"] = 				RPUC.settings.shock,
				["#Level_jolly"] = 				RPUC.settings.shock,
				["#Job_family"] = 				RPUC.settings.dstore,
				["#Level_family"] = 			RPUC.settings.dstore,
				["#Job_arena"] = 				RPUC.settings.alesso,
				["#Level_arena"] = 				RPUC.settings.alesso,
				["#Job_pines"] = 				RPUC.settings.xmas,
				["#Level_pines"] = 				RPUC.settings.xmas,
				["#Job_chca"] =					RPUC.settings.chca,
				["$Level_chca"] =				RPUC.settings.chca,
				["#Job_kenaz"] = 				RPUC.settings.ggc,
				["#Level_kenaz"] = 				RPUC.settings.ggc,
				["#Job_shoutout_raid"] = 		RPUC.settings.melt,
				["#Level_shoutout_raid"] = 		RPUC.settings.melt,
				["#Job_mad"] = 					RPUC.settings.boil,
				["#Level_mad"] = 				RPUC.settings.boil,
				["#Job_moon"] = 				RPUC.settings.stealing,
				["#Level_moon"] = 				RPUC.settings.stealing,
				["#Job_fish"] = 				RPUC.settings.yacht,
				["#Level_fish"] = 				RPUC.settings.yacht,
				["#Job_pal"] = 					RPUC.settings.feit,
				["#Level_pal"] = 				RPUC.settings.feit,
				["#Job_dinner"] = 				RPUC.settings.pig,
				["#Level_dinner"] = 			RPUC.settings.pig,
				["#Job_pbr"] = 					RPUC.settings.mount,
				["#Level_pbr"] = 				RPUC.settings.mount,
				["#Job_crojob1"] = 				RPUC.settings.dock,
				["#Level_crojob2"] = 			RPUC.settings.dock,
				["#Job_four_stores"] = 			RPUC.settings.four,
				["#Level_four_stores"] = 		RPUC.settings.four,
				["#Job_crojob"] = 				RPUC.settings.forest,
				["#Job_crojob2"] = 				RPUC.settings.forest,
				["#Level_crojob3"] = 			RPUC.settings.forest,
				["#Job_kosugi"] = 				RPUC.settings.shadow,
				["#Level_kosugi"] = 			RPUC.settings.shadow,
				["#Job_hvh"] = 					RPUC.settings.ckr,
				["#Level_hvh"] = 				RPUC.settings.ckr,
				["#Job_nail"] = 				RPUC.settings.lab,
				["#Level_nail"] = 				RPUC.settings.lab,
				["#Job_dah"] = 					RPUC.settings.dah,
				["#Level_dah"] = 				RPUC.settings.dah,
				["#Job_mallcrasher"] = 			RPUC.settings.mall,
				["#Level_mallcrasher"] = 		RPUC.settings.mall,
				["#Job_bph"] = 					RPUC.settings.hell,
				["#Level_bph"] = 				RPUC.settings.hell,
				["#Job_nmh"] = 					RPUC.settings.mercy,
				["#Level_nmh"] = 				RPUC.settings.mercy,
				["#Job_vit"] = 					RPUC.settings.white,
				["#Level_vit"] = 				RPUC.settings.white,
				["#Job_mex_cooking"] = 			RPUC.settings.crystals,
				["#Level_mex_cooking"] = 		RPUC.settings.crystals,
				["#Job_mex"] = 					RPUC.settings.crossing,
				["#Level_mex"] = 				RPUC.settings.crossing,
				["#Job_bex"] = 					RPUC.settings.martin,
				["#Level_bex"] = 				RPUC.settings.martin,
				["#Job_pex"] = 					RPUC.settings.tijuana,
				["#Level_pex"] = 				RPUC.settings.tijuana,
				["#Job_fex"] = 					RPUC.settings.buluc,
				["#Level_fex"] = 				RPUC.settings.buluc,
				["#Job_chas"] = 				RPUC.settings.dragon,
				["#Level_chas"] = 				RPUC.settings.dragon,
				["#Job_sand"] = 				RPUC.settings.sand,
				["#Level_sand"] =				RPUC.settings.sand,
	            ["#Job_pent"] = 				RPUC.settings.pent,
				["#Level_pent"] =				RPUC.settings.pent,
				["#Job_ranc"] = 				RPUC.settings.ranc,
				["#Level_ranc"] =				RPUC.settings.ranc,
				["#Job_trai"] = 				RPUC.settings.trai,
				["#Level_trai"] =				RPUC.settings.trai,
				["#Job_corp"] = 				RPUC.settings.corp,
				["#Level_corp"] =				RPUC.settings.corp,
				
				--resmod
				["#Job_xmn_tag"] =				RPUC.settings.feds_xmas,
				["#Level_xmn_tag"] = 			RPUC.settings.feds_xmas,
				["#Job_xmn_hox"] = 				RPUC.settings.hox_xmas,
				["#Level_xmn_hox"] = 			RPUC.settings.hox_xmas,
				["#Job_int_dock_burn"] = 		RPUC.settings.burn,
				["#Level_int_dock_burn"] =		RPUC.settings.burn,
				["#Job_int_dock"] = 			RPUC.settings.wet,
				["#Level_int_dock"] = 			RPUC.settings.wet,
				["#Job_junker"] = 				RPUC.settings.dog,
				["#Level_junker"] =				RPUC.settings.dog,
				
				--custom
				["#Job_AllGhilliedUp"] =	               RPUC.settings.ghill,
				["#Level_AllGhilliedUp"] =	               RPUC.settings.ghill,
				["#Job_modders_devmap"] =		           RPUC.settings.prove,
				["#Level_modders_devmap"] =		           RPUC.settings.prove,
				["#Job_thechase"] =				           RPUC.settings.stalk,
				["#Level_thechase"] =			           RPUC.settings.stalk,
				["#Job_Zdann_Enemy_Spawner"] =             RPUC.settings.spawner,
				["#Level_Zdann_Enemy_Spawner"] =           RPUC.settings.spawner,
				["#Job_Election_Funds"] =		           RPUC.settings.funds,
				["#Level_Election_Funds"] =		           RPUC.settings.funds,
				["#Job_HarvestTrustee_SouthernBranch"] =   RPUC.settings.south,
				["Level_HarvestTrustee_SouthernBranch"] =  RPUC.settings.south,
				["#Job_Armsdeal Alleyway"] =			   RPUC.settings.alley,
				["#Level_Armsdeal Alleyway"] =			   RPUC.settings.alley,
				["#Job_YouAreNeverAloneInTheDark"] =   	   RPUC.settings.cargo,
				["#Level_YouAreNeverAloneInTheDark"] =     RPUC.settings.cargo,
				["#Job_sh_raiders"] =                      RPUC.settings.raiders,
				["#Level_sh_raiders"] =                    RPUC.settings.raiders,
				["#Job_glb"] =                             RPUC.settings.lotus,
				["#Level_glb"] =                           RPUC.settings.lotus,
				["#Job_anlh"] =                            RPUC.settings.liang,
				["#Level_anlh"] =                          RPUC.settings.liang,
				["#Job_knk_jwl"] =                         RPUC.settings.knock,
				["#Level_knk_jwl"] =                       RPUC.settings.knock,
				["#Job_RogueCompany"] =                    RPUC.settings.rogue,
				["#Level_RogueCompany"] =                  RPUC.settings.rogue,
				["#Job_Triad Takedown Yacht Heist"] =      RPUC.settings.triad,
				["#Level_Triad Takedown Yacht Heist"] =    RPUC.settings.triad,
				
			}

			local data = {
				["game:state"] = state,
				["game:mode"] = mode,
				["game:heist"] = heist,
				["game:heist_day"] = day,
				["game:difficulty"] = difficulty,
			}

			local s = string.format("{%s}", display or "#raw_status")

			local function populate_data(s, tokens, data, count)
				count = count or 1
				if count > 100 then
					log("Infinite loop in RP update!", "error")
					return s
				end

				if s:gmatch("%%(.+)%%") then
					for k, v in pairs(data or {}) do
						s = s:gsub("%%" .. k .. "%%", v)
					end
				end

				if s:gmatch("{(.+)}") then
					for k, v in pairs(tokens or {}) do
						local key = string.format("{%s}", k)
						if s:find(key) then
							s = s:gsub(key, populate_data(v, tokens, data, count + 1))
						end
					end
				end

				return s
			end

			s = populate_data(s, tokens, data)
			--log(string.format("Steam RP updated: %s", s))
			return s
		end

	elseif RequiredScript == "lib/managers/skirmishmanager" then
		local update_matchmake_attributes_original = SkirmishManager.update_matchmake_attributes
		function SkirmishManager:update_matchmake_attributes(...)
			update_matchmake_attributes_original(self, ...)

			if Global.game_settings.permission ~= "private" then
				--local game_difficulty = string.format("%i/%i", self:current_wave_number() or 1, tweak_data and #tweak_data.skirmish.ransom_amounts or 9)
				--Steam:set_rich_presence("game:difficulty", game_difficulty)
				if managers.platform then
					managers.platform:set_rich_presence()
				end
			end
		end
	end

	if Hooks then	-- Basegame doesn't update RP on peer count changes...
		Hooks:Add("BaseNetworkSessionOnPeerEnteredLobby", "BaseNetworkSessionOnPeerEnteredLobby_WolfHUD_RP", function(session, peer, peer_id)
			local session = managers.network:session()
			if session and Global.game_settings.permission ~= "private" then
				local group_count = tostring(session and #session:all_peers() or 1)
				Steam:set_rich_presence("steam_player_group_size", group_count)
			end
		end)

		Hooks:Add("BaseNetworkSessionOnPeerRemoved", "BaseNetworkSessionOnPeerRemoved_WolfHUD_RP", function(session, peer, peer_id, reason)
			local session = managers.network:session()
			if session and Global.game_settings.permission ~= "private" then
				local group_count = tostring(session and #session:all_peers() or 1)
				Steam:set_rich_presence("steam_player_group_size", group_count)
			end
		end)
	end
end