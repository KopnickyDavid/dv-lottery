----Locales---- 
local playerloaded = false --is player loaded true/false
RegisterNetEvent('dv-loterry:cliet:blips', function()
        for r, q in pairs(Config.shop) do        
        local blip = AddBlipForCoord(q.x, q.y,q.z)
        SetBlipSprite (blip, Config.blip.spirit)
        SetBlipDisplay(blip, 6)
        SetBlipScale  (blip, Config.blip.scale)
        SetBlipAsShortRange(blip, true)
        SetBlipColour(blip, Config.blip.colour)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentSubstringPlayerName(Config.blip.name)
        EndTextCommandSetBlipName(blip) 
  end
end)
RegisterNetEvent(Config.load, function()
    playerloaded = true
    TriggerEvent('dv-loterry:cliet:blips')
end)
function DrawText3D(x, y, z, text)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end
CreateThread(function()
	while true  do
        Wait(0)
        --if playerloaded then
        local sleep = true
        local ped = PlayerPedId()
        local player = GetEntityCoords(ped)
		for k, q in pairs(Config.shop) do
            local distance = #(player - q)
           if distance < Config.distance  then
            sleep = false
            DrawMarker(Config.markers.type,q.x, q.y, q.z , 0.0, 0.0, 0.0, 300.0, 0.0, 0.0, Config.markers.scalex, Config.markers.scaley, Config.markers.scalez, Config.markers.red, Config.markers.green, Config.markers.blue, 255, false, true, 2, false, false, false, false)
			DrawText3D(q.x, q.y, q.z+ 0.2, "[E] open")
				if IsControlJustPressed(0, Config.usekey)  then
                    menu()
			end
		--end
		if sleep then
			Wait(500)
        end 
        end
    end
end
end)
RegisterNetEvent('dv-lottery:client:buy', function(data)
    if Config.framework == 'qb' then
    for k, coords in pairs(Config.shop) do
    for k, q in pairs(data) do
    if q == 'basic' then
TriggerServerEvent('dv-lottery:server:add','basicl','basic',coords)
    elseif q == 'devil' then
        TriggerServerEvent('dv-lottery:server:add','devill','devil',coords)
    elseif q == 'golden' then
        TriggerServerEvent('dv-lottery:server:add','goldenl','golden',coords)
    elseif q == 'unlimited' then
        TriggerServerEvent('dv-lottery:server:add','unlimitedl','unlimited',coords)
    end
    end
end
    end
    if Config.framework == 'esx' then
        for k, coords in pairs(Config.shop) do
           local  q = data
            if q == 'basic' then
        TriggerServerEvent('dv-lottery:server:add','basicl','basic',coords)
            elseif q == 'devil' then
                TriggerServerEvent('dv-lottery:server:add','devill','devil',coords)
            elseif q == 'golden' then
                TriggerServerEvent('dv-lottery:server:add','goldenl','golden',coords)
            elseif q == 'unlimited' then
                TriggerServerEvent('dv-lottery:server:add','unlimitedl','unlimited',coords)
    end
  end
end
end)
function menu()
    if Config.framework == 'qb'  then
        exports['qb-menu']:openMenu({
            { 
                header = 'Lottery shop',
                txt = 'You can buy here lottery and win money$$$',
                isMenuHeader = true
            },
            { 
                header = 'Basic Lottery',
                params = {
                    event = "dv-lottery:client:buy", 
                    args = {
                        "basic"
                    }
                }
            },
            { 
                header = 'Devil Lottey',
                params = {
                    event = "dv-lottery:client:buy", 
                    args = {
                        "devil"
                    }
                }
            },
            { 
                header = 'Golden Lottery',
                params = {
                    event = "dv-lottery:client:buy",
                    args = {
                        "golden"
                    } 
                }
            },
            { 
                header = 'Ultimate Lottery',
                params = {
                    event = "dv-lottery:client:buy", 
                    args = {
                        "unlimited"
                    }
                }
            },
        })
    end
   if  Config.framework == 'esx'  then
    TriggerEvent("nh-context:createMenu", {  
        {
            header = "Lottery shop",
        },
        {
            header = "Basic Lottery",
            context = "",
            event = "dv-lottery:client:buy",
            image = "",
            args = {"basic"}
        },
        {
            header = "Devil Lottery",
            context = "",
            event = "dv-lottery:client:buy",
            image = "",
            args = { "devil"}
        },
        {
            header = "Golden Lottery",
            context = "",
            event = "dv-lottery:client:buy",
            image = "",
            args = {"golden"}
        },
        {
            header = "Ultimate Lottery",
            context = "",
            event = "dv-lottery:client:buy",
            image = "",
            args = { "unlimited"}
        },
    })
end
end
