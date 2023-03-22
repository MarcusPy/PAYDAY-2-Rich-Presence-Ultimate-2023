_G.RichPresenceUltimate = {
	mod_path = ModPath,
	save_path = SavePath,
	save_name = "RichPresence.txt",
	promo_text = "RICH PRESENCE ULTIMATE - REVISION NO. ",
	revision = 15,	
	settings = {
		tag = "",

--	States		
		menu = "Main Menu",
		private = "Private Lobby",
		empty = "Lobby",

--	Various		
		days = "Day",
		coma = "",
		bracket1 = "[",
		bracket2 = "]",
		players = "",
		bracket_counter = true,
		bracket_days = true,
		bracket_diffs = true,
		comas = false,
		
--	Advanced		
		tagless = false,
		anonymous = false,
		anonymous_tag = false,
		hide_player_counter = false,
		rng_label = true,
		label_toggle = true,
		
--	Modes		
		cs = "[CS]",
		ho = "[HO]",

--	Difficulties	
		nrml = "N",
		hrd = "H",
		vh = "VH",
		ovk = "OVK",
		mh = "MH",
		dw = "DW",
		ds = "DS",

--	Bain		
		art = "Art Gallery",
		rand = "Bank Heist: Random",
		gold = "Bank Heist: Gold",
		depo = "Bank Heist: Deposit",
		cash = "Bank Heist: Cash",
		alesso = "Alesso Heist",
		cross = "Transport: Crossroads",
		harbour = "Transport: Harbour",
		train = "Transport: Train Heist",
		town = "Transport: Downtown",
		park = "Transport: Park",
		pass = "Transport: Underpass",
		cars = "Car Shop",
		dstore = "Diamond Store",
		jewels = "Jewelry Store",
		shadow = "Shadow Raid",
		cook = "Cook Off",
		gobank = "GO Bank",
		rvd = "Reservoir Dogs",

--	Classics		
		dah = "Diamond Heist",
		pig = "Slaughterhouse",
		panic = "Panic room",
		bridge = "Green Bridge",
		taxman = "Undercover",
		mercy = "No Mercy",
		feit = "Counterfeit",
		fwb = "First World Bank",
		heat = "Heat Street",
		
--	Events	
		ckr = "Cursed Kill Room",
		lab = "Lab Rats",
		prison = "Prison Nightmare",
		shn = "Safehouse Nightclub",

--	Miscellaneous		
		tut1 = "Tutorial - Stealth",
		tut2 = "Tutorial - Loud",
		relax = "Safehouse",
		combat = "Safehouse Raid",

--	Hector
		fs = "Firestarter",
		rats = "Rats",
		wd = "Watchdogs",

--	Jimmy		
		boil = "Boiling Point",
		station = "Murky Station",

--	Jiu Feng		
		dragon = "Bad Dragon Heist",
		sand = "The Ukrainian Prisoner",
        pent = "Mountain Master",
		ranc = "Midland Ranch",
		trai = "Lost In Transit",
		corp = "Hostile Takeover",

--	Locke		
		deal = "Alaskan Deal",
		mount = "Beneath The Mountain",
		birth = "Birth Of Sky",
		crossing = "Border Crossing",
		crystals = "Border Crystals",
		tijuana = "Breakfast In Tijuana",
		feds = "Breakin' Feds",
		brook = "Brooklyn Bank",
		hell = "Hell's Island",
		rock = "Henry's Rock",
		auction = "Shacklethorne Auction",
		white = "White House",

--	The Butcher		
		scar = "Scarface Mansion",
		dock = "The Bomb: Dockyard",
		forest = "The Bomb: Forest",

--	The Continental		
		tenten = "Brooklyn 10-10",
		yacht = "Yacht",

--	The Dentist		
		hox = "Hoxton Breakout",
		hm = "Hotline Miami",
		ggc = "Golden Grin Casino",
		reven = "Hoxton Revenge",
		big = "Big Bank",
		diam = "The Diamond",

--	The Elephant		
		oil = "Big Oil",
		day = "Election Day",
		frame = "Framing Frame",
		biker = "The Biker Heist",

--	Vlad		
		shock = "Aftershock",
		buluc = "Buluc's Mansion",
		four = "Four Stores",
		goat = "Goat Simulator",
		mall = "Mallcrasher",
		melt = "Meltdown",
		club = "Nightclub",
		martin = "San Martin Bank",
		santa = "Santa's Workshop",
		stealing = "Stealing Xmas",
		job = "Ukrainian Job",
		xmas = "White Xmas",
		chca = "The Black Cat",
		
--	ResMod		
		feds_xmas = "Breakin' Feds Xmas",
		hox_xmas = "Hoxton Breakout Xmas",
		burn = "Burnout",
		wet = "Wetwork",
		dog = "Doghouse",

--	Custom
		ghill = "All Ghilled Up",
		prove = "Proving Grounds",
		stalk = "Stalk Fraud",
		spawner = "Enemy Spawner",
		funds = "Election Funds",
		south = "Harvest & Trustee: Southern Branch",
		alley = "Armsdeal: Alleyway",
		cargo = "Cragoship Raid",
		raiders = "Safehouse Raiders",
		lotus = "Golden Lotus Bank",
		liang = "An End To Liang",
		knock = "Knockover: Jewelry Store",
		rogue = "Rogue Company",
		triad = "Triad Takedown Yacht Heist",

	},
	strings = {
		["RPUS_options_menu_title"] = "Rich Presence Ultimate",
		["RPUS_options_menu_desc"] = "Rich Presence Ultimate Settings",
		
		["how_to"] = "Set up a specific name for this entry. Too long input will cause the name on the right to disappear. Although, everything will work just fine.",	

		["tag_title"] = "Your Tag Here",
		["tag_desc"] = "Leaving it empty will make it no appear. Can be overridden by 'No Tag Mode' and 'Anonymous Mode'",

		["RPUS_advanced_title"] = "Advanced",
		["RPUS_advanced_desc"] = "",
		["tagless_title"] = "No Tag Mode",
		["tagless_desc"] = "Determine if tags should be displayed ([Vanilla] or without it)",
		["anonymous_title"] = "Anonymous Mode",
		["anonymous_desc"] = "No status mode, nothing will be displayed under PAYDAY 2",
		["anonymous_tag_title"] = "Anonymous Mode With Tag",
		["anonymous_tag_desc"] = "No status mode, nothing except your tag (e.g [Vanilla]) will be displayed under PAYDAY 2",
		["label_toggle_title"] = "Main Menu Label",
		["label_toggle_desc"] = "If you consider that string of text expendable, disable it here",
		["rng_label_title"] = "Random Label Color",
		["rng_label_desc"] = "The small text above the mods centre will get a different color everytime you refresh main menu",
		["hide_player_counter_title"] = "Hide Player Counter",
		["hide_player_counter_desc"] = "Hide player counter in online games",
		
		["RPUS_custom_title"] = "Custom Names Editor",
		["RPUS_custom_desc"] = "Since you can no longer manually edit the names of heists etc. in the file, you are bound to use this if you want to set up custom cool or funky names.",		
		
		["RPUS_states_title"] = "States",
		["RPUS_states_desc"] = "",
		["menu_title"] = "Main Menu",
		["private_title"] = "Private Lobby",
		["empty_title"] = "Empty Lobby",
		
		["RPUS_diffs_title"] = "Difficulty",
		["RPUS_diffs_desc"] = "",
		["nrml_title"] = "Normal",
		["hrd_title"] = "Hard",
		["vh_title"] = "Very Hard",
		["ovk_title"] = "Overkill",
		["mh_title"] = "Mayhem",
		["dw_title"] = "Death Wish",
		["ds_title"] = "Death Sentence",
		
		["RPUS_modes_title"] = "Modes",
		["RPUS_modes_desc"] = "",
		["cs_title"] = "Crime Spree",
		["ho_title"] = "Holdout",
		
		["RPUS_heists_title"] = "Heists",
		["RPUS_heists_desc"] = "",
		
		["RPUS_bain_title"] = "Bain",
		["RPUS_bain_desc"] = "",
		["art_title"] = "Art Gallery",
		["rand_title"] = "Bank Heist: Random",
		["gold_title"] = "Bank Heist: Gold",
		["depo_title"] = "Bank Heist: Deposit",
		["cash_title"] = "Bank Heist: Cash",
		["alesso_title"] = "Alesso Heist",
		["cross_title"] = "Transport: Crossroads",
		["harbour_title"] = "Transport: Harbour",
		["town_title"] = "Transport: Downtown",
		["train_title"] = "Transport: Train Heist",
		["park_title"] = "Transport: Park",
		["pass_title"] = "Transport: Underpass",
		["cars_title"] = "Car Shop",
		["dstore_title"] = "Diamond Store",
		["jewels_title"] = "Jewelry Store",
		["shadow_title"] = "Shadow Raid",
		["cook_title"] = "Cook Off",
		["gobank_title"] = "GO Bank",
		["rvd_title"] = "Reservoir Dogs Heist",
		
		["RPUS_classic_title"] = "Classic",
		["RPUS_classic_desc"] = "",
		["dah_title"] = "Diamond Heist",
		["pig_title"] = "Slaughterhouse",
		["panic_title"] = "Panic Room",
		["bridge_title"] = "Green Bridge",
		["taxman_title"] = "Undercover",
		["mercy_title"] = "No Mercy",
		["feit_title"] = "Counterfeit",
		["fwb_title"] = "First World Bank",
		["heat_title"] = "Heat Street",
		
		["RPUS_events_title"] = "Events",
		["RPUS_events_desc"] = "",
		["ckr_title"] = "Cursed Kill Room",
		["lab_title"] = "Lab Rats",
		["prison_title"] = "Prison Nightmare",
		["shn_title"] = "Safe House Nightmare",
		
		["RPUS_other_title"] = "Other",
		["RPUS_other_desc"] = "",
		["tut1_title"] = "Flash Drive - Stealth",
		["tut2_title"] = "Get The Coke - Loud",
		["relax_title"] = "The Safe House",
		["combat_title"] = "Safe House Raid",
		
		["RPUS_hector_title"] = "Hector",
		["RPUS_hector_desc"] = "",
		["fs_title"] = "Firestarter",
		["rats_title"] = "Rats",
		["wd_title"] = "Watchdogs",
		
		["RPUS_jimmy_title"] = "Jimmy",
		["RPUS_jimmy_desc"] = "",
		["boil_title"] = "Boiling Station",
		["station_title"] = "Murky Station",
		
		["RPUS_jiu_title"] = "Jiu Feng",
		["RPUS_jiu_desc"] = "",
		["dragon_title"] = "Dragon Heist",
		["sand_title"] = "The Ukrainian Prisoner",
		["pent_title"] = "Mountain Master",
		["renc_title"] = "Midland Ranch",
		["trai_title"] = "Lost In Transit",
		["corp_title"] = "Hostile Takeover",
		
		["RPUS_locke_title"] = "Locke",
		["RPUS_locke_desc"] = "",
		["deal_title"] = "Alaskan Deal",
		["mount_title"] = "Beneath The Mountain",
		["birth_title"] = "Birth Of Sky",
		["crossing_title"] = "Border Crossing",
		["crystals_title"] = "Border Crystals",
		["tijuana_title"] = "Breakfast In Tijuana",
		["feds_title"] = "Breakin Feds",
		["brook_title"] = "Brooklyn Bank",
		["hell_title"] = "Hell's Island",
		["rock_title"] = "Henry's Rock",
		["auction_title"] = "Shacklethorne Auction",
		["white_title"] = "The White House",
		
		["RPUS_butcher_title"] = "Butcher",
		["RPUS_butcher_desc"] = "",
		["scar_title"] = "Scarface Mansion",
		["dock_title"] = "The Bomb: Dockyard",
		["forest_title"] = "The Bomb: Forest",
		
		["RPUS_charon_title"] = "The Continental",
		["RPUS_charon_desc"] = "",
		["tenten_title"] = "Brooklyn 10-10",
		["yacht_title"] = "The Yacht Heist",
		
		["RPUS_dentist_title"] = "The Dentist",
		["RPUS_dentist_desc"] = "",
		["hox_title"] = "Hoxton Breakout",
		["hm_title"] = "Hotline Miami",
		["ggc_title"] = "Golden Grin Casino",
		["reven_title"] = "Hoxton Revenge",
		["big_title"] = "Big Bank",
		["diam_title"] = "The Diamond",
		
		["RPUS_elephant_title"] = "The Elephant",
		["RPUS_elephant_desc"] = "",
		["day_title"] = "Election Day",
		["oil_title"] = "Big Oil",
		["frame_title"] = "Framing Frame",
		["biker_title"] = "The Biker Heist",
		
		["RPUS_vlad_title"] = "Vlad",
		["RPUS_vlad_desc"] = "",
		["shock_title"] = "Aftershock",
		["buluc_title"] = "Buluc's Mansion",
		["four_title"] = "Four Stores",
		["goat_title"] = "Goat Simulator",
		["mall_title"] = "Mallcrasher",
		["melt_title"] = "Meltdown",
		["club_title"] = "Nightclub",
		["martin_title"] = "San Martin Bank",
		["santa_title"] = "Santa's Workshop",
		["stealing_title"] = "Stealing Xmas",
		["job_title"] = "Ukrainian Job",
		["xmas_title"] = "White Xmas",
		["chca_title"] = "The Black Cat",

		["RPUS_miscellaneous_title"] = "Miscellaneous",
		["RPUS_miscellaneous_desc"] = "",
		["days_title"] = "Days",
		["days_desc"] = "Determine how days should be presented e.g 'Day 1'",
		["coma_title"] = "Separator",
		["coma_desc"] = "Determine how separators should be presented e.g 'Rats, Day 1, OVK' or 'Rats | Day 1 | OVK'",
		["bracket1_title"] = "Left Side Separator",
		["bracket2_title"] = "Right Side Separator",
		["bracket_desc"] = "Determine how difficulty should be presented e.g '[OVK]' or '=OVK=' or just 'OVK'",
		["players_title"] = "Player Counter",
		["players_desc"] = "Player counter e.g [1/4], determine what should be written after that e.g [4/4] players. Leave blank for just the brackets and numbers",
		["bracket_counter_title"] = "Player Counter Separators",
		["bracket_counter_desc"] = "Determine whether that thing should look like [1/4 ppl] or just 1/4 ppl",
		["bracket_days_title"] = "Heist Day Separators",
		["bracket_days_desc"] = "Determine whether that thing should look like [Day 1] or just Day 1",	
		["bracket_diffs_title"] = "Difficulty Separators",
		["bracket_diffs_desc"] = "Determine whether that thing should look like [Normal] or just Normal",
		["comas_title"] = "Commas",
		["comas_desc"] = "Enable or disable commas",
	
		["RPUS_custom_heists_title"] = "Custom",
		["RPUS_custom_heists_desc"] = "",
		["feds_xmas_title"] = "Breakin' Feds Xmas",
		["hox_xmas_title"] = "Hoxton Breakout Xmas",
		["burn_title"] = "Burnout",
		["wet_title"] = "Wetwork",
		["dog_title"] = "Doghouse",
		["ghill_title"] = "All Ghilled Up",
		["prove_title"] = "Proving Grounds",
		["stalk_title"] = "Stalk Fraud",
		["spawner_title"] = "Enemy Spawner",
		["funds_title"] = "Election Funds",
		["south_title"] = "Harvest & Trustee: Southern Branch",
		["alley_title"] = "Armsdeal: Alleyway",
		["cargo_title"] = "Cragoship Raid",
		["raiders_title"] = "Safehouse Raiders",
		["lotus_title"] = "Golden Lotus Bank",
		["liang_title"] = "An End To Liang",
		["knock_title"] = "Knockover: Jewelry Store",
		["rogue_title"] = "Rogue Company",
		["triad_title"] = "Triad Takedown Yacht Heist"
	}
}

