fx_version 'cerulean'

game 'gta5'

lua54 'yes'

client_script {
    'import.lua',
    'client.lua'
}

server_script {
    '@mysql-async/lib/MySQL.lua',
    'server.lua'
}

ui_page {
    'html/index.html'
}

files({
    'html/**/**'
})

escrow_ignore {
    'client.lua'
}
