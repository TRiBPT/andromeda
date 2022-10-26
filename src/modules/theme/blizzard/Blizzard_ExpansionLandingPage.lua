local F, C = unpack(select(2, ...))

C.Themes['Blizzard_AdventureMap'] = function()
    local frame = _G.ExpansionLandingPage

    local panel

    if frame.Overlay then
        for i = 1, frame.Overlay:GetNumChildren() do
            local child = select(i, frame.Overlay:GetChildren())
            if child.DragonridingPanel then
                panel = child
                break
            end
        end
    end

    if not panel then
        return
    end

    if panel.DragonridingPanel then
        F.Reskin(panel.DragonridingPanel.SkillsButton)
    end
    if panel.CloseButton then
        F.ReskinClose(panel.CloseButton)
    end
    if panel.MajorFactionList then
        hooksecurefunc(panel.MajorFactionList.ScrollBox, 'Update', function(self)
            for i = 1, self.ScrollTarget:GetNumChildren() do
                local child = select(i, self.ScrollTarget:GetChildren())
                if child.UnlockedState and not child.styled then
                    F.ReskinCheck(child.UnlockedState.WatchFactionButton)
                    child.UnlockedState.WatchFactionButton:SetSize(32, 32)
                    child.UnlockedState.WatchFactionButton.Label:SetFontObject(_G.Game20Font)
                    child.styled = true
                end
            end
        end)
    end
end
