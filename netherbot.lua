-- Create the Main frame
local frame = CreateFrame("Frame", "NetherbotFrame", UIParent)
frame:SetSize(376, 84)
frame:SetPoint("CENTER", UIParent, "CENTER")
frame:SetBackdrop({
    bgFile = "Interface/Buttons/WHITE8X8",
    edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
    tile = true,
    tileSize = 16,
    edgeSize = 16,
    insets = {
        left = 4,
        right = 4,
        top = 4,
        bottom = 4
    }
})
frame:SetBackdropColor(0, 0, 0, 0.25)
frame:SetBackdropBorderColor(0, 0, 0, 1)
frame:SetMovable(true)
frame:EnableMouse(true)

local title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
title:SetPoint("TOP", frame, "TOP", 0, -8)
title:SetText("NetherBot - NPCBots工具")

-- Handle frame movement
frame:SetScript("OnMouseDown", function(self, button)
    if button == "LeftButton" then
        self:StartMoving()
    end
end)

-- Stop frame movement
frame:SetScript("OnMouseUp", function(self, button)
    if button == "LeftButton" then
        self:StopMovingOrSizing()
    end
end)


-- Create the adminFrame
local adminFrame = CreateFrame("Frame", "NetherbotAdminFrame", UIParent)
adminFrame:SetSize(168, 84)
adminFrame:SetPoint("RIGHT", frame, "LEFT", -8, 0)
adminFrame:SetBackdrop({
    bgFile = "Interface/Tooltips/UI-Tooltip-Background",
    edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
    tile = true,
    tileSize = 16,
    edgeSize = 16,
    insets = {
        left = 4,
        right = 4,
        top = 4,
        bottom = 4
    }
})
adminFrame:SetBackdropColor(0, 0, 0, 0.25) -- Set the background color to red and transparency to 20%.
adminFrame:SetBackdropBorderColor(0, 0, 0, 1)
adminFrame:Hide() -- hide the admin frame by default

local adminTitle = adminFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
adminTitle:SetPoint("TOP", adminFrame, "TOP", 0, -8)
adminTitle:SetText("管理")


-- Create the buttons
local adminButton = CreateFrame("Button", "NetherbotAdminButton", frame, "UIPanelButtonTemplate")
adminButton:SetSize(48, 24)
adminButton:SetPoint("TOPLEFT", frame, "TOPLEFT", 8, -26)
adminButton:SetText("管理")

local vehicleButton = CreateFrame("Button", "NetherbotVehicleButton", frame, "UIPanelButtonTemplate")
vehicleButton:SetSize(48, 24)
vehicleButton:SetPoint("TOP", adminButton, "BOTTOM", 0, -4)
vehicleButton:SetText("载具")

local showButton = CreateFrame("Button", "NetherbotShowButton", frame, "UIPanelButtonTemplate")
showButton:SetSize(48, 24)
showButton:SetPoint("LEFT", adminButton, "RIGHT", 4, 0)
showButton:SetText("显示")

local hideButton = CreateFrame("Button", "NetherbotHideButton", frame, "UIPanelButtonTemplate")
hideButton:SetSize(48, 24)
hideButton:SetPoint("LEFT", vehicleButton, "RIGHT", 4, 0)
hideButton:SetText("隐藏")

local distance1Button = CreateFrame("Button", "Netherbotdistance1Button", frame, "UIPanelButtonTemplate")
distance1Button:SetPoint("LEFT", showButton, "RIGHT", 4, 0)
distance1Button:SetSize(48, 24)
distance1Button:SetText("近距")

local distance2Button = CreateFrame("Button", "Netherbotdistance2Button", frame, "UIPanelButtonTemplate")
distance2Button:SetPoint("LEFT", hideButton, "RIGHT", 4, 0)
distance2Button:SetSize(48, 24)
distance2Button:SetText("远距")

local redemptionButton = CreateFrame("Button", "NetherbotRedemptionButton", frame, "UIPanelButtonTemplate")
redemptionButton:SetSize(48, 24)
redemptionButton:SetPoint("LEFT", distance1Button, "RIGHT", 4, 0)
redemptionButton:SetText("复活")

local killButton = CreateFrame("Button", "NetherbotKillButton", frame, "UIPanelButtonTemplate")
killButton:SetSize(48, 24)
killButton:SetPoint("LEFT", distance2Button, "RIGHT", 4, 0)
killButton:SetText("杀死")

