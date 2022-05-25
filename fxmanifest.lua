fx_version 'adamant'
game 'gta5'

author 'Davee#3722'
description 'Lottery by Davee.'
version '1.0'

server_scripts {
	'config/server_config.lua',
	'server/*.lua'
}

client_scripts {
	'config/client_config.lua',
	'config/locale.lua',
	'client/*.lua'
}
escrow_ignore {
	'config/*.lua'  
}
  
lua54 'yes' -- using lua 5.4
dependency '/server:4700' -- You must have server artifact at least 4700