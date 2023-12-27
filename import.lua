while GetResourceState('qs-smartphone-pro') ~= 'started' do
    Wait(500)
end

local ui = 'https://cfx-nui-' .. GetCurrentResourceName() .. '/html/'

local function addApp()
    local added = exports['qs-smartphone-pro']:addCustomApp({
        app = 'immoScout',
        image = ui .. 'icon.png',
        ui = ui .. 'index.html',
        label = 'Immo Scout',
        job = false,
        blockedJobs = {},
        timeout = 5000,
        creator = 'Huntler',
        category = 'social',
        isGame = false,
        description = 'Get your homes and more today!',
        age = '16+',
        extraDescription = {
            {
                header = 'Huntler Immo Scout',
                head = 'Discover all the benefits in homes in Los Santos',
                image = 'https://media.discordapp.net/attachments/1154640736499810315/1189670046646141038/immo.png',
                footer = 'Get your homes and more today!'
            }
        }
    })
    if not added then
        return print('Failed to add app')
    end
    print('App added')
end

CreateThread(addApp)

AddEventHandler('onResourceStart', function(resource)
    if resource == 'qs-smartphone-pro' then
        addApp()
    end
end)
