local F, C = unpack(select(2, ...))
local INVENTORY = F:GetModule('Inventory')

-- Custom filter
local CustomFilterList = {
    [37863] = false, -- 酒吧传送器
    [187532] = false, -- 魂焰凿石器 @TradeGoods
    [141333] = true, -- 宁神圣典
    [141446] = true, -- 宁神书卷
    [153646] = true, -- 静心圣典
    [153647] = true, -- 静心书卷
    [161053] = true, -- 水手咸饼干
}

local function isCustomFilter(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    return CustomFilterList[item.id]
end

-- Default filter
local function isItemInBag(item)
    if C.IS_NEW_PATCH then
        return item.bagId >= 0 and item.bagId <= 5
    else
        return item.bagId >= 0 and item.bagId <= 4
    end
end

local function isItemInBank(item)
    return item.bagId >= 0 and item.bagId <= 4
end

local function isItemInBagReagent(item)
    if not C.IS_NEW_PATCH then
        return
    end
    return item.bagId == 5
end

local function isItemJunk(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterJunk then
        return
    end

    return (item.quality == Enum.ItemQuality.Poor or _G.ANDROMEDA_ADB['CustomJunkList'][item.id]) and item.hasPrice and not INVENTORY:IsPetTrashCurrency(item.id)
end

local function isItemEquipSet(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterEquipSet then
        return
    end

    return item.isInSet
end

local function isAzeriteArmor(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterAzeriteArmor then
        return
    end

    if not item.link then
        return
    end

    return C_AzeriteEmpoweredItem.IsAzeriteEmpoweredItemByID(item.link)
end

local iLvlClassIDs = {
    [Enum.ItemClass.Gem] = Enum.ItemGemSubclass.Artifactrelic,
    [Enum.ItemClass.Armor] = 0,
    [Enum.ItemClass.Weapon] = 0,
}

function INVENTORY:IsItemHasLevel(item)
    local index = iLvlClassIDs[item.classID]
    return index and (index == 0 or index == item.subClassID)
end

local function isItemEquipment(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterEquipment then
        return
    end

    return item.link and item.quality > Enum.ItemQuality.Common and INVENTORY:IsItemHasLevel(item)
end

local consumableIDs = {
    [Enum.ItemClass.Consumable] = true,
    [Enum.ItemClass.ItemEnhancement] = true,
}

local function isItemConsumable(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterConsumable then
        return
    end

    if isCustomFilter(item) == false then
        return
    end

    return isCustomFilter(item) or consumableIDs[item.classID]
end

local function isItemLegendary(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterLegendary then
        return
    end

    return item.quality == Enum.ItemQuality.Legendary
end

local isPetToy = {
    [174925] = true,
}

local collectionIDs = {
    [Enum.ItemMiscellaneousSubclass.Mount] = Enum.ItemClass.Miscellaneous,
    [Enum.ItemMiscellaneousSubclass.CompanionPet] = Enum.ItemClass.Miscellaneous,
}

local function isMountOrPet(item)
    return not isPetToy[item.id] and item.subClassID and collectionIDs[item.subClassID] == item.classID
end

local petTrashCurrenies = {
    [3300] = true,
    [3670] = true,
    [6150] = true,
    [11406] = true,
    [11944] = true,
    [25402] = true,
    [36812] = true,
    [62072] = true,
    [67410] = true,
}

function INVENTORY:IsPetTrashCurrency(itemID)
    return petTrashCurrenies[itemID]
end

local function isItemCollection(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterCollection then
        return
    end

    return item.id and C_ToyBox.GetToyInfo(item.id) or isMountOrPet(item) or INVENTORY:IsPetTrashCurrency(item.id)
end

local function isItemCustom(item, index)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterFavourite then
        return
    end

    local customIndex = item.id and C.DB['Inventory']['CustomItemsList'][item.id]
    return customIndex and customIndex == index
end

local function isEmptySlot(item)
    if not C.DB.Inventory.CombineFreeSlots then
        return
    end

    return INVENTORY.initComplete and not item.texture and INVENTORY.BagsType[item.bagId] == 0
end

local function isTradeGoods(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterTradeGoods then
        return
    end

    if isCustomFilter(item) == false then
        return
    end

    return item.classID == Enum.ItemClass.Tradegoods
end

local function isQuestItem(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterQuestItem then
        return
    end

    return item.questID or item.isQuestItem
end

local function isAnimaItem(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterAnima then
        return
    end

    return item.id and C_Item.IsAnimaItemByID(item.id)
end

local relicSpellIDs = {
    [356931] = true,
    [356933] = true,
    [356934] = true,
    [356935] = true,
    [356936] = true,
    [356937] = true,
    [356938] = true,
    [356939] = true,
    [356940] = true,
}

local function isKorthiaRelicByID(itemID)
    local _, spellID = GetItemSpell(itemID)
    return spellID and relicSpellIDs[spellID]
end

local function isKorthiaRelic(item)
    if not C.DB.Inventory.ItemFilter then
        return
    end

    if not C.DB.Inventory.FilterRelic then
        return
    end

    return item.id and isKorthiaRelicByID(item.id)
end

function INVENTORY:GetFilters()
    local filters = {}

    filters.onlyBags = function(item)
        return isItemInBag(item) and not isEmptySlot(item)
    end

    filters.bagAzeriteItem = function(item)
        return isItemInBag(item) and isAzeriteArmor(item)
    end

    filters.bagEquipment = function(item)
        return isItemInBag(item) and isItemEquipment(item)
    end

    filters.bagEquipSet = function(item)
        return isItemInBag(item) and isItemEquipSet(item)
    end

    filters.bagConsumable = function(item)
        return isItemInBag(item) and isItemConsumable(item)
    end

    filters.bagsJunk = function(item)
        return isItemInBag(item) and isItemJunk(item)
    end

    filters.onlyBank = function(item)
        return isItemInBank(item) and not isEmptySlot(item)
    end

    filters.bankAzeriteItem = function(item)
        return isItemInBank(item) and isAzeriteArmor(item)
    end

    filters.bankLegendary = function(item)
        return isItemInBank(item) and isItemLegendary(item)
    end

    filters.bankEquipment = function(item)
        return isItemInBank(item) and isItemEquipment(item)
    end

    filters.bankEquipSet = function(item)
        return isItemInBank(item) and isItemEquipSet(item)
    end

    filters.bankConsumable = function(item)
        return isItemInBank(item) and isItemConsumable(item)
    end

    filters.onlyReagent = function(item)
        return item.bagId == -3 and not isEmptySlot(item)
    end

    filters.bagCollection = function(item)
        return isItemInBag(item) and isItemCollection(item)
    end

    filters.bankCollection = function(item)
        return isItemInBank(item) and isItemCollection(item)
    end

    filters.bagGoods = function(item)
        return isItemInBag(item) and isTradeGoods(item)
    end

    filters.bankGoods = function(item)
        return isItemInBank(item) and isTradeGoods(item)
    end

    filters.bagQuest = function(item)
        return isItemInBag(item) and isQuestItem(item)
    end

    filters.bankQuest = function(item)
        return isItemInBank(item) and isQuestItem(item)
    end

    filters.bagAnima = function(item)
        return isItemInBag(item) and isAnimaItem(item)
    end

    filters.bankAnima = function(item)
        return isItemInBank(item) and isAnimaItem(item)
    end

    filters.bagRelic = function(item)
        return isItemInBag(item) and isKorthiaRelic(item)
    end

    filters.onlyBagReagent = function(item)
        return isItemInBagReagent(item)
    end

    for i = 1, 5 do
        filters['bagCustom' .. i] = function(item)
            return isItemInBag(item) and isItemCustom(item, i)
        end
        filters['bankCustom' .. i] = function(item)
            return isItemInBank(item) and isItemCustom(item, i)
        end
    end

    return filters
end