local sendtoButton = CreateFrame("Button", "NetherbotSendto1Button", frame, "UIPanelButtonTemplate")
sendtoButton:SetPoint("LEFT", redemptionButton, "RIGHT", 4, 0)
sendtoButton:SetSize(48, 24)
sendtoButton:SetText("过去")

local pointsetButton = CreateFrame("Button", "NetherbotPointsetButton", frame, "UIPanelButtonTemplate")
pointsetButton:SetPoint("LEFT", killButton, "RIGHT", 4, 0)
pointsetButton:SetSize(48, 24)
pointsetButton:SetText("定点")

local followButton = CreateFrame("Button", "NetherbotFollowButton", frame, "UIPanelButtonTemplate")
followButton:SetPoint("LEFT", sendtoButton, "RIGHT", 4, 0)
followButton:SetSize(48, 24)
followButton:SetText("跟随")

local buttonRecall = CreateFrame("Button", "NetherbotButtonRecall", frame, "UIPanelButtonTemplate")
buttonRecall:SetSize(48, 24)
buttonRecall:SetPoint("LEFT", pointsetButton, "RIGHT", 4, 0)
buttonRecall:SetText("召回")

local standstillButton = CreateFrame("Button", "NetherbotStandstillButton", frame, "UIPanelButtonTemplate")
standstillButton:SetPoint("LEFT", followButton, "RIGHT", 4, 0)
standstillButton:SetSize(48, 24)
standstillButton:SetText("站立")

local fullstopButton = CreateFrame("Button", "NetherbotfullstopButton", frame, "UIPanelButtonTemplate")
fullstopButton:SetPoint("LEFT", buttonRecall, "RIGHT", 4, 0)
fullstopButton:SetSize(48, 24)
fullstopButton:SetText("停止")




-- Create Admin Buttons
local buttonBotinfo = CreateFrame("Button", "NetherbotButtonBotInfo", adminFrame, "UIPanelButtonTemplate")
buttonBotinfo:SetSize(48, 24)
buttonBotinfo:SetPoint("TOP", adminTitle, "BOTTOM", 0, -4)
buttonBotinfo:SetText("信息")

local buttonMove = CreateFrame("Button", "NetherbotButtonMove", adminFrame, "UIPanelButtonTemplate")
buttonMove:SetSize(48, 24)
buttonMove:SetPoint("TOP", buttonBotinfo, "BOTTOM", 0, -4)
buttonMove:SetText("移动")

local botLookupButton = CreateFrame("Button", "NetherbotBotLookupButton", adminFrame, "UIPanelButtonTemplate")
botLookupButton:SetSize(48, 24)
botLookupButton:SetPoint("RIGHT", buttonBotinfo, "LEFT", -4, 0)
botLookupButton:SetText("查找")

local buttonDelete = CreateFrame("Button", "NetherbotButtonDelete", adminFrame, "UIPanelButtonTemplate")
buttonDelete:SetSize(48, 24)
buttonDelete:SetPoint("RIGHT", buttonMove, "LEFT", -4, 0)
buttonDelete:SetText("删除")

local buttonAdd = CreateFrame("Button", "NetherbotButtonAdd", adminFrame, "UIPanelButtonTemplate")
buttonAdd:SetSize(48, 24)
buttonAdd:SetPoint("LEFT", buttonBotinfo, "RIGHT", 4, 0)
buttonAdd:SetText("雇佣")

local buttonRemove = CreateFrame("Button", "NetherbotButtonRemove", adminFrame, "UIPanelButtonTemplate")
buttonRemove:SetSize(48, 24)
buttonRemove:SetPoint("LEFT", buttonMove, "RIGHT", 4, 0)
buttonRemove:SetText("解雇")



-- Main Frame Button Functions:
followButton:SetScript("OnClick", function()
    SendChatMessage(".npcbot command follow", "CHANNEL", nil, 2)
end)

standstillButton:SetScript("OnClick", function()
    SendChatMessage(".npcbot command standstill", "CHANNEL", nil, 2)
end)

fullstopButton:SetScript("OnClick", function()
    SendChatMessage(".npcbot command stopfully", "CHANNEL", nil, 2)
end)

