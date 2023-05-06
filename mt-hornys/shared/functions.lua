local QBCore = exports[Config.QBCoreName]:GetCoreObject()

function Notify(message, type)
    QBCore.Functions.Notify(message, type, 5000)
end