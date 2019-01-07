local F, C, L = unpack(select(2, ...))
local module = F:GetModule('reminder')

function module:Dispel()
	if not C.reminder.dispel then return end

	local dispelSound = 'Interface\\AddOns\\FreeUI\\assets\\sound\\buzz.ogg'
	local frame = CreateFrame('Frame')
	frame:RegisterEvent('COMBAT_LOG_EVENT_UNFILTERED')
	frame:SetScript('OnEvent', function(self)
		local _, event, _, sourceGUID, _, _, _, _, destName, _, _, _, _, _, spellID = CombatLogGetCurrentEventInfo()
		local inInstance, instanceType = IsInInstance()
		if ((sourceGUID == UnitGUID('player')) or (sourceGUID == UnitGUID('pet'))) then
			if (event == 'SPELL_DISPEL') then
				if inInstance and IsInGroup() then
					SendChatMessage(L['dispeled']..destName..' '..GetSpellLink(spellID), say)
				end
				if C.reminder.dispelSoundAlert then
					PlaySoundFile(dispelSound, 'Master')
				end
			elseif (event == 'SPELL_STOLEN') then
				if inInstance and IsInGroup() then
					SendChatMessage(L['stolen']..destName..' '..GetSpellLink(spellID), say)
				end
				if C.reminder.dispelSoundAlert then
					PlaySoundFile(dispelSound, 'Master')
				end
			end
		end
	end)
end