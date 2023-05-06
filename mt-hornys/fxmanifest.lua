fx_version 'cerulean'
author 'Marttins#8421'
description 'Simple Hornys Script for Gabz Map'
game 'gta5'

client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    "client/*.lua",
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    "server/*.lua",
}

shared_scripts {
    "shared/*.lua",
}

escrow_ignore {
    "shared/*.lua",
}

lua54 "yes"