distance1Button:SetScript("OnClick", function()
    SendChatMessage(".npcbot distance attack short", "CHANNEL", nil, 2)
end)

distance2Button:SetScript("OnClick", function()
    SendChatMessage(".npcbot distance attack long", "CHANNEL", nil, 2)
end)

buttonRecall:SetScript("OnClick", function()
    SendChatMessage(".npcbot recall teleport", "CHANNEL", nil, 2)
end)

sendtoButton:SetScript("OnClick", function()
    SendChatMessage(".npcbot sendto point 1", "CHANNEL", nil, 2)
end)

pointsetButton:SetScript("OnClick", function()
    SendChatMessage(".npcbot sendto point set 1", "CHANNEL", nil, 2)
end)

showButton:SetScript("OnClick", function()
    SendChatMessage(".npcbot show", "CHANNEL", nil, 2)
end)

hideButton:SetScript("OnClick", function()
    SendChatMessage(".npcbot hide", "CHANNEL", nil, 2)
end)

killButton:SetScript("OnClick", function()
    SendChatMessage(".npcbot kill", "CHANNEL", nil, 2)
end)

redemptionButton:SetScript("OnClick", function()
    -- ChatFrame1:AddMessage(".npcbot revive")
    SendChatMessage(".npcbot revive", "CHANNEL", nil, 2)
end)

-- redemptionButton:SetScript("OnEnter", function(self)
--     GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
--     GameTooltip:SetText("复活NPCBots")
--     GameTooltip:Show()
-- end)

-- redemptionButton:SetScript("OnLeave", function(self)
--     GameTooltip:Hide()
-- end)

adminButton:SetScript("OnClick", function()
    if adminFrame:IsShown() then
        adminFrame:Hide()
    else
        adminFrame:Show()
    end
end)

vehicleButton:SetScript("OnClick", function()
    SendChatMessage(".npcbot vehicle eject", "CHANNEL", nil, 2)
end)



-- Admin Frame Button Functions
buttonAdd:SetScript("OnClick", function()
    local target = UnitName("target")
    if target then
        -- Target is selected, run command ".npcbot add target"
        ChatFrame1:AddMessage(".npcbot add " .. target)
        SendChatMessage(".npcbot add ", "CHANNEL", nil, 2)
    else
        -- Target is not selected, prompt input and run command ".npcbot add (input value)"
        StaticPopupDialogs["ADD_NPC"] = {
            text = "输入NPCBots ID:",
            button1 = "确定",
            button2 = "取消",
            hasEditBox = true,
            timeout = 0,
            whileDead = true,
            hideOnEscape = true,
            OnAccept = function(self)
                local npc = self.editBox:GetText()
                ChatFrame1:AddMessage(".npcbot add " .. npc)
                SendChatMessage(".npcbot add " .. npc, "CHANNEL", nil, 2)
            end
        }
        StaticPopup_Show("ADD_NPC")
    end
end)

buttonRemove:SetScript("OnClick", function()
    local target = UnitName("target")
    if target then
        -- Target is selected, run command ".npcbot remove target"
        ChatFrame1:AddMessage(".npcbot remove " .. target)
        SendChatMessage(".npcbot remove ", "CHANNEL", nil, 2)
    else
        -- Target is not selected, prompt input and run command ".npcbot remove (input value)"
        StaticPopupDialogs["REMOVE_NPC"] = {
            text = "输入NPCBots ID:",
            button1 = "确定",
            button2 = "取消",
            hasEditBox = true,
            timeout = 0,
            whileDead = true,
            hideOnEscape = true,
            OnAccept = function(self)
                local npc = self.editBox:GetText()
                ChatFrame1:AddMessage(".npcbot remove " .. npc)
                SendChatMessage(".npcbot remove " .. npc, "CHANNEL", nil, 2)
            end
        }
        StaticPopup_Show("REMOVE_NPC")
    end
end)

buttonBotinfo:SetScript("OnClick", function()
    SendChatMessage(".npcbot info", "CHANNEL", nil, 2)
    DoEmote("BONK")
end)

buttonMove:SetScript("OnClick", function()
    SendChatMessage(".npcbot move", "CHANNEL", nil, 2)
end)

