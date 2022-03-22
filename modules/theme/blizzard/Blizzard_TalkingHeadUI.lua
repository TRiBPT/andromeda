local F, C = unpack(select(2, ...))

C.Themes["Blizzard_TalkingHeadUI"] = function()
	local TalkingHeadFrame = TalkingHeadFrame
	TalkingHeadFrame:SetScale(.9)

	local portraitFrame = TalkingHeadFrame.PortraitFrame
	F.StripTextures(portraitFrame)
	portraitFrame.Portrait:SetAtlas(nil)
	portraitFrame.Portrait.SetAtlas = nop

	local model = TalkingHeadFrame.MainFrame.Model
	model:SetPoint("TOPLEFT", 30, -27)
	model:SetSize(100, 100)
	model.PortraitBg:SetAtlas(nil)
	model.PortraitBg.SetAtlas = nop

	local name = TalkingHeadFrame.NameFrame.Name
	name:SetTextColor(1, .8, 0)
	name.SetTextColor = nop
	name:SetShadowColor(0, 0, 0, 0)

	local text = TalkingHeadFrame.TextFrame.Text
	text:SetTextColor(1, 1, 1)
	text.SetTextColor = nop
	text:SetShadowColor(0, 0, 0, 0)

	local closeButton = TalkingHeadFrame.MainFrame.CloseButton
	F.ReskinClose(closeButton)
	closeButton:ClearAllPoints()
	closeButton:SetPoint("TOPRIGHT", -25, -25)
end
