local QBCore = exports[Config.QBCoreName]:GetCoreObject()
local onDuty = false

CreateThread(function()
    exports[Config.QBTargetName]:AddBoxZone('hornys-BossMenu', vector3(1239.3, -348.27, 69.08), 1.4, 1, {
        name = 'hornys-BossMenu',
        heading = 345,
        debugPoly = Config.DebugPoly,
    }, {
        options = {
            {
                label = Lang.BossMenu,
                icon = 'far fa-list-alt',
                event = 'qb-bossmenu:client:OpenMenu',
                canInteract = function()
                    if onDuty and QBCore.Functions.GetPlayerData().job.isboss then return true end
                end,
                job = 'hornys',
            }
        },
        distance = 2.5,
    })
    exports[Config.QBTargetName]:AddBoxZone('hornys-ToogleDuty', vector3(1243.51, -349.9, 69.08), 1.6, 1, {
        name = 'hornys-ToogleDuty',
        heading = 345,
        debugPoly = Config.DebugPoly,
    }, {
        options = {
            {
                label = Lang.ToggleDuty,
                icon = 'fas fa-clipboard',
                action = function()
                    if onDuty then
                        TriggerServerEvent("QBCore:ToggleDuty")
                        onDuty = false
                        Notify(Lang.OutDuty, 'error')
                    else
                        TriggerServerEvent("QBCore:ToggleDuty")
                        onDuty = true
                        Notify(Lang.OnDuty, 'success')
                    end
                end,
                job = 'hornys',
            },
        },
        distance = 2.5,
    })
    local stashes = {
        [1] = { Coords = vector3(1248.93, -351.97, 69.08), length = 3.0, width = 1, heading = 255, slots = Config.BigStash.Slots, Weight = Config.BigStash.Weight },
        [2] = { Coords = vector3(1251.86, -356.78, 69.08), length = 1.6, width = 1, heading = 255, slots = Config.MidStash.Slots, Weight = Config.MidStash.Weight },
    }
    for k, v in pairs(stashes) do
        exports[Config.QBTargetName]:AddBoxZone('hornys-stash-'..k, v.Coords, v.length, v.width, {
            name = 'hornys-stash-'..k,
            header = v.heading,
            debugPoly = Config.DebugPoly,
        }, {
            options = {
                {
                    label = Lang.OpenStash,
                    icon = 'fas fa-door-open',
                    action = function()
                        TriggerEvent("inventory:client:SetCurrentStash", tostring('hornys_'..k))
                        TriggerServerEvent("inventory:server:OpenInventory", "stash", tostring('hornys_'..k), {
                            maxweight = v.Weight,
                            slots = v.slots,
                        })
                    end,
                    canInteract = function()
                        if onDuty then return true end
                    end,
                    job = 'hornys',
                },
            },
            distance = 2.5,
        })
    end
    local trays = {
        [1] = { Coords = vector3(1253.3, -358.67, 69.08), length = 1.4, width = 1, heading = 245, slots = Config.TrayStash.Slots, Weight = Config.TrayStash.Weight },
        [2] = { Coords = vector3(1251.47, -359.69, 69.08), length = 0.6, width = 0.6, heading = 345, slots = Config.TrayStash.Slots, Weight = Config.TrayStash.Weight },
        [3] = { Coords = vector3(1250.13, -359.27, 69.08), length = 0.6, width = 0.6, heading = 345, slots = Config.TrayStash.Slots, Weight = Config.TrayStash.Weight },
        [4] = { Coords = vector3(1248.75, -358.91, 69.08), length = 0.6, width = 0.6, heading = 345, slots = Config.TrayStash.Slots, Weight = Config.TrayStash.Weight },
    }
    for k, v in pairs(trays) do
        exports[Config.QBTargetName]:AddBoxZone('hornys-tray-'..k, v.Coords, v.length, v.width, {
            name = 'hornys-tray-'..k,
            header = v.heading,
            debugPoly = Config.DebugPoly,
        }, {
            options = {
                {
                    label = Lang.OpenTray,
                    icon = 'fas fa-door-open',
                    action = function()
                        TriggerEvent("inventory:client:SetCurrentStash", tostring('hornys_tray_'..k))
                        TriggerServerEvent("inventory:server:OpenInventory", "stash", tostring('hornys_tray_'..k), {
                            maxweight = v.Weight,
                            slots = v.slots,
                        })
                    end,
                },
            },
            distance = 2.5,
        })
    end
    local stations = {
        [1] = { Coords = vector3(1254.33, -352.92, 69.08), length = 1.6, width = 1, heading = 345, Type = 'Fries' },
        [2] = { Coords = vector3(1253.53, -355.54, 69.08), length = 1.6, width = 1, heading = 345, Type = 'Grill' },
        [3] = { Coords = vector3(1250.01, -355.92, 69.08), length = 2.0, width = 1, heading = 75, Type = 'Menus' },
        [4] = { Coords = vector3(1246.18, -357.03, 69.08), length = 2.0, width = 1, heading = 345, Type = 'Drink' },
    }
    for k, v in pairs(stations) do
        exports[Config.QBTargetName]:AddBoxZone('hornys-station-'..k, v.Coords, v.length, v.width, {
            name = 'hornys-station-'..k,
            header = v.heading,
            debugPoly = Config.DebugPoly,
        }, {
            options = {
                {
                    label = Lang.UseStation,
                    icon = 'fas fa-clipboard',
                    action = function()
                        if v.Type == 'Fries' then CurrentMenu = Config.FrieItems elseif v.Type == 'Grill' then CurrentMenu = Config.GrillItems elseif v.Type == 'Menus' then CurrentMenu = Config.MenusItems else CurrentMenu = Config.DrinkItems end
                        local Menu = {
                            {
                                header = Lang.HornysStation,
                                isMenuHeader = true,
                            },
                            {
                                header = Lang.Close,
                                icon = 'fas fa-close',
                                params = {
                                    event = Config.QBMenuName..':closeMenu',
                                },
                            }
                        }
                        for j, i in pairs(CurrentMenu) do
                            local text = ''
                            for u, a in pairs(i.NeededItems) do
                                text = tostring(text..a.NeededAmount..'x '..QBCore.Shared.Items[a.ItemName].label..'<br>')
                            end
                            Menu[#Menu + 1] = {
                                header = "<img src=nui://"..Config.QBInventoryName.."/html/images/"..QBCore.Shared.Items[i.ItemName].image.." width=35px style='margin-right: 10px'> " .. QBCore.Shared.Items[i.ItemName].label,
                                txt = text,
                                params = {
                                    event = 'mt-hornys:client:MakeItem',
                                    args = {
                                        Type = v.Type,
                                        Menu = CurrentMenu,
                                        CurrentItem = j,
                                    },
                                },
                            }
                        end
                        exports[Config.QBMenuName]:openMenu(Menu)
                    end,
                    canInteract = function()
                        if onDuty then return true end
                    end,
                    job = 'hornys',
                },
            },
            distance = 2.5,
        })
    end
    Blip = AddBlipForCoord(vector3(1240.97, -367.91, 69.08))
    SetBlipSprite (Blip, 96)
    SetBlipDisplay(Blip, 4)
    SetBlipScale  (Blip, 0.8)
    SetBlipAsShortRange(Blip, true)
    SetBlipColour(Blip, 49)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName(Lang.BlipName)
    EndTextCommandSetBlipName(Blip)
end)

