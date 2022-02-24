local F, C = unpack(select(2, ...))
local LSM = F.Libs.LSM

local LOCALE_MASK
if GetLocale() == 'koKR' then
    LOCALE_MASK = 1
elseif GetLocale() == 'ruRU' then
    LOCALE_MASK = 2
elseif GetLocale() == 'zhCN' then
    LOCALE_MASK = 4
elseif GetLocale() == 'zhTW' then
    LOCALE_MASK = 8
else
    LOCALE_MASK = 128
end

local function RegisterMediaAssets()
    LSM:Register(LSM.MediaType.FONT, '!Free_Regular', C.Assets.Fonts.Regular, LOCALE_MASK)
    LSM:Register(LSM.MediaType.FONT, '!Free_Condensed', C.Assets.Fonts.Condensed, LOCALE_MASK)
    LSM:Register(LSM.MediaType.FONT, '!Free_Bold', C.Assets.Fonts.Bold, LOCALE_MASK)
    LSM:Register(LSM.MediaType.FONT, '!Free_Combat', C.Assets.Fonts.Combat, LOCALE_MASK)
    LSM:Register(LSM.MediaType.FONT, '!Free_Header', C.Assets.Fonts.Header, LOCALE_MASK)
    LSM:Register(LSM.MediaType.FONT, '!Free_Pixel', C.Assets.Fonts.Pixel, LOCALE_MASK)
    LSM:Register(LSM.MediaType.FONT, '!Free_Square', C.Assets.Fonts.Square, LOCALE_MASK)
    LSM:Register(LSM.MediaType.FONT, '!Free_Roadway', C.Assets.Fonts.Roadway, LOCALE_MASK)

    LSM:Register(LSM.MediaType.STATUSBAR, '!Free_Normal', C.Assets.Textures.SBNormal)
    LSM:Register(LSM.MediaType.STATUSBAR, '!Free_Gradient', C.Assets.Textures.SBGradient)
    LSM:Register(LSM.MediaType.STATUSBAR, '!Free_Flat', C.Assets.Textures.SBFlat)
    LSM:Register(LSM.MediaType.STATUSBAR, '!Free_Melli', C.Assets.Textures.Melli)

    LSM:Register(LSM.MediaType.SOUND, '!Free_LowHealth', C.AssetsPath .. 'sounds\\lowhealth.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_LowMana', C.AssetsPath .. 'sounds\\lowmana.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Warning', C.AssetsPath .. 'sounds\\warning.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_ForTheHorde', C.AssetsPath .. 'sounds\\forthehorde.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Interrupt', C.AssetsPath .. 'sounds\\interrupt.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Dispel', C.AssetsPath .. 'sounds\\dispel.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Missed', C.AssetsPath .. 'sounds\\missed.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Proc', C.AssetsPath .. 'sounds\\proc.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Exec', C.AssetsPath .. 'sounds\\exec.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Pulse', C.AssetsPath .. 'sounds\\pulse.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Error', C.AssetsPath .. 'sounds\\error.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Mario', C.AssetsPath .. 'sounds\\mario.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Alarm', C.AssetsPath .. 'sounds\\alarm.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Ding', C.AssetsPath .. 'sounds\\ding.ogg')
    LSM:Register(LSM.MediaType.SOUND, '!Free_Dang', C.AssetsPath .. 'sounds\\dang.ogg')

    F:UnregisterEvent('ADDON_LOADED', RegisterMediaAssets)
end

F:RegisterEvent('ADDON_LOADED', RegisterMediaAssets)