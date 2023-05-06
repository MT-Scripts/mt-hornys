local QBCore = exports[Config.QBCoreName]:GetCoreObject()

QBCore.Functions.CreateCallback('mt-hornys:server:NeededItems', function(source, cb, items)
    local hasItems = false
    local numero = 0
    local player = QBCore.Functions.GetPlayer(source)

    for k, v in pairs(items) do
        print(v.ItemName .. v.NeededAmount)
        if player.Functions.GetItemByName(v.ItemName) and player.Functions.GetItemByName(v.ItemName).amount >= v.NeededAmount then
            numero = numero + 1
            if numero == #items then cb(true) end
        else cb(false)
            return
        end
    end
end)

RegisterNetEvent('mt-hornys:server:MakeFood', function(data)
    local Player = QBCore.Functions.GetPlayer(source)
    for k, v in pairs(data.NeededItems) do
        Player.Functions.RemoveItem(v.ItemName, v.NeededAmount)
        TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[v.ItemName], "remove", v.NeededAmount)
    end
    Player.Functions.AddItem(data.ItemName, 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[data.ItemName], "add", 1)
end)

for i = 1, #Config.Consumeables, 1 do
    QBCore.Functions.CreateUseableItem(Config.Consumeables[i].ItemName, function(source, item)
        local Player = QBCore.Functions.GetPlayer(source)
        if Player.Functions.GetItemBySlot(item.slot) ~= nil then
            TriggerClientEvent('mt-hornys:client:Consume', source, Config.Consumeables[i].ItemName, Config.Consumeables[i].Amount, Config.Consumeables[i].Type, Config.Consumeables[i].Prop)
        end
    end)
end

RegisterNetEvent('mt-hornys:server:addThirst', function(amount)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.SetMetaData('thirst', amount)
    TriggerClientEvent('hud:client:UpdateNeeds', source, Player.PlayerData.metadata.hunger, amount)
end)

RegisterNetEvent('mt-hornys:server:addHunger', function(amount)
    local Player = QBCore.Functions.GetPlayer(source)

    if not Player then return end

    Player.Functions.SetMetaData('hunger', amount)
    TriggerClientEvent('hud:client:UpdateNeeds', source, amount, Player.PlayerData.metadata.thirst)
end)

RegisterNetEvent('mt-hornys:server:RemoveItem', function(Item, Amount)
    local Player = QBCore.Functions.GetPlayer(source)
    Player.Functions.RemoveItem(Item, Amount)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items[Item], "remove", Amount)
end)