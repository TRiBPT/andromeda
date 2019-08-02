local _, ns = ...

if ns.locale ~= "zhCN" and ns.locale ~= "zhTW" then return end

ns.localization.profile = "角色单独配置"
ns.localization.profileTooltip = "为当前角色使用单独的选项配置。"
ns.localization.reloadCheck = "|cffff2735是否重载界面来完成设置？|r"
ns.localization.needReload = "|cffff2735重载界面来应用改动。|r"
ns.localization.install = "安装"
ns.localization.reset = "重置选项"
ns.localization.resetCheck = "|cffff2735是否移除所有已保存的选项并重置为默认值？|r"


ns.localization.general = "综合"
ns.localization.generalSubText = "这些选项控制这个界面的大部分通用设置。"
ns.localization.generalsub = "通用设置"
ns.localization.generalhideTalkingHead = "隐藏情景对话框"
ns.localization.generalhideTalkingHeadTooltip = "隐藏情景对话框"
ns.localization.generalhideBossBanner = "隐藏副本掉落通知横幅"
ns.localization.generalhideBossBannerTooltip = "隐藏副本掉落通知横幅"
ns.localization.generalflashCursor = "鼠标闪光"
ns.localization.generalflashCursorTooltip = "鼠标移动时添加一道闪光轨迹。"
ns.localization.generalmailButton = "邮件一键收取"
ns.localization.generalmailButtonTooltip = "在邮件界面添加一个按钮来一键收取所有邮件。"
ns.localization.generalalreadyKnown = "配方/坐骑/宠物染色"
ns.localization.generalalreadyKnownTooltip = "在商人/拍卖行界面给已经学会的配方/坐骑/宠物染色。"
ns.localization.generalmissingStats = "属性补全"
ns.localization.generalmissingStatsTooltip = "在人物面板显示所有的属性。"
ns.localization.generalmissingBuffs = "光环缺失提示"
ns.localization.generalmissingBuffsTooltip = "光环缺失提示（战吼/智力/毒药等）。"
ns.localization.generalfasterLoot = "快速拾取"
ns.localization.generalfasterLootTooltip = "快速拾取"
ns.localization.generalraidManager = "团队工具"
ns.localization.generalraidManagerTooltip = "在队伍中时启用团队工具条（屏幕左侧边缘）。"
ns.localization.generalquickMarking = "快速设置标记"
ns.localization.generalquickMarkingTooltip = "Alt+鼠标左键点击人物模型可以快速设置标记。"
ns.localization.generalquickFocusing = "快速设置焦点"
ns.localization.generalquickFocusingTooltip = "shift+鼠标左键点击人物模型或框体可以快速设为焦点，重复点击空白处则清除焦点。"
ns.localization.generalprogressBar = "经验声望荣誉进度条"
ns.localization.generalprogressBarTooltip = "在小地图上添加一个进度条监控经验声望荣誉。"
ns.localization.generalPVPSound = "击杀音效"
ns.localization.generalPVPSoundTooltip = "为PVP行为添加类似DotA的击杀/连杀音效。"
ns.localization.generalclickCast = "点击施法"
ns.localization.generalclickCastTooltip = "启用团队框体点击施法，打开技能面板设定具体配置。"
ns.localization.generalcombatText = "战斗信息"
ns.localization.generalcombatTextTooltip = "启用简易滚动战斗信息。"

ns.localization.generalcooldownsub = "冷却相关"
ns.localization.generalcooldown = "冷却计时"
ns.localization.generalcooldownTooltip = "取代暴雪自带的冷却计时。"
ns.localization.generalcooldown_decimal = "冷却时间低于5秒时显示毫秒"
ns.localization.generalcooldown_decimalTooltip = "冷却时间低于5秒时显示毫秒。"
ns.localization.generalcooldownPulse = "冷却完成提示"
ns.localization.generalcooldownPulseTooltip = "当技能或物品完成冷却后在屏幕中央显示一个图标提示。"

