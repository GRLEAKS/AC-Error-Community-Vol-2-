local registeredEvents = {}
local fakeEvents = {
    -- ESX Events


    -- Other Events
    'tost:zgarnijsiano',
    'adminmenu:allowall',
    'Sasaki_kurier:pay',
    'wojtek_ubereats:napiwek',
    'wojtek_ubereats:hajs',
    'xk3ly-barbasz:getfukingmony',
    'xk3ly-farmer:paycheck',
    'tostzdrapka:wygranko',
    'laundry:washcash',
    'projektsantos:mandathajs',
    '6a7af019-2b92-4ec2-9435-8fb9bd031c26',
    '211ef2f8-f09c-4582-91d8-087ca2130157', 
    '8321hiue89js',
    'js:jailuser',
    'wyspa_jail:jailPlayer',
    'wyspa_jail:jail',
    'ambulancier:selfRespawn',
    'UnJP'
}

for _, eventInfo in pairs(fakeEvents) do
    if (registeredEvents == nil) then
        registeredEvents = {}
    end

    if (registeredEvents[eventInfo] == nil or not registeredEvents[eventInfo]) then
        RegisterNetEvent(eventInfo)
        AddEventHandler(eventInfo, function()
            TAC.TriggerServerEvent('tigoanticheat:banPlayer', 'event', eventInfo)
        end)

        registeredEvents[eventInfo] = true
    end
end