function RichPresenceUltimate:json_encode(tab, path)
	local file = io.open(path, "w+")
	if file then
		file:write(json.encode(tab))
		file:close()
	end
end

function RichPresenceUltimate:json_decode(tab, path)
	local file = io.open(path, "r")
	if file then
		for k, v in pairs(json.decode(file:read("*all")) or {}) do
			tab[k] = v
		end
		file:close()
	end
end

function RichPresenceUltimate:save_settings()
	local path = self.save_path..self.save_name
	self:json_encode(self.settings, path)
end

function RichPresenceUltimate:load_settings()
	local path = self.save_path..self.save_name
	self:json_decode(self.settings, path)
end

local save_exists = io.open(RichPresenceUltimate.save_path..RichPresenceUltimate.save_name, "r")
if save_exists ~= nil then
	save_exists:close()
	RichPresenceUltimate:load_settings()
else
	RichPresenceUltimate:save_settings()
end

Hooks:Add("MenuManagerInitialize", "RichPresenceUltimate_hook_MenuManagerInitialize", function(menu_manager)
	MenuCallbackHandler.RichPresenceUltimate_callback_toggle = function(self, item)
		RichPresenceUltimate.settings[item:name()] = item:value() == "on"
	end

	MenuCallbackHandler.RichPresenceUltimate_callback_save = function(self, item)
		RichPresenceUltimate:save_settings()
	end

	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/general_options.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/advanced.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/custom_names_editor.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/states.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/difficulties.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/modes.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/heists.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/miscellaneous.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/bain.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/classic.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/events.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/hector.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/jimmy.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/jiufeng.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/locke.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/butcher.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/letsgetcharonout.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/dentist.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/elephant.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/vlad.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/other.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	MenuHelper:LoadFromJsonFile(RichPresenceUltimate.mod_path.."menu/custom.txt", RichPresenceUltimate, RichPresenceUltimate.settings)
	
	MenuCallbackHandler.tag_save = function(self, item)
		RichPresenceUltimate.settings.tag = item:value()
	end

	MenuCallbackHandler.menu_save = function(self, item)
		RichPresenceUltimate.settings.menu = item:value()
	end

	MenuCallbackHandler.private_save = function(self, item)
		RichPresenceUltimate.settings.private = item:value()
	end
	
	MenuCallbackHandler.empty_save = function(self, item)
		RichPresenceUltimate.settings.empty = item:value()
	end

	MenuCallbackHandler.days_save = function(self, item)
		RichPresenceUltimate.settings.days = item:value()
	end
	
	MenuCallbackHandler.coma_save = function(self, item)
		RichPresenceUltimate.settings.coma = item:value()
	end

	MenuCallbackHandler.bracket1_save = function(self, item)
		RichPresenceUltimate.settings.bracket1 = item:value()
	end
	
	MenuCallbackHandler.bracket2_save = function(self, item)
		RichPresenceUltimate.settings.bracket2 = item:value()
	end
	
	MenuCallbackHandler.players_save = function(self, item)
		RichPresenceUltimate.settings.players = item:value()
	end	
	
	MenuCallbackHandler.cs_save = function(self, item)
		RichPresenceUltimate.settings.cs = item:value()
	end
	
	MenuCallbackHandler.ho_save = function(self, item)
		RichPresenceUltimate.settings.ho = item:value()
	end

	MenuCallbackHandler.nrml_save = function(self, item)
		RichPresenceUltimate.settings.nrml = item:value()
	end
	
	MenuCallbackHandler.hrd_save = function(self, item)
		RichPresenceUltimate.settings.hrd = item:value()
	end
	
	MenuCallbackHandler.vh_save = function(self, item)
		RichPresenceUltimate.settings.vh = item:value()
	end
	
	MenuCallbackHandler.ovk_save = function(self, item)
		RichPresenceUltimate.settings.ovk = item:value()
	end
	
	MenuCallbackHandler.mh_save = function(self, item)
		RichPresenceUltimate.settings.mh = item:value()
	end
	
	MenuCallbackHandler.dw_save = function(self, item)
		RichPresenceUltimate.settings.dw = item:value()
	end

	MenuCallbackHandler.ds_save = function(self, item)
		RichPresenceUltimate.settings.ds = item:value()
	end

	MenuCallbackHandler.art_save = function(self, item)
		RichPresenceUltimate.settings.art = item:value()
	end

	MenuCallbackHandler.rand_save = function(self, item)
		RichPresenceUltimate.settings.rand = item:value()
	end
	
	MenuCallbackHandler.gold_save = function(self, item)
		RichPresenceUltimate.settings.gold = item:value()
	end

	MenuCallbackHandler.depo_save = function(self, item)
		RichPresenceUltimate.settings.depo = item:value()
	end

	MenuCallbackHandler.cash_save = function(self, item)
		RichPresenceUltimate.settings.cash = item:value()
	end

	MenuCallbackHandler.alesso_save = function(self, item)
		RichPresenceUltimate.settings.alesso = item:value()
	end

	MenuCallbackHandler.cross_save = function(self, item)
		RichPresenceUltimate.settings.cross = item:value()
	end

	MenuCallbackHandler.harbour_save = function(self, item)
		RichPresenceUltimate.settings.harbour = item:value()
	end

	MenuCallbackHandler.train_save = function(self, item)
		RichPresenceUltimate.settings.train = item:value()
	end

	MenuCallbackHandler.town_save = function(self, item)
		RichPresenceUltimate.settings.town = item:value()
	end

	MenuCallbackHandler.park_save = function(self, item)
		RichPresenceUltimate.settings.park = item:value()
	end
	
	MenuCallbackHandler.pass_save = function(self, item)
		RichPresenceUltimate.settings.pass = item:value()
	end

	MenuCallbackHandler.cars_save = function(self, item)
		RichPresenceUltimate.settings.cars = item:value()
	end

	MenuCallbackHandler.dstore_save = function(self, item)
		RichPresenceUltimate.settings.dstore = item:value()
	end

	MenuCallbackHandler.jewels_save = function(self, item)
		RichPresenceUltimate.settings.jewels = item:value()
	end

	MenuCallbackHandler.shadow_save = function(self, item)
		RichPresenceUltimate.settings.shadow = item:value()
	end

	MenuCallbackHandler.cook_save = function(self, item)
		RichPresenceUltimate.settings.cook = item:value()
	end

	MenuCallbackHandler.gobank_save = function(self, item)
		RichPresenceUltimate.settings.gobank = item:value()
	end
	
	MenuCallbackHandler.rvd_save = function(self, item)
		RichPresenceUltimate.settings.rvd = item:value()
	end
	
	MenuCallbackHandler.dah_save = function(self, item)
		RichPresenceUltimate.settings.dah = item:value()
	end
	
	MenuCallbackHandler.pig_save = function(self, item)
		RichPresenceUltimate.settings.pig = item:value()
	end
	
	MenuCallbackHandler.panic_save = function(self, item)
		RichPresenceUltimate.settings.panic = item:value()
	end

	MenuCallbackHandler.bridge_save = function(self, item)
		RichPresenceUltimate.settings.bridge = item:value()
	end

	MenuCallbackHandler.taxman_save = function(self, item)
		RichPresenceUltimate.settings.taxman = item:value()
	end

	MenuCallbackHandler.mercy_save = function(self, item)
		RichPresenceUltimate.settings.mercy = item:value()
	end

	MenuCallbackHandler.feit_save = function(self, item)
		RichPresenceUltimate.settings.feit = item:value()
	end

	MenuCallbackHandler.fwb_save = function(self, item)
		RichPresenceUltimate.settings.fwb = item:value()
	end

	MenuCallbackHandler.heat_save = function(self, item)
		RichPresenceUltimate.settings.heat = item:value()
	end

	MenuCallbackHandler.ckr_save = function(self, item)
		RichPresenceUltimate.settings.ckr = item:value()
	end

	MenuCallbackHandler.lab_save = function(self, item)
		RichPresenceUltimate.settings.lab = item:value()
	end

	MenuCallbackHandler.prison_save = function(self, item)
		RichPresenceUltimate.settings.prison = item:value()
	end

	MenuCallbackHandler.shn_save = function(self, item)
		RichPresenceUltimate.settings.shn = item:value()
	end

	MenuCallbackHandler.tut1_save = function(self, item)
		RichPresenceUltimate.settings.tut1 = item:value()
	end

	MenuCallbackHandler.tut2_save = function(self, item)
		RichPresenceUltimate.settings.tut2 = item:value()
	end

	MenuCallbackHandler.relax_save = function(self, item)
		RichPresenceUltimate.settings.relax = item:value()
	end

	MenuCallbackHandler.combat_save = function(self, item)
		RichPresenceUltimate.settings.combat = item:value()
	end

	MenuCallbackHandler.fs_save = function(self, item)
		RichPresenceUltimate.settings.fs = item:value()
	end

	MenuCallbackHandler.rats_save = function(self, item)
		RichPresenceUltimate.settings.rats = item:value()
	end

	MenuCallbackHandler.wd_save = function(self, item)
		RichPresenceUltimate.settings.wd = item:value()
	end

	MenuCallbackHandler.boil_save = function(self, item)
		RichPresenceUltimate.settings.boil = item:value()
	end

	MenuCallbackHandler.station_save = function(self, item)
		RichPresenceUltimate.settings.station = item:value()
	end

	MenuCallbackHandler.dragon_save = function(self, item)
		RichPresenceUltimate.settings.dragon = item:value()
	end

	MenuCallbackHandler.sand_save = function(self, item)
		RichPresenceUltimate.settings.sand = item:value()
	end	

	MenuCallbackHandler.pent_save = function(self, item)
		RichPresenceUltimate.settings.pent = item:value()
	end

	MenuCallbackHandler.ranc_save = function(self, item)
		RichPresenceUltimate.settings.ranc = item:value()
	end	

	MenuCallbackHandler.trai_save = function(self, item)
		RichPresenceUltimate.settings.trai = item:value()
	end

	MenuCallbackHandler.corp_save = function(self, item)
		RichPresenceUltimate.settings.corp = item:value()
	end	

	MenuCallbackHandler.deal_save = function(self, item)
		RichPresenceUltimate.settings.deal = item:value()
	end

	MenuCallbackHandler.mount_save = function(self, item)
		RichPresenceUltimate.settings.mount = item:value()
	end

	MenuCallbackHandler.birth_save = function(self, item)
		RichPresenceUltimate.settings.birth = item:value()
	end
	
	MenuCallbackHandler.crossing_save = function(self, item)
		RichPresenceUltimate.settings.crossing = item:value()
	end	
	
	MenuCallbackHandler.crystals_save = function(self, item)
		RichPresenceUltimate.settings.crystals = item:value()
	end	
	
	MenuCallbackHandler.tijuana_save = function(self, item)
		RichPresenceUltimate.settings.tijuana = item:value()
	end	
	
	MenuCallbackHandler.feds_save = function(self, item)
		RichPresenceUltimate.settings.feds = item:value()
	end	
	
	MenuCallbackHandler.brook_save = function(self, item)
		RichPresenceUltimate.settings.brook = item:value()
	end	
	
	MenuCallbackHandler.hell_save = function(self, item)
		RichPresenceUltimate.settings.hell = item:value()
	end	
	
	MenuCallbackHandler.rock_save = function(self, item)
		RichPresenceUltimate.settings.rock = item:value()
	end	
	
	MenuCallbackHandler.auction_save = function(self, item)
		RichPresenceUltimate.settings.auction = item:value()
	end	
	
	MenuCallbackHandler.white_save = function(self, item)
		RichPresenceUltimate.settings.white = item:value()
	end	
	
	MenuCallbackHandler.scar_save = function(self, item)
		RichPresenceUltimate.settings.scar = item:value()
	end	
	
	MenuCallbackHandler.dock_save = function(self, item)
		RichPresenceUltimate.settings.dock = item:value()
	end	
	
	MenuCallbackHandler.forest_save = function(self, item)
		RichPresenceUltimate.settings.forest = item:value()
	end		
	
	MenuCallbackHandler.tenten_save = function(self, item)
		RichPresenceUltimate.settings.tenten = item:value()
	end	
	
	MenuCallbackHandler.yacht_save = function(self, item)
		RichPresenceUltimate.settings.yacht = item:value()
	end			
	
	MenuCallbackHandler.hox_save = function(self, item)
		RichPresenceUltimate.settings.hox = item:value()
	end	
	
	MenuCallbackHandler.hm_save = function(self, item)
		RichPresenceUltimate.settings.hm = item:value()
	end	
	
	MenuCallbackHandler.ggc_save = function(self, item)
		RichPresenceUltimate.settings.ggc = item:value()
	end	
	
	MenuCallbackHandler.reven_save = function(self, item)
		RichPresenceUltimate.settings.reven = item:value()
	end		
	
	MenuCallbackHandler.big_save = function(self, item)
		RichPresenceUltimate.settings.big = item:value()
	end	
	
	MenuCallbackHandler.diam_save = function(self, item)
		RichPresenceUltimate.settings.diam = item:value()
	end		
	
	MenuCallbackHandler.day_save = function(self, item)
		RichPresenceUltimate.settings.day = item:value()
	end	
	
	MenuCallbackHandler.oil_save = function(self, item)
		RichPresenceUltimate.settings.oil = item:value()
	end		
	
	MenuCallbackHandler.frame_save = function(self, item)
		RichPresenceUltimate.settings.frame = item:value()
	end	
	
	MenuCallbackHandler.biker_save = function(self, item)
		RichPresenceUltimate.settings.biker = item:value()
	end		
	
	MenuCallbackHandler.shock_save = function(self, item)
		RichPresenceUltimate.settings.shock = item:value()
	end
	
	MenuCallbackHandler.buluc_save = function(self, item)
		RichPresenceUltimate.settings.buluc = item:value()
	end

	MenuCallbackHandler.four_save = function(self, item)
		RichPresenceUltimate.settings.four = item:value()
	end

	MenuCallbackHandler.goat_save = function(self, item)
		RichPresenceUltimate.settings.goat = item:value()
	end

	MenuCallbackHandler.mall_save = function(self, item)
		RichPresenceUltimate.settings.mall = item:value()
	end
	
	MenuCallbackHandler.melt_save = function(self, item)
		RichPresenceUltimate.settings.melt = item:value()
	end

	MenuCallbackHandler.club_save = function(self, item)
		RichPresenceUltimate.settings.club = item:value()
	end
	
	MenuCallbackHandler.martin_save = function(self, item)
		RichPresenceUltimate.settings.martin = item:value()
	end	
	
	MenuCallbackHandler.santa_save = function(self, item)
		RichPresenceUltimate.settings.santa = item:value()
	end	
	
	MenuCallbackHandler.stealing_save = function(self, item)
		RichPresenceUltimate.settings.stealing = item:value()
	end	
	
	MenuCallbackHandler.job_save = function(self, item)
		RichPresenceUltimate.settings.job = item:value()
	end	
	
	MenuCallbackHandler.xmas_save = function(self, item)
		RichPresenceUltimate.settings.xmas = item:value()
	end
	
	MenuCallbackHandler.chca_save = function(self, item)
		RichPresenceUltimate.settings.chca = item:value()
	end	
	
	MenuCallbackHandler.feds_xmas_save = function(self, item)
		RichPresenceUltimate.settings.feds_xmas = item:value()
	end	
	
	MenuCallbackHandler.hox_xmas_save = function(self, item)
		RichPresenceUltimate.settings.hox_xmas = item:value()
	end	
	
	MenuCallbackHandler.burn_save = function(self, item)
		RichPresenceUltimate.settings.burn = item:value()
	end	
	
	MenuCallbackHandler.wet_save = function(self, item)
		RichPresenceUltimate.settings.wet = item:value()
	end	
	
	MenuCallbackHandler.dog_save = function(self, item)
		RichPresenceUltimate.settings.dog = item:value()
	end
	
	MenuCallbackHandler.ghill_save = function(self, item)
		RichPresenceUltimate.settings.ghill = item:value()
	end	

	MenuCallbackHandler.prove_save = function(self, item)
		RichPresenceUltimate.settings.prove = item:value()
	end	
	
	MenuCallbackHandler.stalk_save = function(self, item)
		RichPresenceUltimate.settings.stalk = item:value()
	end	

	MenuCallbackHandler.spawner_save = function(self, item)
		RichPresenceUltimate.settings.spawner = item:value()
	end	

	MenuCallbackHandler.funds_save = function(self, item)
		RichPresenceUltimate.settings.funds = item:value()
	end	

	MenuCallbackHandler.south_save = function(self, item)
		RichPresenceUltimate.settings.south = item:value()
	end	
	
	MenuCallbackHandler.alley_save = function(self, item)
		RichPresenceUltimate.settings.alley = item:value()
	end		

	MenuCallbackHandler.cargo_save = function(self, item)
		RichPresenceUltimate.settings.cargo = item:value()
	end	
	
	MenuCallbackHandler.raiders_save = function(self, item)
		RichPresenceUltimate.settings.raiders = item:value()
	end		
	
	MenuCallbackHandler.lotus_save = function(self, item)
		RichPresenceUltimate.settings.lotus = item:value()
	end		
	
	MenuCallbackHandler.liang_save = function(self, item)
		RichPresenceUltimate.settings.liang = item:value()
	end		
	
	MenuCallbackHandler.knock_save = function(self, item)
		RichPresenceUltimate.settings.knock = item:value()
	end		
	
	MenuCallbackHandler.rogue_save = function(self, item)
		RichPresenceUltimate.settings.rogue = item:value()
	end
	
	MenuCallbackHandler.triad_save = function(self, item)
		RichPresenceUltimate.settings.triad = item:value()
	end

	MenuCallbackHandler.rng_label_save = function(self, item)
		RichPresenceUltimate.settings.rng_label = item:value()
	end
end)