ns.localization.generalcamerasub = "视角镜头"
ns.localization.generalcameraIncrement = "镜头调整速度"

ns.localization.generaluiscalesub = "界面缩放"
ns.localization.generaluiScaleAuto = "强制界面缩放"
ns.localization.generaluiScaleAutoTooltip = "自动为当前分辨率使用最合适的界面缩放值。"
ns.localization.generaluiScale = "自定义缩放"




ns.localization.appearance = "外观"
ns.localization.appearanceSubText = "控制界面外观相关的设置。"

ns.localization.appearancegeneralsub = "全局设定"
ns.localization.appearanceenableShadow = "阴影边框"
ns.localization.appearanceenableShadowTooltip = "给大部分界面元素添加外围阴影。"
ns.localization.appearanceenablefontStyle = "字体调整"
ns.localization.appearanceenablefontStyleTooltip = "调整界面字体。"
ns.localization.appearanceenableTheme = "全局主题"
ns.localization.appearanceenableThemeTooltip = "启用黑色半透明的全局主题。"
ns.localization.appearanceenableVignette = "暗角效果"
ns.localization.appearanceenableVignetteTooltip = "在屏幕边缘添加暗角效果。"
ns.localization.appearancereskinFont = "调整字体"
ns.localization.appearancereskinFontTooltip = "调整界面字体大小。"

ns.localization.appearancepluginsub = "插件适配"
ns.localization.appearanceDBM = "DBM"
ns.localization.appearanceBW = "BigWigs"
ns.localization.appearanceWA = "WeakAuras"
ns.localization.appearancePGF = "Skada"
ns.localization.appearanceSKADA = "PremadeGroupsFilter"



ns.localization.automation = "便利功能"
ns.localization.automationSubText = "这些设置帮助玩家自动执行一些常用动作。"
ns.localization.automationautoSellJunk = "售卖垃圾"
ns.localization.automationautoSellJunkTooltip = "打开商人窗口时自动售卖灰色品质物品。"
ns.localization.automationautoScreenShot = "截图"
ns.localization.automationautoScreenShotTooltip = "获得成就时自动截图。"
ns.localization.automationautoSetRole = "职责确认"
ns.localization.automationautoSetRoleTooltip = "当你已经选择职责或为纯DPS职业时跳过职责确认。"
ns.localization.automationautoRepair = "修理"
ns.localization.automationautoRepairTooltip = "打开商人窗口时自动修理装备。"
ns.localization.automationautoActionCam = "动态镜头"
ns.localization.automationautoActionCamTooltip = "自动启用动态镜头。"
ns.localization.automationautoQuest = "任务交接"
ns.localization.automationautoQuestTooltip = "自动交接任务"
ns.localization.automationautoBuyStack = "杂货购买"
ns.localization.automationautoBuyStackTooltip = "按住shift自动购买整组。"
ns.localization.automationautoTabBinder = "Tab 绑定"
ns.localization.automationautoTabBinderTooltip = "战场/竞技场中自动切换tab为选择敌对玩家忽略宠物。"
ns.localization.automationautoAcceptInvite = "组队邀请"
ns.localization.automationautoAcceptInviteTooltip = "自动接受来自公会或好友的组队邀请。"
ns.localization.automationautoInvite = "自动邀请"
ns.localization.automationautoInviteTooltip = "自动邀请使用关键字密语的玩家\n输入 /ainv 关键字"