buttonDelete:SetScript("OnClick", function()
    StaticPopupDialogs["CONFIRM_DELETE"] = {
        text = "确定要删除？",
        button1 = "是",
        button2 = "否",
        timeout = 0,
        whileDead = true,
        hideOnEscape = true,
        OnAccept = function()
            local target = UnitName("target")
            if target then
                -- Target is selected, run command ".npcbot delete target"
                ChatFrame1:AddMessage(".npcbot delete " .. target)
                SendChatMessage(".npcbot delete ", "CHANNEL", nil, 2)
            else
                -- Target is not selected, prompt input and run command ".npcbot delete (input value)"
                StaticPopupDialogs["DELETE_NPC"] = {
                    text = "输入NPCBots ID:",
                    button1 = "确定",
                    button2 = "取消",
                    hasEditBox = true,
                    timeout = 0,
                    whileDead = true,
                    hideOnEscape = true,
                    OnAccept = function(self)
                        local npc = self.editBox:GetText()
                        ChatFrame1:AddMessage(".npcbot delete " .. npc)
                        SendChatMessage(".npcbot delete " .. npc, "CHANNEL", nil, 2)
                    end
                }
                StaticPopup_Show("DELETE_NPC")
            end
        end
    }
    StaticPopup_Show("CONFIRM_DELETE")
end)

-- Create the lookup frame
local lookupFrame = CreateFrame("Frame", "NetherbotLookupFrame", UIParent)
lookupFrame:SetSize(224, 222)
lookupFrame:SetPoint("CENTER", UIParent, "CENTER")
lookupFrame:SetBackdrop({
    bgFile = "Interface/Tooltips/UI-Tooltip-Background",
    edgeFile = "Interface/Tooltips/UI-Tooltip-Border",
    tile = true,
    tileSize = 16,
    edgeSize = 16,
    insets = {
        left = 4,
        right = 4,
        top = 4,
        bottom = 4
    }
})
lookupFrame:SetBackdropColor(0, 0, 0, 0.25)
lookupFrame:SetBackdropBorderColor(0, 0, 0, 1)
lookupFrame:Hide()

local lookupTitle = lookupFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
lookupTitle:SetPoint("TOPLEFT", lookupFrame, "TOPLEFT", 8, -8)
lookupTitle:SetText("选择职业:")

-- -- Create the scrollframe for the list
-- local lookupScrollFrame = CreateFrame("ScrollFrame", "NetherbotLookupScrollFrame", lookupFrame,
--     "UIPanelScrollFrameTemplate")
-- lookupScrollFrame:SetPoint("TOPLEFT", lookupFrame, "TOPLEFT", 4, -25)
-- lookupScrollFrame:SetPoint("BOTTOMRIGHT", lookupFrame, "BOTTOMRIGHT", -4, 4)

-- -- Create the list frame
-- local lookupList = CreateFrame("Frame", "NetherbotLookupList", lookupScrollFrame)
-- lookupList:SetSize(lookupScrollFrame:GetWidth(), lookupScrollFrame:GetHeight())
-- lookupScrollFrame:SetScrollChild(lookupList)

-- Create the key-value store
local classTable = {
    ["战士"] = 1,
    ["圣骑士"] = 2,
    ["猎人"] = 3,
    ["潜行者"] = 4,
    ["牧师"] = 5,
    ["死亡骑士"] = 6,
    ["萨满祭司"] = 7,
    ["法师"] = 8,
    ["术士"] = 9,
    ["德鲁伊"] = 11,
    -- ["剑圣"] = 12,
    -- ["黑曜石毁灭者"] = 13,
    -- ["大法师"] = 14,
    -- ["恐惧魔王"] = 15,
    -- ["破法者"] = 16,
    -- ["黑暗游侠"] = 17,
    -- ["死灵法师"] = 18,
    -- ["海妖"] = 19
}

-- Create the buttons for the list items
for key, value in pairs(classTable) do
    local button = CreateFrame("Button", "NetherbotLookupButton" .. value, lookupFrame, "UIPanelButtonTemplate")
    button:SetSize(102, 22)
    local offset = value
    if offset > 10 then
        offset = offset - 1
    end
    if offset < 6 then
        button:SetPoint("TOPLEFT", lookupFrame, "TOPLEFT", 8, -26 - (offset - 1) * 30)
    else
        button:SetPoint("TOPLEFT", lookupFrame, "TOPLEFT", 114, -26 - (offset - 6) * 30)
    end
    button:SetText(key)
    -- button:GetNormalTexture():SetVertexColor(0.10, 1.00, 0.10)

    -- Handle the button's click event
    button:SetScript("OnClick", function()
        SendChatMessage(".npcbot lookup " .. value, "CHANNEL", nil, 2)
        -- You can add your custom functionality here like running a command or doing some other action
    end)
