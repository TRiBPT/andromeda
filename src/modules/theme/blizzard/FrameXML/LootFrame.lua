local F, C = unpack(select(2, ...))

tinsert(C.BlizzThemes, function()
    if not _G.ANDROMEDA_ADB.ReskinBlizz then
        return
    end

    local LootFrame = _G.LootFrame

    F.ReskinClose(LootFrame.ClosePanelButton)
    F.StripTextures(LootFrame)
    F.SetBD(LootFrame)
    F.ReskinTrimScroll(LootFrame.ScrollBar, true)

    local function updateHighlight(self)
        local button = self.__owner
        if button.HighlightNameFrame:IsShown() then
            button.bg:SetBackdropColor(1, 1, 1, 0.25)
        else
            button.bg:SetBackdropColor(0, 0, 0, 0.25)
        end
    end

    local function updatePushed(self)
        local button = self.__owner
        if button.PushedNameFrame:IsShown() then
            button.bg:SetBackdropBorderColor(1, 0.8, 0)
        else
            button.bg:SetBackdropColor(0, 0, 0)
        end
    end

    hooksecurefunc(LootFrame.ScrollBox, 'Update', function(self)
        for i = 1, self.ScrollTarget:GetNumChildren() do
            local button = select(i, self.ScrollTarget:GetChildren())
            local item = button.Item
            local questTexture = button.IconQuestTexture
            if item and not button.styled then
                F.StripTextures(item, 1)
                item.bg = F.ReskinIcon(item.icon)
                item.bg:SetFrameLevel(4)
                F.ReskinIconBorder(item.IconBorder, true)

                questTexture:SetAlpha(0)
                button.NameFrame:SetAlpha(0)
                button.BorderFrame:SetAlpha(0)
                button.HighlightNameFrame:SetAlpha(0)
                button.PushedNameFrame:SetAlpha(0)
                button.bg = F.CreateBDFrame(button.HighlightNameFrame, 0.25)
                button.bg:SetAllPoints()
                item.__owner = button
                item:HookScript('OnMouseUp', updatePushed)
                item:HookScript('OnMouseDown', updatePushed)
                item:HookScript('OnEnter', updateHighlight)
                item:HookScript('OnLeave', updateHighlight)

                button.styled = true
            end

            local itemBG = item and item.bg
            if itemBG then
                if questTexture:IsShown() then
                    itemBG:SetBackdropBorderColor(1, 0.8, 0)
                else
                    itemBG:SetBackdropBorderColor(0, 0, 0)
                end
            end
        end
    end)

    -- Bonus roll
    local BonusRollFrame = _G.BonusRollFrame
    BonusRollFrame.Background:SetAlpha(0)
    BonusRollFrame.IconBorder:Hide()
    BonusRollFrame.BlackBackgroundHoist.Background:Hide()
    BonusRollFrame.SpecRing:SetAlpha(0)
    F.SetBD(BonusRollFrame)

    local specIcon = BonusRollFrame.SpecIcon
    specIcon:ClearAllPoints()
    specIcon:SetPoint('TOPRIGHT', -90, -18)
    local bg = F.ReskinIcon(specIcon)
    hooksecurefunc('BonusRollFrame_StartBonusRoll', function()
        bg:SetShown(specIcon:IsShown())
    end)

    local promptFrame = BonusRollFrame.PromptFrame
    F.ReskinIcon(promptFrame.Icon)
    promptFrame.Timer.Bar:SetTexture(C.Assets.Textures.StatusbarNormal)
    F.CreateBDFrame(promptFrame.Timer, 0.25)

    local from, to = '|T.+|t', '|T%%s:14:14:0:0:64:64:5:59:5:59|t'
    _G.BONUS_ROLL_COST = _G.BONUS_ROLL_COST:gsub(from, to)
    _G.BONUS_ROLL_CURRENT_COUNT = _G.BONUS_ROLL_CURRENT_COUNT:gsub(from, to)

    -- Loot Roll Frame
    hooksecurefunc('GroupLootFrame_OpenNewFrame', function()
        for i = 1, _G.NUM_GROUP_LOOT_FRAMES do
            local frame = _G['GroupLootFrame' .. i]
            if not frame.styled then
                frame.Border:SetAlpha(0)
                frame.Background:SetAlpha(0)
                frame.bg = F.SetBD(frame)

                frame.Timer.Bar:SetTexture(C.Assets.Textures.Backdrop)
                frame.Timer.Bar:SetVertexColor(1, 0.8, 0)
                frame.Timer.Background:SetAlpha(0)
                F.CreateBDFrame(frame.Timer, 0.25)

                frame.IconFrame.Border:SetAlpha(0)
                F.ReskinIcon(frame.IconFrame.Icon)

                local bg = F.CreateBDFrame(frame, 0.25)
                bg:SetPoint('TOPLEFT', frame.IconFrame.Icon, 'TOPRIGHT', 0, 1)
                bg:SetPoint('BOTTOMRIGHT', frame.IconFrame.Icon, 'BOTTOMRIGHT', 150, -1)

                frame.styled = true
            end

            if frame:IsShown() then
                local _, _, _, quality = GetLootRollItemInfo(frame.rollID)
                local color = C.QualityColors[quality]
                frame.bg:SetBackdropBorderColor(color.r, color.g, color.b)
            end
        end
    end)

    -- Bossbanner
    hooksecurefunc('BossBanner_ConfigureLootFrame', function(lootFrame)
        local iconHitBox = lootFrame.IconHitBox
        if not iconHitBox.bg then
            iconHitBox.bg = F.CreateBDFrame(iconHitBox)
            iconHitBox.bg:SetOutside(lootFrame.Icon)
            lootFrame.Icon:SetTexCoord(unpack(C.TEX_COORD))
            F.ReskinIconBorder(iconHitBox.IconBorder, true)
        end

        iconHitBox.IconBorder:SetTexture(nil)
    end)
end)