ns.localization.actionbar = "动作条"
ns.localization.actionbarSubText = "这些选项控制大部分和动作条相关的设置。"
ns.localization.actionbarline_1 = ""
ns.localization.actionbarline_2 = ""
ns.localization.actionbarline_3 = ""
ns.localization.actionbarsGeneral = "动作条布局"
ns.localization.actionbarenable = "启用动作条"
ns.localization.actionbarenableTooltip = "禁用该项如果你想要使用其他的动作条类插件。"
ns.localization.actionbarlayoutStyle = "动作条布局"
ns.localization.actionbarlayoutStyle1 = "默认布局 (3*12)"
ns.localization.actionbarlayoutStyle2 = "加长布局 (2*18)"
ns.localization.actionbarlayoutStyle3 = "极简模式 (默认隐藏动作条)"
ns.localization.actionbarhotKey = "显示快捷键"
ns.localization.actionbarmacroName = "显示宏名称"
ns.localization.actionbarcount = "显示物品计数"
ns.localization.actionbarclassColor = "按钮职业染色"
ns.localization.actionbarhoverBind = "快速按键绑定"
ns.localization.actionbarhoverBindTooltip = "输入 /hb 使用快速绑定快捷键功能，鼠标移到按钮上按下要绑定的快捷键。"
ns.localization.actionbarsideBar = "侧边条"
ns.localization.actionbarsideBarTooltip = "显示侧边动作条，界面设置/动作条里的右边动作条"
ns.localization.actionbarsideBarMouseover = "鼠标悬停渐显"
ns.localization.actionbarpetBar = "宠物条"
ns.localization.actionbarpetBarTooltip = "启用宠物动作条。"
ns.localization.actionbarpetBarMouseover = "鼠标悬停渐显"
ns.localization.actionbarstanceBar = "姿态条"
ns.localization.actionbarstanceBarTooltip = "显示姿态动作条。"
ns.localization.actionbarstanceBarMouseover = "鼠标悬停渐显"
ns.localization.actionbarbar3 = "Bar3"
ns.localization.actionbarbar3Tooltip = "显示 bar3，界面设置/动作条里的右下方动作条"
ns.localization.actionbarbar3Mouseover = "鼠标悬停渐显"


ns.localization.inventory = "背包"
ns.localization.inventorySubText = "选择设置你喜欢的样式"
ns.localization.inventoryenable = "启用背包"
ns.localization.inventoryenableTooltip = "禁用该项如果你想要使用其他的背包类插件。"
ns.localization.inventoryitemLevel = "显示装备等级"
ns.localization.inventorynewitemFlash = "新获得物品闪光"
ns.localization.inventoryuseCategory = "物品分类"
ns.localization.inventorygearSetFilter = "装备方案"
ns.localization.inventoryquestItemFilter = "任务相关"
ns.localization.inventorytradeGoodsFilter = "商业相关"
ns.localization.inventorymechagonItemFilter = "麦卡贡相关"
ns.localization.inventoryreverseSort = "反向整理"
ns.localization.inventoryitemSlotSize = '背包格子大小'
ns.localization.inventorybagColumns = '背包宽度'


ns.localization.infobar = "信息条"
ns.localization.infobarSubText = "信息条位于屏幕顶部，移动鼠标显示额外的功能和信息"
ns.localization.infobarenable = "启用"
ns.localization.infobarmouseover = "鼠标滑过显示按钮"
ns.localization.infobarmouseoverTooltip = "只在鼠标滑过时显示按钮"
ns.localization.infobarstats = "时间/帧数/延迟"
ns.localization.infobarstatsTooltip = "显示时间/帧数/延迟等信息"
ns.localization.infobarmicroMenu = "游戏菜单"
ns.localization.infobarskadaHelper = "Skada助手"
ns.localization.infobarskadaHelperTooltip = "左键显示Skada窗口\n右键隐藏Skada窗口\n中键清除Skada数据"
ns.localization.infobarspecTalent = "天赋/专精"
ns.localization.infobarspecTalentTooltip = "显示天赋专精\n左键切换专精\n右键切换拾取专精"
ns.localization.infobarfriends = "好友"
ns.localization.infobarfriendsTooltip = "显示好友在线信息"
ns.localization.infobarcurrencies = "货币"
ns.localization.infobarcurrenciesTooltip = "显示各类货币以及统计"
ns.localization.infobarreport = "日常/周常信息"
ns.localization.infobarreportTooltip = "显示日常/周常/副本进度/突袭等信息"
ns.localization.infobardurability = "装备耐久"
ns.localization.infobardurabilityTooltip = "显示身上装备的耐久度信息"


