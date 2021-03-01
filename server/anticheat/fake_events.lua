local registeredEvents = {}
local fakeEvents = {
	{
		prefixes = {
			-- ESX

		},
		suffixes = {
			
		}
	},
	{
		prefixes = {
			-- ESX
			

			-- Other Events
			'dmv',
			'whoapd',
			'paramedic',
			'ems',
			'Banca',
			'Sasaki_kurier',
		},
		suffixes = {

		}
	},
	-- ESX


	-- Other Events
	'OG_cuffs:cuffCheckNearest',
    'adminmenu:allowall',
	'arisonarp:wiezienie',
	'js:jailuser',
	'AdminMenu:giveCash',
	'f0ba1292-b68d-4d95-8823-6230cdf282b6',
	'265df2d8-421b-4727-b01d-b92fd6503f5e',
	'AdminMenu:giveDirtyMoney',
	'AdminMenu:giveBank',
	'c65a46c5-5485-4404-bacf-06a106900258',
	'NB:recruterplayer',
	'mellotrainer:s_adminKill',
	'MF_MobileMeth:RewardPlayers',
	'lscustoms:UpdateVeh',
	'tost:zgarnijsiano',
	'wojtek_ubereats:napiwek',
	'wojtek_ubereats:hajs',
	'xk3ly-barbasz:getfukingmony',
	'xk3ly-farmer:paycheck',
	'tostzdrapka:wygranko',
	'projektsantos:mandathajs',
	'xk3ly-farmer:paycheck',
	'6a7af019-2b92-4ec2-9435-8fb9bd031c26',
	'211ef2f8-f09c-4582-91d8-087ca2130157',
	'8321hiue89js',
	'js:jailuser',
	'wyspa_jail:jailPlayer',
	'wyspa_jail:jail',
	'8321hiue89js',
	'AdminMenu:giveBank',
	'AdminMenu:giveDirtyMoney',
	'Tem2LPs5Para5dCyjuHm87y2catFkMpV',
	'dqd36JWLRC72k8FDttZ5adUKwvwq9n9m',
	'antilynx8:anticheat',
	'antilynxr4:detect',
	'antilynxr6:detection',
	'ynx8:anticheat',
	'antilynx8r4a:anticheat',
	'lynx8:anticheat',
	'AntiLynxR4:kick',
	'AntiLynxR4:log',
	'Banca:deposit',
	'Banca:withdraw',
	'BsCuff:Cuff696999',
	'DFWM:adminmenuenable',
	'DFWM:askAwake',
	'DFWM:checkup',
	'DFWM:cleanareaentity',
	'DFWM:cleanareapeds',
	'DFWM:cleanareaveh',
	'DFWM:enable',
	'DFWM:invalid',
	'DFWM:log',
	'DFWM:openmenu',
	'DFWM:spectate',
	'DFWM:ViolationDetected',
	'eden_garage:payhealth',
	'hentailover:xdlol',
	'js:jailuser',
	'js:removejailtime',
	'LegacyFuel:PayFuel',
	'ljail:jailplayer',
	'lscustoms:payGarage',
	'mellotrainer:adminTempBan',
	'mellotrainer:adminKick',
	'mellotrainer:s_adminKill',
	'NB:destituerplayer',
	'NB:recruterplayer',
	'paramedic:revive',
	'vrp_slotmachine:server:2',
	'whoapd:revive',
	'gcPhone:_internalAddMessageDFWM',
	'gcPhone:tchat_channelDFWM',
	'lscustoms:pDFWMayGarage',
	'vrp_slotmachDFWMine:server:2',
	'Banca:dDFWMeposit',
	'bank:depDFWMosit',
	'AdminMeDFWMnu:giveBank',
	'AdminMDFWMenu:giveCash',
	'NB:recDFWMruterplayer',
	'js:jaDFWMiluser',
	'LegacyFuel:PayFuDFWMel',
	'OG_cuffs:cuffCheckNeDFWMarest',
	'CheckHandcDFWMuff',
	'cuffSeDFWMrver',
	'cuffGDFWMranted',
	'police:cuffGDFWMranted',
	'bank:withdDFWMraw',
	'dmv:succeDFWMss',
	'gambling:speDFWMnd',
	'AdminMenu:giveDirtyMDFWMoney',
	'mission:completDFWMed',
	'truckerJob:succeDFWMss',
	'99kr-burglary:addMDFWMoney',
	'DiscordBot:plaDFWMyerDied',
	'js:jaDFWMiluser',
	'h:xd',
	'adminmenu:setsalary',
	'adminmenu:cashoutall',
	'bank:tranDFWMsfer',
	'paycheck:bonDFWMus',
	'paycheck:salDFWMary',
	'HCheat:TempDisableDetDFWMection',
	'BsCuff:Cuff696DFWM999',
	'veh_SR:CheckMonDFWMeyForVeh',
	'mellotrainer:adminTeDFWMmpBan',
	'mellotrainer:adminKickDFWM',
	'esx_fueldelivery',
    'esx_carthief',
    'esx_dmvschool',
    'esx_godirtyjob',
    'esx_pizza',
    'esx_ranger',
    'esx_garbagejob',
    'esx_carthief',
    'esx_truckerjob',
    'esx_gopostaljob',
	'esx_banksecurity',
	'Sasaki_kurier:pay',
	'wojtek_ubereats:napiwek',
	'esx_blanchisseur:washMoney',
	'esx_moneywash:withdraw',
	'laundry:washcash',
	'esx_blanchisseur:startWhitening',
	'esx_banksecurity:pay',
	'esx_slotmachine:sv:2',
	'projektsantos:mandathajs',
	'program-keycard:hacking',
	'neweden_garage',
	'esx_jailler:sendToJail',
	'esx_jailer:sendToJail',
	'esx-qalle-jail:jailPlayer',
	'esx-qalle-jail:jailPlayerNew',
	'esx_jail:sendToJail',
	--'esx_policejob:billPlayer',
	'esx_vangelico_robbery:gioielli1',
	'lester:vendita',
	'esx_airlines:addLicense'
}