end

-- Create the "hideLookup" button
local hideLookupButton = CreateFrame("Button", "NetherbotHideLookupButton", lookupFrame, "UIPanelButtonTemplate")
hideLookupButton:SetSize(12, 12)
hideLookupButton:SetPoint("TOPRIGHT", lookupFrame, "TOPRIGHT", -8, -8)
-- hideLookupButton:SetNormalFontObject("GameFontNormal")
hideLookupButton:SetText("X")
hideLookupButton:SetNormalTexture("Interface/BUTTONS/WHITE8X8")
hideLookupButton:GetNormalTexture():SetVertexColor(0, 0, 0, 0.25)

-- -- Create the spawnFrame
-- local spawnFrame = CreateFrame("Frame", "NetherbotSpawnFrame", lookupFrame)
-- spawnFrame:SetSize(200, 60)
-- spawnFrame:SetPoint("BOTTOM", lookupFrame, "BOTTOM", 0, -70)
-- spawnFrame:SetBackdrop({
--     bgFile = "Interface/BUTTONS/WHITE8X8",
--     edgeFile = "Interface/BUTTONS/WHITE8X8",
--     edgeSize = 1,
--     insets = {
--         left = 0,
--         right = 0,
--         top = 0,
--         bottom = 0
--     }
-- })
-- spawnFrame:SetBackdropColor(0, 0, 0, 0.25)
-- spawnFrame:SetBackdropBorderColor(0, 0, 0, 1)

-- Create the title
local spawnTitle = lookupFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
spawnTitle:SetPoint("TOPLEFT", lookupFrame, "TOPLEFT", 8, -172)
spawnTitle:SetText("输入要生成NPCBots ID:")

-- Create the "buttonSpawnBot" button
local buttonSpawnBot = CreateFrame("Button", "NetherbotButtonSpawnBot", lookupFrame, "UIPanelButtonTemplate")
buttonSpawnBot:SetSize(80, 22)
buttonSpawnBot:SetPoint("TOPLEFT", lookupFrame, "TOPLEFT", 125, -192)
buttonSpawnBot:SetText("生成")
-- buttonSpawnBot:GetNormalTexture():SetVertexColor(0.10, 1.00, 0.10)

-- Create the "classInput" input box
local classInput = CreateFrame("EditBox", "NetherbotClassInput", lookupFrame, "InputBoxTemplate")
classInput:SetSize(96, 22)
classInput:SetPoint("TOPRIGHT", buttonSpawnBot, "TOPLEFT", -4, 0)
classInput:SetAutoFocus(false)

-- Handle the buttons click event
buttonSpawnBot:SetScript("OnClick", function()
    local input = classInput:GetText()
    if input ~= "" then
        SendChatMessage(".npcbot spawn " .. input, "GUILD")
        classInput:SetText("")
        classInput:ClearFocus()
    else
        print("请输入ID:")
    end
end)

-- Handle Lookup buttons click event
hideLookupButton:SetScript("OnClick", function()
    lookupFrame:Hide()
end)

-- Handle the Lookup buttons click event
botLookupButton:SetScript("OnClick", function()
    if lookupFrame:IsShown() then
        lookupFrame:Hide()
    else
        lookupFrame:Show()
    end
end)

-- Handle lookupframe movement
-- Make the frame movable
lookupFrame:SetMovable(true)
lookupFrame:EnableMouse(true)

lookupFrame:SetScript("OnMouseDown", function(self, button)
    if button == "LeftButton" then
        self:StartMoving()
    end
end)

-- Stop lookupframe movement.
lookupFrame:SetScript("OnMouseUp", function(self, button)
    if button == "LeftButton" then
        self:StopMovingOrSizing()
    end
end)

-- Slash command to show-hide netherbot.
SLASH_NETHERBOT1 = "/netherbot"
function SlashCmdList.NETHERBOT(msg, editbox)
    if msg == "show" then
        frame:Show()
    elseif msg == "hide" then
        frame:Hide()
        adminFrame:Hide()
        lookupFrame:Hide()
    end
end
