local F, C = unpack(select(2, ...))

C.Themes["Blizzard_InspectUI"] = function()
	F.StripTextures(InspectTalentFrame)
	F.StripTextures(InspectModelFrame, true)
	InspectGuildFrameBG:Hide()
	F.Reskin(InspectPaperDollFrame.ViewButton)
	InspectPaperDollFrame.ViewButton:ClearAllPoints()
	InspectPaperDollFrame.ViewButton:SetPoint("TOP", InspectFrame, 0, -45)
	InspectPVPFrame.BG:Hide()

	-- Character
	local slots = {
		"Head", "Neck", "Shoulder", "Shirt", "Chest", "Waist", "Legs", "Feet", "Wrist",
		"Hands", "Finger0", "Finger1", "Trinket0", "Trinket1", "Back", "MainHand",
		"SecondaryHand", "Tabard",
	}

	for i = 1, #slots do
		local slot = _G["Inspect"..slots[i].."Slot"]
		F.StripTextures(slot)
		slot.icon:SetTexCoord(unpack(C.TexCoord))
		slot.icon:SetInside()
		slot.bg = F.CreateBDFrame(slot.icon, .25)
		slot:GetHighlightTexture():SetColorTexture(1, 1, 1, .25)
		F.ReskinIconBorder(slot.IconBorder)
		slot.IconOverlay:SetAtlas("CosmeticIconFrame")
		slot.IconOverlay:SetInside()
	end

	local function UpdateCosmetic(self)
		local unit = InspectFrame.unit
		local itemLink = unit and GetInventoryItemLink(unit, self:GetID())
		self.IconOverlay:SetShown(itemLink and IsCosmeticItem(itemLink))
	end

	hooksecurefunc("InspectPaperDollItemSlotButton_Update", function(button)
		button.icon:SetShown(button.hasItem)
		UpdateCosmetic(button)
	end)

	-- Talents
	local inspectSpec = InspectTalentFrame.InspectSpec

	inspectSpec.ring:Hide()
	F.ReskinIcon(inspectSpec.specIcon)
	inspectSpec.roleIcon:SetTexture(C.Assets.Textures.LfgRoles)
	F.CreateBDFrame(inspectSpec.roleIcon)

	for i = 1, 7 do
		local row = InspectTalentFrame.InspectTalents["tier"..i]
		for j = 1, 3 do
			local bu = row["talent"..j]
			bu.Slot:Hide()
			bu.border:SetTexture("")
			F.ReskinIcon(bu.icon)
		end
	end

	local function updateIcon(self)
		local spec = nil
		if INSPECTED_UNIT ~= nil then
			spec = GetInspectSpecialization(INSPECTED_UNIT)
		end
		if spec ~= nil and spec > 0 then
			local role1 = GetSpecializationRoleByID(spec)
			if role1 ~= nil then
				local _, _, _, icon = GetSpecializationInfoByID(spec)
				self.specIcon:SetTexture(icon)
				self.roleIcon:SetTexCoord(F.GetRoleTexCoord(role1))
			end
		end
	end

	inspectSpec:HookScript("OnShow", updateIcon)
	InspectTalentFrame:HookScript("OnEvent", function(self, event, unit)
		if not InspectFrame:IsShown() then return end
		if event == "INSPECT_READY" and InspectFrame.unit and UnitGUID(InspectFrame.unit) == unit then
			updateIcon(self.InspectSpec)
		end
	end)

    InspectFrameTab1:ClearAllPoints()
	InspectFrameTab1:SetPoint('TOPLEFT', InspectFrame, 'BOTTOMLEFT', 10, 1)
	for i = 1, 4 do
		local tab = _G["InspectFrameTab"..i]
		F.ReskinTab(tab)
		if i ~= 1 then
			tab:SetPoint("LEFT", _G["InspectFrameTab"..i-1], "RIGHT", -15, 0)
		end
	end

	F.ReskinPortraitFrame(InspectFrame)
end
