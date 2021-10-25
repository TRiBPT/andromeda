local F, C, L = unpack(select(2, ...))
local ACTIONBAR = F:GetModule('ActionBar')

local padding = 4

function ACTIONBAR:CreateExtrabar()
    local buttonList = {}
    local size = C.DB.Actionbar.ButtonSize + 10

    -- ExtraActionButton
    local frame = CreateFrame('Frame', 'FreeUI_ActionBarExtra', _G.UIParent, 'SecureHandlerStateTemplate')
    frame:SetWidth(size + 2 * padding)
    frame:SetHeight(size + 2 * padding)
    frame.Pos = {'CENTER', _G.UIParent, 'CENTER', 0, 300}
    frame.mover = F.Mover(frame, L['Extra Button'], 'Extrabar', frame.Pos)

    _G.ExtraActionBarFrame:EnableMouse(false)
    _G.ExtraAbilityContainer:SetParent(frame)
    _G.ExtraAbilityContainer:ClearAllPoints()
    _G.ExtraAbilityContainer:SetPoint('CENTER', frame, 0, 2 * padding)
    _G.ExtraAbilityContainer.ignoreFramePositionManager = true

    local button = _G.ExtraActionButton1
    table.insert(buttonList, button)
    table.insert(ACTIONBAR.buttons, button)
    button:SetSize(size, size)

    frame.frameVisibility = '[extrabar] show; hide'
    _G.RegisterStateDriver(frame, 'visibility', frame.frameVisibility)

    -- ZoneAbility
    local zoneFrame = CreateFrame('Frame', 'FreeUI_ActionBarZone', _G.UIParent)
    zoneFrame:SetWidth(size + 2 * padding)
    zoneFrame:SetHeight(size + 2 * padding)
    zoneFrame.Pos = {'CENTER', _G.UIParent, 'CENTER', 0, 250}
    zoneFrame.mover = F.Mover(zoneFrame, L['Zone Ability Button'], 'ZoneAbility', zoneFrame.Pos)

    _G.ZoneAbilityFrame:SetParent(zoneFrame)
    _G.ZoneAbilityFrame:ClearAllPoints()
    _G.ZoneAbilityFrame:SetPoint('CENTER', zoneFrame)
    _G.ZoneAbilityFrame.ignoreFramePositionManager = true
    _G.ZoneAbilityFrame.Style:SetAlpha(0)

    hooksecurefunc(
        _G.ZoneAbilityFrame,
        'UpdateDisplayedZoneAbilities',
        function(self)
            for spellButton in self.SpellButtonContainer:EnumerateActive() do
                if spellButton and not spellButton.styled then
                    spellButton.NormalTexture:SetAlpha(0)
                    spellButton:SetPushedTexture(C.Assets.button_pushed) -- force it to gain a texture
                    spellButton:GetHighlightTexture():SetColorTexture(1, 1, 1, .25)
                    spellButton:GetHighlightTexture():SetInside()
                    spellButton.Icon:SetInside()
                    F.ReskinIcon(spellButton.Icon, true)
                    spellButton.styled = true
                end
            end
        end
    )

    -- Fix button visibility
    hooksecurefunc(
        _G.ZoneAbilityFrame,
        'SetParent',
        function(self, parent)
            if parent == _G.ExtraAbilityContainer then
                self:SetParent(zoneFrame)
            end
        end
    )
end
