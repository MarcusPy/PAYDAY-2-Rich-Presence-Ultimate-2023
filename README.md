# PAYDAY-2-Rich-Presence-Ultimate-2023
Up-to-date version of https://modworkshop.net/mod/30885

Found enough courage within myself to touch this vile game once more, but only to update this mod.
First update in over a year includes:
- Player counter toggle
- Custom tag
- Covered missing heists
- General code cleanup and optimisations
- Removal of Compatibility patches altogether
- Removal of automatic overhaul detection
- Other miscellaneous whatnot

Might update it more often now that I'm here.
Feel free to contact me through Steam https://steamcommunity.com/id/MarcusFURRY/

# If you want to add a heist on your own, make sure to do these:

In RPUCore.lua:

- (*) Define a UNIQUE ID for your heist in the settings section
- (*) Create a string for the title, it's recommended to name it like this - <UNIQUE_ID>_title
- In the section with MenuCallbackHandlers, create a callback. It's as easy as 3 lines of code:

      MenuCallbackHandler.<UNIQUE_ID>_save = function(self, item)
        RichPresenceUltimate.settings.<UNIQUE_ID> = item:value()
      end

In RichPresence.lua:

- (*) Define 2 records, #Job_<internal heist name> and  #Level_<internal heist name> and assign them RPUC.settings.<UNIQUE_ID>

In a file of your choosing from the menu folder, in the "items" section (I advise to put your new entries at the end of the file. If it's the first and only entry, then you don't need to put any commas, if not, a comma is required after each '}' with exception for the last entry):

		{
			"type": "input",
			"id": "<UNIQUE_ID>_input",
			"title": "<UNIQUE_ID>_title",
			"description": "how_to",
			"callback": "<UNIQUE_ID>_save",
			"value": "<UNIQUE_ID>"
		}

(*) - In this step, remember to put a comma at the end of each line or else it will crash

If something isn't clear, either contact me or take a look at how other entries are made - it's very easy so see the pattern