ns.localization.notification = "通知提示"
ns.localization.notificationSubText = "这些选项控制大部分和通知提示相关的设置。"
ns.localization.notificationBanner = "通知框"
ns.localization.notificationAlert = "战斗相关"
ns.localization.notificationQuest = "任务相关"
ns.localization.notificationRares = "稀有相关"
ns.localization.notificationenableBanner = "启用通知框"
ns.localization.notificationplaySounds = "声音"
ns.localization.notificationcheckMail = "新邮件"
ns.localization.notificationcheckBagsFull = "背包满了"
ns.localization.notificationautoRepairCost = "修理花费"
ns.localization.notificationautoSellJunk = "出售垃圾"
ns.localization.notificationinterrupt = "打断"
ns.localization.notificationinterruptTooltip = "通告打断。"
ns.localization.notificationinterruptSound = "声音提示"
ns.localization.notificationdispel = "驱散"
ns.localization.notificationdispelTooltip = "通告驱散。"
ns.localization.notificationdispelSound = "声音提示"
ns.localization.notificationrare = "发现稀有"
ns.localization.notificationrareSound = "声音提示"
ns.localization.notificationspell = "技能"
ns.localization.notificationresurrect = "战复"
ns.localization.notificationsapped = "闷棍"
ns.localization.notificationspellTooltip = "通告一些有用的技能。"
ns.localization.notificationresurrectTooltip = "通告战复信息。"
ns.localization.notificationsappedTooltip = "通告闷棍。"
ns.localization.notificationquestNotifier = "任务通告"
ns.localization.notificationquestProgress = "进度"
ns.localization.notificationonlyCompleteRing = "完成"



ns.localization.chat = "聊天"
ns.localization.chatSubText = "调整聊天框的外观和功能。"
ns.localization.chatenable = "启用聊天框增强"
ns.localization.chatenableTooltip = "禁用该项如果你想要使用其他的聊天类插件。"
ns.localization.chatlockPosition = "锁定位置"
ns.localization.chatlockPositionTooltip = "锁定聊天框的位置，禁用该项如果你想要自己移动聊天框的位置。"
ns.localization.chatuseOutline = "字体描边"
ns.localization.chatuseOutlineTooltip = "给聊天框的字体添加描边。"
ns.localization.chatwhisperSound = "密语提醒"
ns.localization.chatwhisperSoundTooltip = "当收到密语时触发声音提醒。"
ns.localization.chattimeStamp = "时间戳"
ns.localization.chattimeStampTooltip = "添加自定义的时间戳。"
ns.localization.chatitemLink = "装备链接增强"
ns.localization.chatitemLinkTooltip = "为装备链接添加装等/部位/宝石等详细信息。"
ns.localization.chatspamageMeter = "伤害统计数据简化"
ns.localization.chatspamageMeterTooltip = "把伤害统计类插件输出的数据简化为一个可点击的链接。"
ns.localization.chatchatButton = "功能按钮"
ns.localization.chatchatButtonTooltip = "在聊天框左下角添加一个小按钮，左键点击隐藏整个聊天框，右键点击加入/离开世界频道，中键复制聊天内容。"
ns.localization.chatchannelSticky = "频道锁定"
ns.localization.chatchannelStickyTooltip = "发消息时自动切换到上次使用的频道。"
ns.localization.chatlineFading = "文字淡化"
ns.localization.chatlineFadingTooltip = "如果聊天框一段时间没有收到新信息则旧信息会逐渐淡化消失。"
ns.localization.chatuseFilter = "内容过滤"
ns.localization.chatuseFilterTooltip = "自动过滤重复或者无用的信息。"
ns.localization.chatautoBubble = "聊天气泡"
ns.localization.chatautoBubbleTooltip = "团本外自动禁用聊天气泡。"



