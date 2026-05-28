-- This is just an example of the config for the bulgar_queue script
-- This is just an example of the config for the bulgar_queue script
-- This is just an example of the config for the bulgar_queue script

Config = {}

-- Dev Stuff Dont use it!
Config.Developer = false

-- Server Slots
Config.ServerSlots = 128 -- How many slots does the server have

-- Discord Setup
Config.UseDiscordWhitelist = false -- If false only queue will work
Config.Guild_ID = '123' -- Discord Server Id where the players are
Config.Guilds = {
	["name"] = "YOUR SERVER NAME", -- Discord Server Name
}
Config.Bot_Token = 'TOKEN HERE' -- Discord Bot Token (https://discord.com/developers/applications)
Config.RoleList = { -- Whitelist Roles
	['111'] = 111, -- ID + ID // I KNOW ITS STUPID...
	['222'] = 222,
	['333'] = 333,
  -- AND MORE HERE IF U WANT
}

-- Commands for Points Managment / Points are saved in MYSQL database for each steam id, it can be used for donations on your server.
-- U need to add ACE permission for each command for example:
-- add_ace group.owner command.checkpoints allow
-- add_ace group.owner command.addpoints allow
-- add_ace group.owner command.rempoints allow
-- add_principal identifier.steam:1100001022426b8 group.owner
-- add_principal identifier.steam:110000114ce3d12 group.owner
Config.CheckPoints = "checkpoints" -- Check current hex points, example: "/checkpoints 1100001022426b8"
Config.AddPoints = "addpoints" -- Add more points for hex, example: "/addpoints 1100001022426b8 2000" wil add +2000 queue points for hex
Config.RemPoints = "rempoints" -- Remove points from hex, example: "/rempoints 1100001022426b8 2000" wil remove -2000 queue points from hex

-- Return Points
Config.ReturnPoints = 2000 -- If player crashed he wil get 2000 more points on connect back

-- Notifications
Config.Not = function(text)	
	TriggerEvent('chat:addMessage', {
	  color = { 255, 0, 0},
	  multiline = true,
	  args = {"BulgaR Queue", text}
	})
end

-- Translations
Config.Language = {
    [1] = {text = "Steam not found, please restart FiveM",},
    [2] = {text = "You are in the queue. Currently you have collected ",},
    [3] = {text = " points",},
    [4] = {text = "Place in queue ",},
    [5] = {text = "If the emoji stopped, restart FiveM: ",},
    [6] = {text = "Anti-Spam, please wait: ",},
    [7] = {text = " seconds...",},
    [8] = {text = "ERROR: Something went wrong, restart FiveM",},
    [9] = {text = "Discord not found, please restart FiveM",},
    [10] = {text = "You are not on the Whitelist.",},
    [11] = {text = "Invalid Steam ID length!",},
    [12] = {text = "Player Points: ",},
    [13] = {text = "Incorrect amount of points",},
    [14] = {text = "Points Added for Hex",},
    [15] = {text = "Points Removed from Hex",},
    [16] = {text = "Time in queue: ",},
}

-- Random Emoji List
Config.EmojiList = {
	'🚨',
	'💣',
	'🔫',
	'💵',
	'🚬',
	'🚗',
	'🏍️',
	'🧨',
	'🔧',
	'💊',
	'🏦',
	'🖕',
	'🧢',
	'⚰️',
	'🔪',
	'🎰',
	'🎲',
	'🎯',
	'🏴‍☠️',
	'🚓',
	'👊',
	'🧤',
	'🕶️',
	'🥷',
	'🗡️',
	'🧭',
	'🚁',
	'🏙️',
	'🚤',
	'🎧',
	'🛞',
	'🔒',
	'🗝️',
	'💼',
	'📸',
	'📦',
	'📍',
	'💥',
	'🔦',
	'🛑',
	'💀',
	'♠️'
}
