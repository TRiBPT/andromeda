local F, C, L = unpack(select(2, ...))
local ACTIONBAR = F:GetModule('ActionBar')

local margin, padding = 3, 3

local function SetFrameSize(frame, size, num)
    size = size or frame.buttonSize
    num = num or frame.numButtons

    frame:SetWidth(num * size + (num - 1) * margin + 2 * padding)
    frame:SetHeight(size + 2 * padding)

    if not frame.mover then
        if C.DB.Actionbar.PetBar then
            frame.mover = F.Mover(frame, L['Pet Bar'], 'PetBar', frame.Pos)
        end
    else
        frame.mover:SetSize(frame:GetSize())
    end

    if not frame.SetFrameSize then
        frame.buttonSize = size
        frame.numButtons = num
        frame.SetFrameSize = SetFrameSize
    end
end

function ACTIONBAR:CreatePetbar()
    local layout = C.DB.Actionbar.Layout
    local bar1 = _G.FreeUI_ActionBar1
    local bar2 = _G.FreeUI_ActionBar2
    local bar3 = _G.FreeUI_ActionBar3
    local num = _G.NUM_PET_ACTION_SLOTS
    local size = C.DB.Actionbar.ButtonSize - 2
    local buttonList = {}

    local frame = CreateFrame('Frame', 'FreeUI_ActionBarPet', _G.UIParent, 'SecureHandlerStateTemplate')
    local anchor = (layout == 1 and bar1) or (layout == 2 and bar2) or (layout == 3 and bar3) or (layout == 4 and bar2)
    frame.Pos = {'BOTTOM', anchor, 'TOP', 0, margin}

    _G.PetActionBarFrame:SetParent(frame)
    _G.PetActionBarFrame:EnableMouse(false)
    _G.SlidingActionBarTexture0:SetTexture(nil)
    _G.SlidingActionBarTexture1:SetTexture(nil)

    for i = 1, num do
        local button = _G['PetActionButton' .. i]
        table.insert(buttonList, button)
        table.insert(ACTIONBAR.buttons, button)
        button:ClearAllPoints()
        if i == 1 then
            button:SetPoint('LEFT', frame, padding, 0)
        else
            local previous = _G['PetActionButton' .. i - 1]
            button:SetPoint('LEFT', previous, 'RIGHT', margin, 0)
        end
    end

    frame.buttonList = buttonList
    SetFrameSize(frame, size, num)

    if C.DB.Actionbar.PetBar then
        frame.frameVisibility = '[petbattle][overridebar][vehicleui][possessbar,@vehicle,exists][shapeshift] hide; [pet] show; hide'
    else
        frame.frameVisibility = 'hide'
    end
    _G.RegisterStateDriver(frame, 'visibility', frame.frameVisibility)
end