ns.localization.map = "地图"
ns.localization.mapSubText = "调整地图的外观和功能。"
ns.localization.mapline = ""
ns.localization.mapworldMap = "世界地图增强"
ns.localization.mapworldMapTooltip = "禁用该项如果你想要使用其他的世界地图类插件。"
ns.localization.mapcoords = "显示坐标"
ns.localization.mapcoordsTooltip = "在世界地图上显示玩家位置和鼠标位置的坐标值。"
ns.localization.mapmapReveal = "清除迷雾"
ns.localization.mapmapRevealTooltip = "在世界地图上清除未探索区域的迷雾。"
ns.localization.mapminiMap = "小地图增强"
ns.localization.mapminiMapTooltip = "禁用该项如果你想要使用其他的小地图类插件。"
ns.localization.mapwhoPings = "显示谁在点击小地图"
ns.localization.mapminiMapSize = "调整小地图大小"


ns.localization.tooltip = "鼠标提示"
ns.localization.tooltipSubText = "调整鼠标提示的外观和功能。"
ns.localization.tooltipenable = "启用鼠标提示强化"
ns.localization.tooltipenableTooltip = "禁用该项如果你想使用其他鼠标提示类插件。"
ns.localization.tooltipcursor = "跟随鼠标"
ns.localization.tooltipcursorTooltip = "鼠标提示的位置跟随鼠标，禁用则固定在屏幕右下角。"

ns.localization.tooltiphideTitle = "隐藏头衔"
ns.localization.tooltiphideRealm = "隐藏服务器"
ns.localization.tooltiphideRank = "隐藏公会会阶"
ns.localization.tooltipcombatHide = "战斗中隐藏鼠标提示"
ns.localization.tooltipborderColor = "边框染色"
ns.localization.tooltipborderColorTooltip = "鼠标提示边框按照物品品质染色"
ns.localization.tooltiptipIcon = "图标"
ns.localization.tooltiptipIconTooltip = "鼠标提示显示相应的图标"

ns.localization.tooltipilvlSpec = "装等专精"
ns.localization.tooltipilvlSpecByShift = "按住shift显示"
ns.localization.tooltiplinkHover = "装备链接"
ns.localization.tooltipextraInfo = "显示额外的信息"
ns.localization.tooltipextraInfoByShift = "按住shift显示"
ns.localization.tooltipazeriteTrait = "艾泽里特特质"


ns.localization.unitframe = "头像框体"
ns.localization.unitframeSubText = "这些选项控制大部分和头像框体相关的设置。"
ns.localization.unitframeenable = "启用头像框体"
ns.localization.unitframeenableTooltip = "禁用该项如果你想要使用其他的头像框体类插件。"