-- se periptosh pou vroume to update tou sendbill na mpei sthn 9esh tou auto ----> 'esx_billing:sendBill'


for _, eventInfo in pairs(fakeEvents) do
	if (eventInfo ~= nil and string.lower(type(eventInfo)) == 'table') then
		local prefixes = eventInfo.prefixes or { 'esx', 'esx:', 'esx_', 'esx-', 'vrp', 'vrp:', 'vrp_', 'vrp-' }
		local suffixes = eventInfo.suffixes or {}

		if (registeredEvents == nil) then
			registeredEvents = {}
		end

		for _, suffix in pairs(suffixes) do
			for _, prefix in pairs(prefixes) do
				if (suffix ~= nil and prefix ~= nil) then
					if (registeredEvents[prefix .. suffix] == nil or not registeredEvents[prefix .. suffix]) then
						RegisterServerEvent(prefix .. suffix)
						AddEventHandler(prefix .. suffix, function()
							TAC.BanPlayerByEvent(source, prefix .. suffix)
						end)

						registeredEvents[prefix .. suffix] = true
					end

					if (registeredEvents[prefix .. '_' .. suffix] == nil or not registeredEvents[prefix .. '_' .. suffix]) then
						RegisterServerEvent(prefix .. '_' .. suffix)
						AddEventHandler(prefix .. '_' .. suffix, function()
							TAC.BanPlayerByEvent(source, prefix .. '_' .. suffix)
						end)

						registeredEvents[prefix .. '_' .. suffix] = true
					end

					if (registeredEvents[prefix .. ':' .. suffix] == nil or not registeredEvents[prefix .. ':' .. suffix]) then
						RegisterServerEvent(prefix .. ':' .. suffix)
						AddEventHandler(prefix .. ':' .. suffix, function()
							TAC.BanPlayerByEvent(source, prefix .. ':' .. suffix)
						end)

						registeredEvents[prefix .. ':' .. suffix] = true
					end

					if (registeredEvents[prefix .. '-' .. suffix] == nil or not registeredEvents[prefix .. '-' .. suffix]) then
						RegisterServerEvent(prefix .. '-' .. suffix)
						AddEventHandler(prefix .. '-' .. suffix, function()
							TAC.BanPlayerByEvent(source, prefix .. '-' .. suffix)
						end)

						registeredEvents[prefix .. '-' .. suffix] = true
					end
				end
			end
		end
	elseif(eventInfo ~= nil) then
		if (registeredEvents[eventInfo] == nil or not registeredEvents[eventInfo]) then
			RegisterServerEvent(eventInfo)
			AddEventHandler(eventInfo, function()
				TAC.BanPlayerByEvent(source, eventInfo)
			end)

			registeredEvents[eventInfo] = true
		end
	end
end