Hooks:Add("LocalizationManagerPostInit", "RichPresenceUltimate_LocalizationManagerPostInit", function( loc )
	loc:add_localized_strings(RichPresenceUltimate.strings)
end)

function RichPresenceUltimate:GetRandomLabelColor()
	RPUC = _G.RichPresenceUltimate
	
	local random_color = {
		Color.white,
		Color.black,
		Color.red,
		Color.yellow,
		Color.blue,
		Color.purple,
		Color.green
	}
	
	if RPUC.settings.rng_label then
		return random_color[math.random(#random_color)]
	end
end

if RequiredScript == "lib/managers/menu/menunodegui" and _G.RichPresenceUltimate.settings.label_toggle then
	local old_MenuNodeMainGui = MenuNodeMainGui._add_version_string
	function MenuNodeMainGui:_add_version_string()
		old_MenuNodeMainGui(self)

		local text = _G.RichPresenceUltimate.promo_text
		local number = _G.RichPresenceUltimate.revision
		RichPresenceUltimate = _G.RichPresenceUltimate
		
		if alive(self.PROMO) then
			self.PROMO:parent():remove(self.PROMO)
			self.PROMO = nil
		end

		self.PROMO = self.ws:panel():text({
			name = "PROMO",
			halign = "top",
			vertical = "top",
			word_wrap = true,
			wrap = true,
			align = "left",
			y = 349,
			x = 101,
			alpha = 0.9,
			text = text .. number,
			font = tweak_data.menu.eroded_font,
			font_size = 19,
			color = RichPresenceUltimate:GetRandomLabelColor()
		})
		self.PROMO:animate()
	end
end