ns.localization.unitframeline = ""
ns.localization.unitframetransMode = "透明风格"
ns.localization.unitframetransModeTooltip = "禁用该项如果你喜欢实色风格。"
ns.localization.unitframecolourSmooth = "平滑染色"
ns.localization.unitframecolourSmoothTooltip = "所有头像框体的血量条根据当前血量百分比染色。"
ns.localization.unitframeportrait = "动态肖像"
ns.localization.unitframeportraitTooltip = "添加动态肖像。"
ns.localization.unitframehealer_layout = "治疗布局"
ns.localization.unitframehealer_layoutTooltip = "对治疗职业更友好的对称布局，小队/团队框体集中在屏幕中下部。"
ns.localization.unitframeframeVisibility = "极简模式"
ns.localization.unitframeframeVisibilityTooltip = "默认隐藏玩家头像框体，进入战斗或者选择目标后显示。"
ns.localization.unitframethreat = "仇恨提示"
ns.localization.unitframethreatTooltip = "小队/团队框体周围的光晕提示仇恨。"
ns.localization.unitframerangeCheck = "距离提示"
ns.localization.unitframerangeCheckTooltip = "超出距离的框体淡化。"
ns.localization.unitframeoverAbsorb = "吸收提示"
ns.localization.unitframeoverAbsorbTooltip = "血条右侧的白光说明有吸收伤害的效果存在。"
ns.localization.unitframehealPrediction = "治疗提示"
ns.localization.unitframehealPredictionTooltip = "在血量条上显示即将到来的治疗。"
ns.localization.unitframedispellable = "驱散提示"
ns.localization.unitframedispellableTooltip = "如果小队/团队成员中了你可以驱散的减益效果，该成员的框体会高亮提示，高亮颜色取决于减益效果的类型。"
ns.localization.unitframeenableCastbar = "启用施法条"
ns.localization.unitframeenableCastbarTooltip = "禁用该项如果你想要使用其他的施法条类插件。"
ns.localization.unitframecastbar_separatePlayer = "分离玩家施法条"
ns.localization.unitframecastbar_separateTarget = "分离目标施法条"
ns.localization.unitframeenableGroup = "启用小队/团队框体"
ns.localization.unitframeenableGroupTooltip = "禁用此项如果你想要使用其他小队/团队类插件。"
ns.localization.unitframeshowGroupName = "显示名字"
ns.localization.unitframeshowGroupNameTooltip = "在小队/团队框体上显示名字。"
ns.localization.unitframegroupColourSmooth = "平滑染色"
ns.localization.unitframegroupColourSmoothTooltip = "团队框体的血量条根据当前血量百分比染色。"
ns.localization.unitframeenableBoss = "启用首领框体"
ns.localization.unitframeenableBossTooltip = "禁用此项如果你想要使用其他的首领框体类插件。"
ns.localization.unitframebossColourSmooth = "平滑染色"
ns.localization.unitframebossColourSmoothTooltip = "首领框体的血量条根据当前血量百分比染色。"
ns.localization.unitframeenableArena = "启用竞技场框体"
ns.localization.unitframeenableArenaTooltip = "禁用此项如果你想要使用其他的竞技场框体类插件。"
ns.localization.unitframequakeTimer = "震荡提示"
ns.localization.unitframequakeTimerTooltip = "显示震荡计时条。"
ns.localization.unitframeclassPower = "职业资源"
ns.localization.unitframeclassPowerTooltip = "显示职业特殊资源条，比如连击点/神圣能量/灵魂碎片。"
ns.localization.unitframestagger = "醉拳减伤"
ns.localization.unitframestaggerTooltip = "显示酒仙的醉拳减伤条。"
ns.localization.unitframetotems = "图腾计时"
ns.localization.unitframetotemsTooltip = "显示萨满的图腾计时条。"




ns.localization.classmod = "职业特定"
ns.localization.classmodSubText = "设置加载职业特定的组件"

local classes = UnitSex("player") == 2 and LOCALIZED_CLASS_NAMES_MALE or LOCALIZED_CLASS_NAMES_FEMALE

for class, localized in pairs(classes) do
	ns.localization["classmod"..strlower(class)] = localized
end

ns.localization.classmodhavocFury = "|cffffffff 恶魔猎手"
ns.localization.classmodhavocFuryTooltip = "根据浩劫怒气值改变怒气条颜色"


ns.localization.credits = "致谢"
ns.localization.thankYou = "Thank you:"
ns.localization.credits_1 = "Haleth, siweia"
ns.localization.credits_2 = "Haste, Tukz, Zork"
ns.localization.credits_3 = "|cff808080as well as...|r"
ns.localization.credits_4 = "Elv, Lightspark, Allez, AlleyKat\n\nCaellian, p3lim, Shantalya, tekkub\n\nTuller, Wildbreath, aduth, silverwind\n\nNibelheim, humfras, aliluya555, Paojy"