RegisterNetEvent('mt-hornys:client:MakeItem', function(data)
    if data.Type == 'Fries' or data.Type == 'Grill' then anim = 'base' animDict = 'amb@prop_human_bbq@male@base' elseif data.Type == 'Menus' then anim = 'fixing_a_ped' animDict = 'mini@repair' else anim = 'one_bartender' animDict = 'anim@amb@clubhouse@bar@drink@one' end
    QBCore.Functions.TriggerCallback("mt-hornys:server:NeededItems", function(hasItems)
        if hasItems then
            QBCore.Functions.Progressbar('name_here', tostring(Lang.Making..' '..QBCore.Shared.Items[tostring(data.Menu[data.CurrentItem].ItemName)].label..'...'), Config.MakingFoodTime, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = animDict,
                anim = anim,
            }, {}, {}, function()
                TriggerServerEvent('mt-hornys:server:MakeFood', data.Menu[data.CurrentItem])
                ClearPedTasksImmediately(PlayerPedId())
            end, function()
                ClearPedTasksImmediately(PlayerPedId())
            end)        
        else
            Notify(Lang.NoItems, 'error')
        end
    end, data.Menu[data.CurrentItem].NeededItems)
end)

RegisterNetEvent('mt-hornys:client:Consume', function(Item, Amount, Type, Prop)
    if Type == 'Eat' then animDict = 'mp_player_inteat@burger' anim = 'mp_player_int_eat_burger' model = Prop bones = 60309 coords = { x=0.03, y=-0.02, z=-0.03 }  message = Lang.Eating  else animDict = 'mp_player_intdrink' anim = 'loop_bottle' message = Lang.Drinking model = Prop bones = 60309 coords = { x=0.03, y=-0.02, z=-0.03 }  end
    QBCore.Functions.Progressbar('name_here', tostring(message..' '..QBCore.Shared.Items[tostring(Item)].label..'...'), Config.MakingFoodTime, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = animDict,
        anim = anim,
    }, {
        model = model,
        bone = bones,
        coords = { x=coords.x, y=coords.y, z=coords.z },
    }, {}, function()
        if Type == 'Eat' then
            TriggerServerEvent("mt-hornys:server:addHunger", QBCore.Functions.GetPlayerData().metadata["hunger"] + Amount)
        else 
            TriggerServerEvent("mt-hornys:server:addThirst", QBCore.Functions.GetPlayerData().metadata["thirst"] + Amount)
        end
        TriggerServerEvent('mt-hornys:server:RemoveItem', Item, 1)
        ClearPedTasksImmediately(PlayerPedId())
    end, function()
        ClearPedTasksImmediately(PlayerPedId())
    end) 
end)