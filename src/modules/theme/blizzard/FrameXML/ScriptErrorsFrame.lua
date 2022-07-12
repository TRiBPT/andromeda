local F, C = unpack(select(2, ...))

table.insert(C.BlizzThemes, function()
    if not _G.ANDROMEDA_ADB.ReskinBlizz then
        return
    end

    local ScriptErrorsFrame = _G.ScriptErrorsFrame

    ScriptErrorsFrame:SetScale(_G.UIParent:GetScale())
    F.StripTextures(ScriptErrorsFrame)
    F.SetBD(ScriptErrorsFrame)

    F.ReskinArrow(ScriptErrorsFrame.PreviousError, 'left')
    F.ReskinArrow(ScriptErrorsFrame.NextError, 'right')
    F.Reskin(ScriptErrorsFrame.Reload)
    F.Reskin(ScriptErrorsFrame.Close)
    F.ReskinScroll(_G.ScriptErrorsFrameScrollBar)
    F.ReskinClose(_G.ScriptErrorsFrameClose)
end)