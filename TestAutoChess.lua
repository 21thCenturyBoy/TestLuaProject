------------------Action
local workSpace = GetService("Workspace")
local runService = GetService("RunService")
local playersList = GetService("PlayersList")
local tweenService = GetService("TweenService")
local playerInputService = GetService("PlayerInputService")

runService.Update:Connect(function(delta)
    GameSystem:Instance():Tick(delta)
end)

--#region 自动生成场景
--------------------------------------------------------------- 自动生成场景物体
SceneObjectTable = {
    gamemenupanel_ = nil,
    Get_GameMenuPanel = function(o)
        if o.gamemenupanel_ == nil then o.gamemenupanel_ = SceneObjectTable:Get_PlayerUI():GetChildByName("GameMenuPanel") end
        return o.gamemenupanel_
    end,
    gamestartbutton_ = nil,
    Get_GameStartButton = function(o)
        if o.gamestartbutton_ == nil then o.gamestartbutton_ = SceneObjectTable:Get_GameMenuPanel():GetChildByName("GameStartButton") end
        return o.gamestartbutton_
    end,
    gamepausebutton_ = nil,
    Get_GamePauseButton = function(o)
        if o.gamepausebutton_ == nil then o.gamepausebutton_ = SceneObjectTable:Get_GameMenuPanel():GetChildByName("GamePauseButton") end
        return o.gamepausebutton_
    end,
    gamestopbutton_ = nil,
    Get_GameStopButton = function(o)
        if o.gamestopbutton_ == nil then o.gamestopbutton_ = SceneObjectTable:Get_GameMenuPanel():GetChildByName("GameStopButton") end
        return o.gamestopbutton_
    end,
    gameuipanel_ = nil,
    Get_GameUIPanel = function(o)
        if o.gameuipanel_ == nil then o.gameuipanel_ = SceneObjectTable:Get_PlayerUI():GetChildByName("GameUIPanel") end
        return o.gameuipanel_
    end,
    timeslider_ = nil,
    Get_TimeSlider = function(o)
        if o.timeslider_ == nil then o.timeslider_ = SceneObjectTable:Get_GameUIPanel():GetChildByName("TimeSlider") end
        return o.timeslider_
    end,
    usercontent_ = nil,
    Get_UserContent = function(o)
        if o.usercontent_ == nil then o.usercontent_ = SceneObjectTable:Get_GameUIPanel():GetChildByName("UserContent") end
        return o.usercontent_
    end,
    usercontent_usermoneypanel_ = nil,
    Get_UserContent_UserMoneyPanel = function(o)
        if o.usercontent_usermoneypanel_ == nil then o.usercontent_usermoneypanel_ = SceneObjectTable:Get_UserContent():GetChildByName("UserMoneyPanel") end
        return o.usercontent_usermoneypanel_
    end,
    usercontent_usermoneypanel_cointext_ = nil,
    Get_UserContent_UserMoneyPanel_CoinText = function(o)
        if o.usercontent_usermoneypanel_cointext_ == nil then o.usercontent_usermoneypanel_cointext_ = SceneObjectTable:Get_UserContent_UserMoneyPanel():GetChildByName("CoinText") end
        return o.usercontent_usermoneypanel_cointext_
    end,
    usercontent_usermoneypanel_refreshbutton_ = nil,
    Get_UserContent_UserMoneyPanel_RefreshButton = function(o)
        if o.usercontent_usermoneypanel_refreshbutton_ == nil then o.usercontent_usermoneypanel_refreshbutton_ = SceneObjectTable:Get_UserContent_UserMoneyPanel():GetChildByName("RefreshButton") end
        return o.usercontent_usermoneypanel_refreshbutton_
    end,
    usercontent_usermoneypanel_uihorizontallayout_ = nil,
    Get_UserContent_UserMoneyPanel_UIHorizontalLayout = function(o)
        if o.usercontent_usermoneypanel_uihorizontallayout_ == nil then o.usercontent_usermoneypanel_uihorizontallayout_ = SceneObjectTable:Get_UserContent_UserMoneyPanel():GetChildByName("UIHorizontalLayout") end
        return o.usercontent_usermoneypanel_uihorizontallayout_
    end,
    usercontent_usermoneypanel_accrualtext_ = nil,
    Get_UserContent_UserMoneyPanel_AccrualText = function(o)
        if o.usercontent_usermoneypanel_accrualtext_ == nil then o.usercontent_usermoneypanel_accrualtext_ = SceneObjectTable:Get_UserContent_UserMoneyPanel():GetChildByName("AccrualText") end
        return o.usercontent_usermoneypanel_accrualtext_
    end,
    usercontent_storeitemcontent_ = nil,
    Get_UserContent_StoreItemContent = function(o)
        if o.usercontent_storeitemcontent_ == nil then o.usercontent_storeitemcontent_ = SceneObjectTable:Get_UserContent():GetChildByName("StoreItemContent") end
        return o.usercontent_storeitemcontent_
    end,
    usercontent_storeitemcontent_storeitemprefab_ = nil,
    Get_UserContent_StoreItemContent_StoreItemPrefab = function(o)
        if o.usercontent_storeitemcontent_storeitemprefab_ == nil then o.usercontent_storeitemcontent_storeitemprefab_ = SceneObjectTable:Get_UserContent_StoreItemContent():GetChildByName("StoreItemPrefab") end
        return o.usercontent_storeitemcontent_storeitemprefab_
    end,
    usercontent_storeitemcontent_uigridlayout_ = nil,
    Get_UserContent_StoreItemContent_UIGridLayout = function(o)
        if o.usercontent_storeitemcontent_uigridlayout_ == nil then o.usercontent_storeitemcontent_uigridlayout_ = SceneObjectTable:Get_UserContent_StoreItemContent():GetChildByName("UIGridLayout") end
        return o.usercontent_storeitemcontent_uigridlayout_
    end,
    usercontent_userexppanel_ = nil,
    Get_UserContent_UserExpPanel = function(o)
        if o.usercontent_userexppanel_ == nil then o.usercontent_userexppanel_ = SceneObjectTable:Get_UserContent():GetChildByName("UserExpPanel") end
        return o.usercontent_userexppanel_
    end,
    usercontent_userexppanel_buyexpbutton_ = nil,
    Get_UserContent_UserExpPanel_BuyExpButton = function(o)
        if o.usercontent_userexppanel_buyexpbutton_ == nil then o.usercontent_userexppanel_buyexpbutton_ = SceneObjectTable:Get_UserContent_UserExpPanel():GetChildByName("BuyExpButton") end
        return o.usercontent_userexppanel_buyexpbutton_
    end,
    usercontent_userexppanel_exptext_ = nil,
    Get_UserContent_UserExpPanel_ExpText = function(o)
        if o.usercontent_userexppanel_exptext_ == nil then o.usercontent_userexppanel_exptext_ = SceneObjectTable:Get_UserContent_UserExpPanel():GetChildByName("ExpText") end
        return o.usercontent_userexppanel_exptext_
    end,
    usercontent_userexppanel_expslider_ = nil,
    Get_UserContent_UserExpPanel_ExpSlider = function(o)
        if o.usercontent_userexppanel_expslider_ == nil then o.usercontent_userexppanel_expslider_ = SceneObjectTable:Get_UserContent_UserExpPanel():GetChildByName("ExpSlider") end
        return o.usercontent_userexppanel_expslider_
    end,
    userlistcontent_ = nil,
    Get_UserListContent = function(o)
        if o.userlistcontent_ == nil then o.userlistcontent_ = SceneObjectTable:Get_GameUIPanel():GetChildByName("UserListContent") end
        return o.userlistcontent_
    end,
    userlistcontent_usertext_ = nil,
    Get_UserListContent_UserText = function(o)
        if o.userlistcontent_usertext_ == nil then o.userlistcontent_usertext_ = SceneObjectTable:Get_UserListContent():GetChildByName("UserText") end
        return o.userlistcontent_usertext_
    end,
    itemprefab_ = nil,
    Get_ItemPrefab = function(o)
        if o.itemprefab_ == nil then o.itemprefab_ = SceneObjectTable:Get_Workspace():GetChildByName("ItemPrefab") end
        return o.itemprefab_
    end,
    billboardgui_ = nil,
    Get_BillBoardGUI = function(o)
        if o.billboardgui_ == nil then o.billboardgui_ = SceneObjectTable:Get_ItemPrefab():GetChildByName("BillBoardGUI") end
        return o.billboardgui_
    end,
    billboardgui_uitext_ = nil,
    Get_BillBoardGUI_UIText = function(o)
        if o.billboardgui_uitext_ == nil then o.billboardgui_uitext_ = SceneObjectTable:Get_BillBoardGUI():GetChildByName("UIText") end
        return o.billboardgui_uitext_
    end,
}

---------------------------------------------------------------
SceneObjectTable.playerui_ = nil
SceneObjectTable.Get_PlayerUI = function(o)
    if o.playerui_ == nil then o.playerui_ = playersList:GetChildByName("Player"):GetChildByName("PlayerUI") end
    return o.playerui_
end
SceneObjectTable.Get_Workspace = function(o)
    return workSpace
end
SceneObjectTable.tileHex_prefab_ = nil
SceneObjectTable.Get_TileHex_Prefab = function(o)
    if o.tileHex_prefab_ == nil then o.tileHex_prefab_ = SceneObjectTable:Get_Workspace():GetChildByName("TileHex_Prefab") end
    return o.tileHex_prefab_
end
SceneObjectTable.handItem_prefab_ = nil
SceneObjectTable.Get_HandItem_Prefab = function(o)
    if o.handItem_prefab_ == nil then o.handItem_prefab_ = SceneObjectTable:Get_Workspace():GetChildByName("HandItem_Prefab") end
    return o.handItem_prefab_
end
SceneObjectTable.chessItem_prefab_ = nil
SceneObjectTable.Get_ChessItem_Prefab = function(o)
    if o.chessItem_prefab_ == nil then o.chessItem_prefab_ = SceneObjectTable:Get_Workspace():GetChildByName("ChessItem_Prefab") end
    return o.chessItem_prefab_
end

--#endregion

--#region 状态机



Action = {}

Action.Status = {
    UNINIIALIZED = "UNINIIALIZED",
    RUNNING = "RUNNING",
    TERMINATED = "TERMINATED",
}

Action.Type = "Action"


function Action.new(name, initializeFunction, updateFunction, cleanUpFunction, userData)

    local action = {}

    action.cleanUpFunction_ = cleanUpFunction
    action.initializeFunction_ = initializeFunction
    action.updateFunction_ = updateFunction
    action.name_ = name or ""
    action.status_ = Action.Status.UNINIIALIZED
    action.type_ = Action.Type
    action.userData_ = userData

    action.CleanUp = Action.CleanUp
    action.Initialize = Action.Initialize
    action.Update = Action.Update

    return action
end

function Action.Initialize(self)
    if self.status_ == Action.Status.UNINIIALIZED then
        if self.initializeFunction_ then
            self.initializeFunction_(self.userData_)
        end
    end

    self.status_ = Action.Status.RUNNING
end


function Action.Update(self, deltaTimeInMillis)
    if self.status_ == Action.Status.TERMINATED then
        return Action.Status.TERMINATED
    elseif self.status_ == Action.Status.RUNNING then
        if self.updateFunction_ then
            self.status_ = self.updateFunction_(deltaTimeInMillis, self.userData_)

            assert(self.status_)
        else
            self.status_ = Action.Status.TERMINATED
        end
    end

    return self.status_

end
function Action.CleanUp(self)
    if self.status_ == Action.Status.TERMINATED then
        if self.cleanUpFunction_ then
            self.cleanUpFunction_(self.userData_)
        end
    end

    self.status_ = Action.Status.UNINIIALIZED
end


------------------FiniteState

FiniteState = {}

function FiniteState.new(name, action)
    local state = {}
    -- 状态的数据
    state.name_ = name
    state.action_ = action

    return state
end



------------------FiniteStateTransition
FiniteStateTransition = {}

function FiniteStateTransition.new(toStateName, evaluator)
    local transition = {}

    -- 状态转换条件的数据
    transition.evaluator_ = evaluator
    transition.toStateName_ = toStateName

    return transition
end


------------------FiniteStateMachine

FiniteStateMachine = {}

function FiniteStateMachine.new(userData)
    local fsm = {}

    -- 状态机的数据
    fsm.currentState_ = nil
    fsm.states_ = {}
    fsm.transition_ = {}
    fsm.userData_ = userData

    fsm.AddState = FiniteStateMachine.AddState
    fsm.AddTransition = FiniteStateMachine.AddTransition
    fsm.ContainState = FiniteStateMachine.ContainState
    fsm.ContainTransition = FiniteStateMachine.ContainTransition
    fsm.GetCurrentStateName = FiniteStateMachine.GetCurrentStateName
    fsm.GetCurrentStateStatus = FiniteStateMachine.GetCurrentStateStatus
    fsm.SetState = FiniteStateMachine.SetState
    fsm.Update = FiniteStateMachine.Update

    return fsm
end


function FiniteStateMachine.ContainState(self, stateName)
    return self.states_[stateName] ~= nil
end

function FiniteStateMachine.ContainTransition(self, fromStateName, toStateName)
    return self.transition_[fromStateName] ~= nil and
    self.transition_[fromStateName][toStateName] ~= nil
end

function FiniteStateMachine.GetCurrentStateName(self)
    if self.currentState_ then
        return self.currentState_.name_
    end
end

function FiniteStateMachine.GetCurrentStateStatus(self)
    if self.currentState_ then
        return self.currentState_.action_.status_
    end
end


function FiniteStateMachine.SetState(self, stateName)
    if self:ContainState(stateName) then
        if self.currentState_ then
            self.currentState_.action_:CleanUp()
        end

        self.currentState_ = self.states_[stateName]
        self.currentState_.action_:Initialize()
    end
end
function FiniteStateMachine.AddState(self, name, action)
    self.states_[name] = FiniteState.new(name, action)
end

function FiniteStateMachine.AddTransition(self, fromStateName, toStateName, evaluator)
    if self:ContainState(fromStateName) and
    self:ContainState(toStateName) then

        if self.transition_[fromStateName] == nil then
            self.transition_[fromStateName] = {}
        end

        table.insert(
        self.transition_[fromStateName],
        FiniteStateTransition.new(toStateName, evaluator)
        )

    end
end
local function EvaluateTransitions(self, transitions)
    for index = 1, #transitions do
        if transitions[index].evaluator_(self.userData_) then
            return transitions[index].toStateName_;
        end
    end
end
function FiniteStateMachine.Update(self, deltaTimeInMillis)
    if self.currentState_ then
        local status = self:GetCurrentStateStatus()

        if status == Action.Status.RUNNING then
            self.currentState_.action_:Update(deltaTimeInMillis)
        elseif status == Action.Status.TERMINATED then
            local toStateName = EvaluateTransitions(self, self.transition_[self.currentState_.name_])

            if self.states_[toStateName] ~= nil then
                self.currentState_.action_:CleanUp()
                self.currentState_ = self.states_[toStateName]
                self.currentState_.action_:Initialize()
            end
        end
    end
end

--#region 测试代码
----------------------------------------测试

-- timer = 0
-- function SoldierActions_IdleCleanUp(userData)
--     -- print("SoldierActions_IdleCleanUp data is " .. userData)
--     timer = 0
-- end

-- function SoldierActions_IdleInitialize(userData)
--     -- print("SoldierActions_IdleInitialize data is " .. userData)
--     timer = 0
-- end

-- function SoldierActions_IdleUpdate(deltaTimeInMillis, userData)
--     -- print("SoldierActions_IdleUpdate data is " .. deltaTimeInMillis)

--     timer = (timer + deltaTimeInMillis)
--     if timer > 3 then
--         return Action.Status.TERMINATED
--     end

--     return Action.Status.RUNNING
-- end


-- function SoldierActions_DieCleanUp(userData)
--     -- print("SoldierActions_DieCleanUp data is " .. userData)
--     timer = 0
-- end

-- function SoldierActions_DieInitialize(userData)
--     -- print("SoldierActions_DieInitialize data is " .. userData)
--     timer = 0
-- end

-- function SoldierActions_DieUpdate(deltaTimeInMillis, userData)
--     -- print("SoldierActions_DieUpdate data is " .. userData)
--     timer = (timer + deltaTimeInMillis)
--     if timer > 3 then
--         return Action.Status.TERMINATED
--     end

--     return Action.Status.RUNNING
-- end
-- -------------------------------------
-- --转换条件
-- function SoldierEvaluators_True(userData)
--     print("SoldierEvaluators_True data is " .. userData)
--     return true
-- end

-- function SoldierEvaluators_False(userData)
--     print("SoldierEvaluators_True data is " .. userData)
--     return false
-- end

-- --------------------------------------

-- local function IdleAction(userData)
--     return Action.new(
--     "idle",
--     SoldierActions_IdleInitialize,
--     SoldierActions_IdleUpdate,
--     SoldierActions_IdleCleanUp,
--     userData
--     )
-- end


-- local function DieAction(userData)
--     return Action.new(
--     "die",
--     SoldierActions_DieInitialize,
--     SoldierActions_DieUpdate,
--     SoldierActions_DieCleanUp,
--     userData
--     )
-- end

-- local stateInput =false;
-- function SoldierLogic_FiniteStateMachine(userData)
--     local fsm = FiniteStateMachine.new(userData)
--     fsm:AddState("idle", IdleAction(userData))
--     fsm:AddState("die", DieAction(userData))

--     fsm:AddTransition("idle", "die", function()    return stateInput == true end)
--     fsm:AddTransition("die", "idle", function()    return fsm:GetCurrentStateStatus() == Action.Status.TERMINATED end)

--     fsm:SetState('idle')

--     return fsm
-- end

---------------------------------测试
-- local st = SoldierLogic_FiniteStateMachine(stateInput)
-- GetService("RunService").Update:Connect(function(delta)
--     local a = GetService("PlayerInputService"):IsKeyDown(Enum.KeyCode.E)
--     if stateInput ~= a then
--         stateInput = a
--     end
--     st:Update(delta)
-- end)

-- while true do
--   wait(1)
--   if st ~= nil then
--     print( st:GetCurrentStateName() .. st:GetCurrentStateStatus())
--     end
-- end
--#endregion


--#endregion

--#region 通用数据结构

SystemStatus = {
    UNINIIALIZED = "UNINIIALIZED", --未初始化
    INIIALIZED = "INIIALIZED", --初始化
    RUNNING = "RUNNING", --运行中
    SUSPEND = "SUSPEND", --挂起中断
    TERMINATED = "TERMINATED", --终止
}

ChessDataPool = {}
function ChessDataPool.StashObject(obj)
    if not ChessDataPool[obj.id_] then
        ChessDataPool[obj.id_] = obj
    end
end
function ChessDataPool.PopObject(Id)
    return ChessDataPool[Id]
end
function ChessDataPool.ReleaseObject(obj)
    if ChessDataPool[obj.id_] then
        ChessDataPool[obj.id_] = nil
    end
end

ChessData = {}
ChessData.CareerType = {
    [0] = nil,
    [1] = "CareerA",
    [2] = "CareerB",
    [3] = "CareerC",
}
ChessData.TalentType = {
    [0] = nil,
    [1] = "TalentA",
    [2] = "TalentB",
    [3] = "TalentC",
}
ChessData.Status = {
    PRODUCT_CARD = "PRODUCT",
    COMBAT_ACTOR = "COMBAT",
}
ChessData.PRODUCT_Status = {
    SHOW = "SHOW",
    STORAGE = "STORAGE",
}
ChessData.TempID = 0
ChessData.MaxStar = 5
ChessData.MinStar = 1

function ChessData:new(star, basicsHP, basicsMP, basicsA,    career, talent, attackFunc, skillFunc, modelData)
    local o = {}
    o.star_ = star

    o.basicsHP_ = basicsHP
    o.basicsMP_ = basicsMP
    o.basicsA_ = basicsA

    o.career_ = career        --职业
    o.talent_ = talent        --天赋

    o.DoSkillFunc = skillFunc
    o.DoAttackFunc = attackFunc

    o.modelData_ = modelData

    o.GetTotalValue = function(data)
        return data.star_
    end
    o.GetSaleValue = function(data)
        return data:GetTotalValue()
    end
    o.GetModelData = function(data)
        return data.modelData_
    end

    ChessData.TempID =    ChessData.TempID + 1
    o.id_ = ChessData.TempID
    ChessDataPool.StashObject(o)

    setmetatable(o, self)

    self.__tostring = function(t)
        return "{ChessData}[" .. "Id:" .. t.id_ .. "|star:" .. t.star_ .. "|ModelData:" .. tostring(t.modelData_) .. "]"
    end
    self.__index = self
    return o
end
ModelData = {}
ModelData.DataType = {
    [0] = nil,
    [1] = "Texture2D",
    [2] = "Model3D"
}
function ModelData:new(type, resId, getModel3DFuc)
    local o = {}

    o.type_ = type
    o.resId_ = resId

    o.GetModel3D = getModel3DFuc

    setmetatable(o, self)
    self.__tostring = function(t)
        return "{ModelData}[" .. "Type:" .. t.type_ .. "|ResId:" .. t.resId_ .. "]"
    end
    self.__index = self
    return o
end
Chess = {}
ChessPool = {
    Pool = {}
}
ChessPool.TempID = 0
function Chess:new(data)
    local o = {}

    o.data_ = data
    o.level_ = 1

    o.type_ = "Chess"
    setmetatable(o, self)

    ChessPool.TempID = ChessPool.TempID + 1
    o.id_ = ChessPool.TempID
    table.insert(ChessPool.Pool, o)

    self.__tostring = function(t)
        return "{Chess}[Level:" .. t.level_ .. "," .. "Data:" .. tostring(t.data_) .. "]"
    end
    self.__index = self
    return o
end

HoneycombV2 = {}
function HoneycombV2:new(x, y)
    local o = {}

    o.x_ = x
    o.y_ = y

    o.GetNeighbors = function(point)
        local vector2s = {};
        vector2s[1] = HoneycombV2:new(point.x_ + 2, point.y_);
        vector2s[2] = HoneycombV2:new(point.x_ + 1, point.y_ + 1);
        vector2s[3] = HoneycombV2:new(point.x_ - 1, point.y_ + 1);
        vector2s[4] = HoneycombV2:new(point.x_ - 2, point.y_);
        vector2s[5] = HoneycombV2:new(point.x_ - 1, point.y_ - 1);
        vector2s[6] = HoneycombV2:new(point.x_ + 1, point.y_ - 1);
        return vector2s
    end

    o.GetCoordinate = function(point)
        local co = {};

        if point.x_ % 2 == 1 then
            co.x = math.floor((point.x_ + 1) / 2)
        else
            co.x = math.floor(point.x_ / 2)
        end
        co.y = point.y_
        return co
    end
    setmetatable(o, self)
    self.__tostring = function(t)
        return "[" .. tostring(t.x_) .. "," .. tostring(t.y_) .. "]"
    end
    self.__index = self
    return o
end

Resultrecord = {
    TempID = 0
}
function Resultrecord:new(wheel, userA, userB, mainIsWin, lostHarm)
    local o = {}

    o.wheel_ = wheel
    o.userA_ = userA
    o.userB_ = userB
    o.mainIsWin_ = mainIsWin
    o.lostHarm_ = lostHarm

    Resultrecord.TempID = Resultrecord.TempID + 1
    o.id_ = Resultrecord.TempID
    setmetatable(o, self)

    self.__tostring = function(t)
        return "{Resultrecord}[" .. "id:" .. t.id_ .. "]"
    end
    self.__index = self
    return o
end
--#endregion

--#region BusinessSystem
local BusinessSystem = {
    MaxHandCount = 10,
}

function BusinessSystem:new()

    local sys = {}
    sys.playerid_ = nil

    sys.store_ = nil            --仓库个数

    sys.config_ = nil
    sys.levelprobability_ = nil
    sys.levelExpTable_ = nil

    sys.playerhand_ = {}        --玩家手牌表
    sys.playershop_ = {}        --玩家商店表
    sys.playerExp_ = {}        --玩家经验

    sys.ReadConfig = function(b)
        ---TODO 读取配置表
        math.randomseed(os.time())
        b.config_ = {}
        for i = 1, 5 do

            local star = i
            local basicsHP = math.floor(400 + math.random() * 200)
            local basicsMP = math.floor(300 + math.random() * 200)
            local basicsA = math.floor(100 + math.random() * 50)
            local career = math.random(1, 3)
            local talent = math.random(1, 3)

            local attackFunc = function(target, targets)
            end
            local skillFunc = function(target, targets)
            end
            local modelData = ModelData:new(ModelData.DataType[1], tostring(math.floor(math.random(1000000000))))
            local cd = ChessData:new(star, basicsHP, basicsMP, basicsA, career, talent, attackFunc, skillFunc, modelData)
            b.config_[cd.id_] = cd
        end
        for i = 6, 10 do

            local star = math.random(ChessData.MinStar, ChessData.MaxStar)
            local basicsHP = math.floor(400 + math.random() * 200)
            local basicsMP = math.floor(300 + math.random() * 200)
            local basicsA = math.floor(100 + math.random() * 50)
            local career = math.random(1, 3)
            local talent = math.random(1, 3)

            local attackFunc = function(target, targets)
            end
            local skillFunc = function(target, targets)
            end
            local modelData = ModelData:new(ModelData.DataType[1], tostring(math.floor(math.random(1000000000))))
            local cd = ChessData:new(star, basicsHP, basicsMP, basicsA, career, talent, attackFunc, skillFunc, modelData)
            b.config_[cd.id_] = cd
        end

        b.levelprobability_ = {}
        b.levelprobability_[1] = { 1, 0, 0, 0, 0 }
        b.levelprobability_[2] = { 1, 0, 0, 0, 0 }
        b.levelprobability_[3] = { 0.7, 0.3, 0, 0, 0 }
        b.levelprobability_[4] = { 0.55, 0.3, 0.15, 0, 0 }
        b.levelprobability_[5] = { 0.4, 0.3, 0.25, 0.05, 0 }
        b.levelprobability_[6] = { 0.245, 0.35, 0.3, 0.01, 0.005 }
        b.levelprobability_[7] = { 0.2, 0.3, 0.33, 0.15, 0.02 }
        b.levelprobability_[8] = { 0.15, 0.25, 0.35, 0.2, 0.05 }
        b.levelprobability_[9] = { 0.1, 0.15, 0.35, 0.3, 0.1 }

        b.levelExpTable_ = {}
        b.levelExpTable_["delta_"] = 1
        b.levelExpTable_["cost_"] = 4
        b.levelExpTable_[1] = 1
        b.levelExpTable_[2] = 2
        b.levelExpTable_[3] = 6
        b.levelExpTable_[4] = 10
        b.levelExpTable_[5] = 20
        b.levelExpTable_[6] = 36
        b.levelExpTable_[7] = 56
        b.levelExpTable_[8] = 80

    end

    sys.GenerateLocalStore = function(b)
        --生成商店仓库,数据
        local st = {}
        for index, value in pairs(b.config_) do
            --级别越低，个数越多
            local num = (ChessData.MaxStar - value.star_ + 1) * 15
            st[index] = num
        end
        sys.store_ = st
    end

    sys.AddPlayerShop = function(b, player)
        b.playershop_[player.uid_] = {}
        b.playerhand_[player.uid_] = {}
        b.playerExp_[player.uid_] = 0
    end
    sys.RemovePlayerShop = function(b, player)
        b.playershop_[player.uid_] = nil
        b.playerhand_[player.uid_] = nil
        b.playerExp_[player.uid_] = nil
    end
    sys.UserRefreshStore = function(b, player)
        --TODO 计算花费
        local cost = 2
        local newcoin = player.coin_ - cost
        local res = newcoin >= 0

        if res == false then return b end

        player:SetCoin(newcoin)

        b:RefreshStore(player)
        return b
    end
    --刷新商店
    sys.RefreshStore = function(b, player)
        --商店退还没有下架棋子商品
        b:SoldOutChessToShop(player)

        local list = b:ShowChessToShop(player)
        GameEvent:Broadcast(GameEvent.Define.BusinessEvent_OnShowShop, list, player)
    end
    --从商店买棋子
    sys.BuyChessToShop = function(b, player, index, chess)
        local cost = chess.data_.star_
        local newcoin = player.coin_ - cost
        local res = newcoin >= 0
        if res == false then
            GameEvent:Broadcast(GameEvent.Define.BusinessEvent_OnBuyChess, false, player, index, chess)
            return b
        end

        --#region 计算合卡
        local mergetable, mergelevel = b:IsComputeMergeCard(player, chess)
        if mergetable ~= nil then

            --升级的卡
            local newChess = Chess:new(chess.data_)
            newChess.level_ = mergelevel

            for key, value in pairs(mergetable) do
                b:PlayerDeleteHand(player, key)
            end
            res = b:PlayerAddHand(player, newChess)
            if res then
                player:SetCoin(newcoin)--扣钱

                local shop = b.playershop_[player.uid_]
                shop[index] = nil
            end
            --商店置空
            GameEvent:Broadcast(GameEvent.Define.BusinessEvent_OnBuyChess, res, player, index, chess)

        else
            res = b:PlayerAddHand(player, chess)
            if res then
                player:SetCoin(newcoin)--扣钱

                local shop = b.playershop_[player.uid_]
                shop[index] = nil
            end
            GameEvent:Broadcast(GameEvent.Define.BusinessEvent_OnBuyChess, res, player, index, chess)
        end
        --#endregion
        return b
    end
    --计算手牌合卡
    sys.IsComputeMergeCard = function(b, player, chess)
        local mtable = nil
        local level = 1                         --当前计算合卡等级
        local dataid = chess.data_.id_          --哪种
        local function compute(currentlevel, mt)
            -- body
            local temp = {}
            local num = 0
            for i = 1, BusinessSystem.MaxHandCount, 1 do
                local current = b.playerhand_[player.uid_][i]
                if current ~= nil then
                    if current.level_ == currentlevel and current.data_.id_ == dataid then
                        temp[i] = current
                        num = num + 1
                        if num == 2 then
                            if mt == nil then mt = {} end
                            for key, value in pairs(temp) do
                                mt[key] = value
                            end
                            return true, mt, currentlevel
                        end
                    end
                end
            end
            return false, mt, currentlevel
        end
        local function computeloop(initlevel, mt)
            local res, mt, currentLevel = compute(initlevel, mt)
            if res then
                currentLevel = currentLevel + 1
                return computeloop(currentLevel, mt)
            else
                return mt, currentLevel    --最终计算等级和表
            end
        end
        return computeloop(level, mtable)
    end
    --玩家添加手牌
    sys.PlayerAddHand = function(b, player, chess)
        local existEmpty, index = b:PlayerHandExistEmpty(player)
        if existEmpty then
            b.playerhand_[player.uid_][index] = chess
            GameEvent:Broadcast(GameEvent.Define.BusinessEvent_OnPlayerHandAdd, player, index, chess)
        end
        return existEmpty
    end
    --删除玩家手牌
    sys.PlayerDeleteHand = function(b, player, index)
        local chess = b.playerhand_[player.uid_][index]
        b.playerhand_[player.uid_][index] = nil
        GameEvent:Broadcast(GameEvent.Define.BusinessEvent_OnPlayerHandRemove, player, index, chess)
    end
    --玩家存在空牌
    sys.PlayerHandExistEmpty = function(b, player)
        for i = 1, BusinessSystem.MaxHandCount, 1 do
            if b.playerhand_[player.uid_][i] == nil then
                return true, i
            end
        end
        return false, nil
    end
    --购买经验
    sys.BuyExp = function(b, player)
        local cost = b.levelExpTable_.cost_
        local newcoin = player.coin_ - cost
        local res = newcoin >= 0
        if res == false then return b end
        player:SetCoin(newcoin)
        b:ExpUp(player)

    end
    --升级
    sys.ExpUp = function(b, player)
        local currentExp = b.playerExp_[player.uid_]
        local currentLevel = player.level_

        b.playerExp_[player.uid_] = currentExp + b.levelExpTable_.delta_

        if b.playerExp_[player.uid_] >= b.levelExpTable_[player.level_] then

            b.playerExp_[player.uid_] = 0
            player.level_ = player.level_ + 1
        end
        local newlevel = player.level_
        local newExp = b.playerExp_[player.uid_]
        GameEvent:Broadcast(GameEvent.Define.BusinessEvent_OnExpUp, player, currentLevel, newlevel, currentExp, newExp)
    end
    --商店退还没有下架棋子商品
    sys.SoldOutChessToShop = function(b, player)
        local shop = b.playershop_[player.uid_]
        for index, value in pairs(shop) do
            if value ~= nil then
                local dataid = value.data_.id_
                b.store_[dataid] = b.store_[dataid] + 1 -- 放回去
                shop[index] = nil                        --置空
            end
        end
    end
    --商店展示棋子
    sys.ShowChessToShop = function(b, player)
        local probability = b.levelprobability_[player.level_]

        --生成5个随机子
        local chessShopItem = {}
        for i = 1, 5, 1 do
            local r = math.random()
            local tempval = 0
            local star = 1
            for i = 1, #probability, 1 do
                tempval = tempval + probability[1]
                if r < tempval then
                    star = i
                    break
                end
            end

            local temp = {}
            for index, value in ipairs(b.store_) do
                if b.config_[index].star_ == star and value ~= 0 then
                    for i = 1, value, 1 do
                        table.insert(temp, b.config_[index])
                    end
                end
            end
            --print("temp:" .. #temp)
            local rIndex = math.random(1, #temp)

            --print(rIndex .. #temp)
            local dataid = temp[rIndex].id_

            b.store_[dataid] = b.store_[dataid] - 1 --取出来

            local c = Chess:new(temp[rIndex])
            b.playershop_[player.uid_][i] = c

            chessShopItem[i] = c
        end
        return chessShopItem
    end

    sys.UpdateStore = function(b, newStore)
        return BusinessSystem.UpdateStore(b, newStore)
    end
    sys.GetChessData = function(b, chessdata)
        return BusinessSystem.GetChessData(b, chessdata)
    end


    setmetatable(sys, self)
    self.__index = self
    return sys
end
function BusinessSystem:Instance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end
local function ToString(t)
    local str = ""
    for index, value in pairs(t) do
        str = str .. "\n" .. tostring(index) .. " - " .. tostring(value)
    end
    return str
end
function BusinessSystem:Awake()
    print("BusinessSystem Awake!")

    self:ReadConfig()
    self:GenerateLocalStore()

    return self
end

function BusinessSystem:Tick(delta)

end
-- 计算用户利息
function BusinessSystem:GetAccrual(user)
    local baseAccrual = 2;
    -- TODO 利息计算
    return baseAccrual * 2
end
function BusinessSystem:UpdateStore(store)

    return self
end
function BusinessSystem:GetChessData(data)

    return self
end

--#endregion

--#region MapSystem

Maptile = {}
Maptile.Type = {
    Chessboard = 1,
    ChessHand = 2,
}
function Maptile:new(type, entity)
    local o = {}

    o.entity_ = entity
    o.type_ = type

    setmetatable(o, self)
    self.__tostring = function(t)
        return "{Maptile}[" .. tostring(o.type_) .. "]"
    end
    self.__index = self
    return o
end
--#region 棋盘

Maptile_Chessboard = {}
function Maptile_Chessboard:new(entity, point)
    local o = Maptile:new(Maptile.Type.Chessboard, entity)
    o.point_ = point
    o.point_string_ = tostring(point)
    o.co_ = point:GetCoordinate()
    o.co_string_ = "[" .. tostring(o.co_.x) .. "," .. tostring(o.co_.y) .. "]"
    return o
end
Maptile_ChessHand = {}
function Maptile_ChessHand:new(entity, index)
    local o = Maptile:new(Maptile.Type.ChessHand, entity)
    return o
end
--#endregion


GameMap = {}
function GameMap:new(sys, player)
    local o = {}

    o.sys_ = sys
    o.viewplayer_ = player


    o.orginboard_ = {}          --备份
    o.orginhand_ = {}           --手牌

    o.selfchessboard_ = {}          --实时表现
    o.selfchesshand_ = {}          --实时表现

    o.otherchessboard_ = {}         --实时表现
    o.otherchesshand_ = {}          --实时表现

    o.isRendering_ = false      --正在渲染

    o.Tick = function(o, delta)

        --TODO 逻辑计算

        --开始渲染
        if o.isRendering_ then
            for i = 1, BusinessSystem.MaxHandCount, 1 do
                local chess = o.orginhand_[i]
                local entity = o.selfchessboard_[i]
                if entity == nil and chess ~= nil then--创建棋子

                    entity = GameEntity_ChessObject:Create(chess)
                    local pos = o.sys_.selfhand_[i].entity_:GetProperty("Position") + Vector3.New(0, 1, 0)
                    entity:SetProperty("Position", pos)

                    o.selfchessboard_[i] = entity

                elseif entity ~= nil and chess ~= nil then--有棋子
                    if chess.id_ == entity.chess_.id_ then--相同
                        --TODO 一样不需要处理
                    else--不相同
                        GameEntity:RemoveEntity(entity)

                        entity = GameEntity_ChessObject:Create(chess)
                        local pos = o.sys_.selfhand_[i].entity_:GetProperty("Position") + Vector3.New(0, 1, 0)
                        entity:SetProperty("Position", pos)

                        o.selfchessboard_[i] = entity
                    end
                elseif entity ~= nil and chess == nil then--删除棋子
                    GameEntity:RemoveEntity(entity)
                    o.selfchessboard_[i] = nil
                end


                if entity ~= nil then
                    GameEvent:Broadcast(GameEvent.Define.MapEvent_OnRenderChessHand, true, entity, i)--是自己方手牌，实体，索引
                end

            end
        else
            for key, value in pairs(o.orginhand_) do
                local entityObj = o.selfchessboard_[key]
                if entityObj ~= nil then
                    GameEntity:RemoveEntity(entityObj)
                    o.selfchessboard_[key] = nil
                end
            end
        end
    end

    o.RenderView = function(o)
        o.isRendering_ = true
    end

    o.ClearView = function(o)
        o.isRendering_ = false
    end

    o.Destroy = function(o)

    end

    setmetatable(o, self)
    self.__tostring = function(t)
        return "{GameMap}[ViewPlayer:" .. tostring(t.viewplayer_) .. "]"
    end
    self.__index = self
    return o
end

local MapSystem = {
    HoneycombV2_Min_X = 0,
    HoneycombV2_Min_Y = 0,
    HoneycombV2_Max_X = 13,
    HoneycombV2_Max_Y = 7,
    Spacing_X = 1.5,
    Spacing_Y = 2.5,

    HandSpacing_Y = 3,
    HandSpacing_X = 2.2,
}
function MapSystem:new()

    local sys = {}

    sys.chessboard_ = {}
    sys.chessboard_v2_ = {}
    sys.selfhand_ = {}
    sys.otherhand_ = {}
    sys.maps_ = {}
    sys.view_ = nil

    sys.Tick = function(game, delta)
        MapSystem.Tick(game, delta)
    end

    sys.IsInMap = function(sys, HoneycombV2Point)
        return HoneycombV2Point.x_ >= MapSystem.HoneycombV2_Min_X and HoneycombV2Point.x_ <= MapSystem.HoneycombV2_Max_X and HoneycombV2Point.y_ >= MapSystem.HoneycombV2_Min_Y and HoneycombV2Point.y_ <= MapSystem.HoneycombV2_Max_Y
    end

    setmetatable(sys, self)
    self.__index = self
    return sys
end
function MapSystem:Instance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end

function MapSystem:Awake()
    print("MapSystem Awake!")

    --#region MAP Chessboard
    local temp = {}
    local initPos = Vector3.New(10, 1.1, 10)
    local function AddPoint(point)
        if temp[point.x_] == nil then
            temp[point.x_] = {}
        end
        if temp[point.x_][point.y_] == nil and self:IsInMap(point) then
            temp[point.x_][point.y_] = point

            local ns = point:GetNeighbors()
            for i = 1, #ns, 1 do
                AddPoint(ns[i])
            end
        else
        end
    end
    AddPoint(HoneycombV2:new(0, 0))
    for k1, v1 in pairs(temp) do
        for k2, v2 in pairs(temp[k1]) do
            if    self.chessboard_[k1] == nil then
                self.chessboard_[k1] = {}
            end

            if    self.chessboard_[k1][k2] ~= nil then
                GameEntity:RemoveEntity(self.chessboard_[k1][k2])
                self.chessboard_[k1][k2] = nil
            end

            local pos = Vector3.New(MapSystem.Spacing_X * k1, 0, MapSystem.Spacing_Y * k2) + initPos
            local entity = GameEntity:Create(GameEntity.Type.TileHex_Object)

            local point = temp[k1][k2]
            local v2 = point:GetCoordinate()

            if self.chessboard_v2_[v2.x] == nil then
                self.chessboard_v2_[v2.x] = {}
            end
            self.chessboard_v2_[v2.x][v2.y] = entity

            entity.OnRenderObject_ = function(e, object)

                e.infotext_ = object:GetChildByName("SurfaceGUI"):GetChildByName("InfoText")
                if e.infotext_ ~= nil then
                    e.infotext_.TextString = "[" .. v2.x .. "," .. v2.y .. "]"
                end
            end
            entity:SetProperty("Position", pos)
            self.chessboard_[k1][k2] = Maptile_Chessboard:new(entity, point)

        end
    end
    --#endregion

    --#region MAP selfhand
    local initPos_selfhand = initPos - Vector3.New(2, 0, MapSystem.HandSpacing_Y)
    for i = 1, 10, 1 do
        local entity = GameEntity:Create(GameEntity.Type.ChessTileHand_Object, nil, true)

        self.selfhand_[i] = Maptile_ChessHand:new(entity, i)
        local pos = initPos_selfhand + Vector3.New(MapSystem.HandSpacing_X * i, 0, 0)
        entity:SetProperty("Position", pos)
    end
    --#endregion

    --#region MAP otherhand
    local initPos_otherhand = initPos + Vector3.New(-2, 0, MapSystem.HandSpacing_Y) + Vector3.New(0, 0, MapSystem.Spacing_Y * MapSystem.HoneycombV2_Max_Y)
    for i = 1, 10, 1 do
        local entity = GameEntity:Create(GameEntity.Type.ChessTileHand_Object, nil, true)

        self.otherhand_[i] = Maptile_ChessHand:new(entity, i)
        local pos = initPos_otherhand + Vector3.New(MapSystem.HandSpacing_X * i, 0, 0)
        entity:SetProperty("Position", pos)
    end
    --#endregion

    return self
end
function MapSystem:RendererMap(player)
    local oldview = nil
    if self.view_ == nil then
        oldview = nil
    else
        oldview = self.view_
    end
    self.view_ = self.maps_[player.uid_]

    if oldview ~= nil then
        oldview:ClearView()
    end
    self.view_:RenderView()

    GameEvent:Broadcast(GameEvent.Define.MapEvent_OnRenderViewChanged, oldview, self.view_)

end
function MapSystem:AddChessObject(o)

end
function MapSystem:RemoveChessObject(o)

end
function MapSystem:GeneratePlayerMap(player)
    self.maps_[player.uid_] = GameMap:new(self, player)
end
function MapSystem:DestroyPlayerMap(player)
    self.maps_[player.uid_]:Destroy()
    self.maps_[player.uid_] = nil
end
function MapSystem:Tick(delta)
    --Tick
    for key, value in pairs(self.maps_) do
        value:Tick()
    end

    return self
end
--#endregion

--#region RoundSystem

GameRound = {}
GameRound.Status = {
    Prepare = 1, --准备
    StartBattle = 2, --开始战斗
    Battle = 3, --战斗中
    AccelerateBattle = 4, --加速战斗
    EndBattle = 5, --战斗中
    Waitting = 6, --等待
    Knockout = 7, --出局状态
}
GameRound.StatusKeys = {
    [1] = "Prepare", --准备
    [2] = "StartBattle", --开始战斗
    [3] = "Battle ", --战斗中
    [4] = "AccelerateBattle", --加速战斗
    [5] = "EndBattle", --战斗中
    [6] = "Waitting", --等待
    [7] = "Knockout", --出局状态
}
GameRound.StatusTime = {
    [1] = 20, --准备
    [2] = 5, --开始战斗
    [3] = 40, --战斗中
    [4] = 20, --加速战斗
    [5] = 5, --战斗中
    [6] = 0, --等待
    [7] = 0, --出局状态
}
function GameRound:new(sys, player)
    local o = {}

    o.sys_ = sys
    o.viewplayer_ = player

    o.allsteps_ = {}
    o.currentsteps_ = 1
    o.timer_ = 0

    o.over_ = false
    o.Tick = function(r, delta)                     --帧
        if r.over_ then return end
        if r.timer_ < 0 then
            if r.currentsteps_ + 1 > #RoundSystemStatus.Steps[r.sys_.roundStatus_] then
                r.over_ = true
                return r
            end
            r.over_ = false
            r.currentsteps_ =    r.currentsteps_ + 1
            r.timer_ = r.timer_ + GameRound.StatusTime[o.allsteps_[r.currentsteps_]]
            GameEvent:Broadcast(GameEvent.Define.RoundEvent_OnStepRefresh, r, r.currentsteps_ - 1, r.currentsteps_)
        end

        r.timer_ = r.timer_ - delta

    end

    o.GetStatusStepKey = function(r)
        return GameRound.StatusKeys[r.currentsteps_]
    end

    setmetatable(o, self)
    self.__tostring = function(t)
        return "{GameRound}[" .. tostring(t.viewplayer_) .. "| Step:" .. t:GetStatusStepKey() .. "]"
    end
    self.__index = self
    return o
end

RoundSystemStatus = {
    Selection = 1, --抢选阶段
    Monster = 2, --比赛
    Combat = 3, --玩家比赛
    Chest = 4, --宝箱抽取
}
RoundSystemStatus.Keys = {
    [1] = "Selection", --抢选阶段
    [2] = "Monster", --野怪
    [3] = "Combat", --玩家比赛
    [4] = "Chest", --宝箱抽取
}

RoundSystemStatus.Steps = {
    [1] = { GameRound.Status.Prepare }, --抢选阶段
    [2] = { GameRound.Status.Prepare, GameRound.Status.StartBattle, GameRound.Status.AccelerateBattle, GameRound.Status.EndBattle }, --野怪
    [3] = { GameRound.Status.Prepare, GameRound.Status.StartBattle, GameRound.Status.AccelerateBattle, GameRound.Status.EndBattle }, --玩家比赛
    [4] = { GameRound.Status.Prepare }, --宝箱抽取
}
local RoundSystem = {}
function RoundSystem:new()

    local sys = {}

    sys.roundStatus_ = RoundSystemStatus.Selection
    sys.roundTimer_ = 0
    sys.roundRuntime_ = 0
    sys.roundIndex_ = 0
    sys.roundConfig_ = nil

    sys.roundPlayers_ = {}

    sys.GetRoundConfig = function(game)
        game.roundConfig_ = {}

        --TODO 配置野怪局
        local attackFunc = function(target, targets)
        end
        local skillFunc = function(target, targets)
        end
        local modelData = ModelData:new(ModelData.DataType[1], tostring(math.floor(math.random(1000000000))))
        --怪我基础
        local monstordata = ChessData:new(1, 400, 400, 30, 1, 1, attackFunc, skillFunc, modelData)
        --TODO 配置轮数状态
        for i = 1, 100, 1 do
            local config = {}
            config.roundtype_ = RoundSystemStatus.Monster

            config.objecttable_ = {}

            local monstorconfig1 = {}
            monstorconfig1.data_ = monstordata
            local pos1 = {}
            pos1.x_ = 6
            pos1.x_ = 5
            monstorconfig1.pos_ = pos1

            local monstorconfig2 = {}
            monstorconfig2.data_ = monstordata
            local pos2 = {}
            pos2.x_ = 6
            pos2.x_ = 5
            monstorconfig2.pos_ = pos2

            config.objecttable_[1] = monstorconfig1
            config.objecttable_[2] = monstorconfig2

            game.roundConfig_[i] = config
        end


        sys.roundStatus_ = game.roundConfig_[1].roundtype_
        return game.roundConfig_
    end

    sys.GetCurrentRoundTotalTime = function(game)
        local step = RoundSystemStatus.Steps[game.roundStatus_]
        local totalTime = 0
        for index, value in ipairs(step) do
            totalTime = totalTime + GameRound.StatusTime[value]
        end
        return totalTime
    end
    sys.GetCurrentRoundTotalTime_Millisecond = function(game)
        local totalTime = game:GetCurrentRoundTotalTime()
        return totalTime * 1000
    end
    sys.GetRuntime = function(game)
        return game.roundRuntime_
    end
    sys.GetRoundTimer_Second = function(game)
        return game.roundTimer_
    end
    sys.GetRoundTimer_Millisecond = function(game)
        return game.roundTimer_ * 1000
    end
    sys.GetIndex = function(game)
        return game.roundIndex_
    end
    sys.Tick = function(game, delta)
        game.roundTimer_ = game.roundTimer_ - delta
        game.roundRuntime_ = game.roundRuntime_ + delta
        RoundSystem.Tick(game, delta)
    end

    setmetatable(sys, self)
    self.__index = self
    return sys
end
function RoundSystem:Instance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end
function RoundSystem:Awake()
    print("RoundSystem Awake!")

    self:GetRoundConfig()

    return self
end
function RoundSystem:Next(timer)
    self.roundTimer_ = timer
    self.roundRuntime_ = 0
    self.roundIndex_ = self.roundIndex_ + 1
    local roundconfig = self.roundConfig_[self.roundIndex_]

    self.roundStatus_ = roundconfig.roundtype_

    for key, value in pairs(self.roundPlayers_) do
        local oldsteps_ = value.currentsteps_

        value.allsteps_ = RoundSystemStatus.Steps[self.roundStatus_]
        value.currentsteps_ = 1
        value.timer_ = GameRound.StatusTime[value.allsteps_[value.currentsteps_]]
        GameEvent:Broadcast(GameEvent.Define.RoundEvent_OnStepRefresh, value, oldsteps_, value.currentsteps_)
    end

    GameEvent:Broadcast(GameEvent.Define.RoundEvent_OnRefresh)

    return self
end

function RoundSystem:GeneratePlayerRound(player)
    self.roundPlayers_[player.uid_] = GameRound:new(self, player)
end
function RoundSystem:DestroyPlayerRound(player)
    self.roundPlayers_[player.uid_] = nil
end
function RoundSystem:IsCurrentRoundOver()
    return self.roundTimer_ <= 0 --判断游戏结束
end
function RoundSystem:Tick(delta)

    if self:IsCurrentRoundOver() then
        --目前固定时间
        self:Next(RoundSystem:Instance():GetCurrentRoundTotalTime())
    end

    for uid, round in pairs(self.roundPlayers_) do
        round:Tick(delta)
    end
    return self
end

--#endregion

--#region BattleSystem

BattleFramePool = {
    TempID = 0,
    UsePool = {},
    EmptyPool = {},
}
BattleFrame = {}
function BattleFrame:Create()

    local o
    if #BattleFramePool.EmptyPool == 0 then
        o = {}
        o.fixedframe_ = 0
        o.chessrecord_ = {}

        o.Destroy = function(obj)
            BattleFramePool.UsePool[obj.id_] = nil
            table.insert(BattleFramePool.EmptyPool, obj)
        end
        setmetatable(o, self)
        self.__tostring = function(t)
            return "{BattleFrame}" .. o.id_
        end
        self.__index = self
        BattleFramePool.UsePool[o.id_] = o
    else
        o = table.remove(BattleFramePool.EmptyPool)
    end
    BattleFramePool.TempID = BattleFramePool.TempID + 1
    o.id_ = BattleFramePool.TempID

    return o
end


GameBattle = {
    TempID = 0,
    FixedGameDeltaTime = 0.1        --计算上限
}
function GameBattle:new(sys, time, homeplayer, visitplayer)
    local o = {}

    o.sys_ = sys

    o.homeplayer_ = homeplayer
    o.visitplayer_ = visitplayer

    o.totalTime_ = time
    o.runtime_ = 0

    o.inited_ = false
    o.destroyed_ = false

    o.battletable_ = {}
    o.currentFrame_ = 1

    o.ForecastResult = function(ba)     --预测结果

        local timer = ba.totalTime_
        local index = 0

        while timer >= 0 do
            timer = timer - GameBattle.FixedGameDeltaTime
            local frame = BattleFrame:Create()

            index = index + 1
            frame.fixedframe_ = index
            frame.chessrecord_ = ba:ComputeBattleTick()

            table.insert(ba.battletable_, frame)
        end
        return ba.battletable_
    end

    --计算战斗
    o.ComputeBattleTick = function(ba)

    end

    o.Init = function(ba)               --初始化
        if ba.inited_ then return ba end


        ba.inited_ = true
    end

    o.Tick = function(ba, delta)           --帧
        local currentTime = ba.runtime_ + delta
        --GameBattle.FixedGameDeltaTime --等于0.1向下取帧
        local frameClamp = math.floor(currentTime / GameBattle.FixedGameDeltaTime)
        local frameTimer = o.currentFrame_
        while frameTimer <= frameClamp do
            GameEvent:Broadcast(GameEvent.Define.BattleEvent_OnPlayFrame, ba, ba.battletable_[frameTimer])
            frameTimer = frameTimer + 1
        end
        o.currentFrame_ = frameClamp
    end

    o.Destroy = function(ba)               --初始化
        if ba.destroyed_ == false then return ba end

        ba.destroyed_ = true
    end

    GameBattle.TempID = GameBattle.TempID + 1
    o.id_ = GameBattle.TempID
    setmetatable(o, self)
    self.__tostring = function(t)
        return "{GameRound}"
    end
    self.__index = self
    return o
end

local BattleSystem = {}
function BattleSystem:new()

    local sys = {}

    sys.battles_ = {}
    sys.battlelist_ = {}

    sys.Tick = function(game, delta)
        BattleSystem.Tick(game, delta)
    end

    setmetatable(sys, self)
    self.__index = self
    return sys
end
function BattleSystem:Instance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end
function BattleSystem:Awake()
    print("BattleSystem Awake!")
    return self
end

function BattleSystem:AddBattle(totaltime, homeplayer, visitplayer)
    --客场和AI打
    local battle = GameBattle:new(self, totaltime, homeplayer, visitplayer)

    battle:ForecastResult()

    self.battles_[battle.id_] = battle
end
function BattleSystem:FindBattleByHomeplayer(homeplayer)
    for key, value in pairs(self.battles_) do
        if value.homeplayer_.uid_ == homeplayer.uid_ then
            return value
        end
    end
    return nil
end
function BattleSystem:RemoveBattle(id)
    self.battles_[id] = nil
end

function BattleSystem:Tick(delta)
    for id, battle in pairs(self.battles_) do
        --走帧
        if battle.inited_ and battle.destroyed_ ~= false then
            battle:Tick(delta)
        end
    end
    return self
end

--#endregion

--#region UserSystem

PlayerUser = {
    TempID = 0
}
PlayerUser.Type = {
    LocalPlayer = 0,
    AIPlayer = 1,
    NetPlayer = 2,
}
function PlayerUser:new(type, uin)
    local o = {}

    o.type_ = type
    o.hp_ = 100
    o.uin_ = uin

    o.level_ = 1     --用户等级

    o.resultrecord_ = {}
    o.coin_ = 0 -- 金币
    o.hand_ = {}    -- 手牌
    o.stash_ = {}  --背包
    o.AddChessData = function(player, list)

    end
    o.RemoveChessData = function(player, list)

    end
    o.SetCoin = function(player, num)
        if player.coin_ ~= num then
            local oldnum = player.coin_
            o.coin_ = num
            GameEvent:Broadcast(GameEvent.Define.UserEvent_OnCoinChanged, player, oldnum, num)
        end
        return player
    end

    PlayerUser.TempID = PlayerUser.TempID + 1
    o.uid_ = PlayerUser.TempID
    setmetatable(o, self)

    self.__tostring = function(t)
        return "{PlayerUser}[" .. "Uid:" .. t.uid_ .. "|Type:" .. t.type_ .. "|Uin:" .. t.uin_ .. "|HP:" .. t.hp_ .. "]"
    end
    self.__index = self
    return o
end

local UserSystem = {
    LocalUserData =    {
        Uin = "TestPlayer_AA",
        Uid = 0,
    },
    MINLevel = 1,
    MAXLevel = 7,
}
function UserSystem:new()

    local sys = {}

    sys.userPool_ = {}

    sys.localuser_ = nil

    sys.GetUserPool = function(game)
        return game.userPool_
    end
    sys.TraverseUserPool = function(game, func)
        for index, value in ipairs(game.userPool_) do
            func(value)
        end
    end

    sys.GetUserById = function(game, uid)
        return game.userPool_[uid]
    end

    sys.AddUser = function(game, user)
        game.userPool_[user.uid_] = user
        GameEvent:Broadcast(GameEvent.Define.UserEvent_OnStart, user)
        return user
    end
    sys.RemoveUser = function(game, user)
        game.userPool_[user.uid_] = nil
        GameEvent:Broadcast(GameEvent.Define.UserEvent_OnDestroy, user)
        return user
    end
    sys.CleanUserPool = function(game)
        local pool = game.userPool_
        for index, value in ipairs(pool) do
            GameEvent:Broadcast(GameEvent.Define.UserEvent_OnDestroy, value)
        end
        game.userPool_ = {}
        return game.userPool_
    end

    sys.Tick = function(game, delta)
        UserSystem.Tick(game, delta)
    end

    setmetatable(sys, self)
    self.__index = self
    return sys
end
function UserSystem:Instance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end
function UserSystem:Awake()
    print("UserSystem Awake!")
    local localplayer = PlayerUser:new(PlayerUser.Type.LocalPlayer, UserSystem.LocalUserData.Uin)
    UserSystem.LocalUserData.Uid = localplayer.uid_
    self:AddUser(localplayer)
    self.localuser_ = localplayer

    for i = 1, 7, 1 do
        local AIplayer = PlayerUser:new(PlayerUser.Type.AIPlayer, "AI_" .. i)
        self:AddUser(AIplayer)
    end

    return self
end
function UserSystem:Tick(delta)
    for index, value in ipairs(self.userPool_) do
        GameEvent:Broadcast(GameEvent.Define.UserEvent_OnUpdate, delta)
    end
    return self
end

--#endregion

--#region InputSystem

local InputSystem = {}
function InputSystem:new()

    local sys = {}

    sys.Tick = function(game, delta)
        InputSystem.Tick(game, delta)
    end

    setmetatable(sys, self)
    self.__index = self
    return sys
end
function InputSystem:Instance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end
function InputSystem:Awake()
    print("InputSystem Awake!")
    return self
end

function InputSystem:Tick(delta)
    GameEvent:Broadcast(GameEvent.Define.InputEvent_OnUpdate, delta)
    return self
end

--#endregion

--#region GUISystem
local GUISystem = {}
function GUISystem:new()

    local sys = {}

    sys.timeslidertweener_ = nil
    sys.storeItemlist_ = nil -- 缓存

    --Test 
    sys.configText_ = nil -- 缓存
    sys.businessText_ = nil -- 缓存
    sys.gameInfoText_ = nil -- 缓存

    sys.GetTimeSliderTweenerObj = function(g)
        if g.timeslidertweener_ == nil then
            g.timeslidertweener_ = tweenService:CreateTween(SceneObjectTable:Get_TimeSlider(), "Progress")
            g.timeslidertweener_.TargetValue = 1
            g.timeslidertweener_.LoopCount = 0
            g.timeslidertweener_.YoYo = false
        end
        return g.timeslidertweener_
    end

    sys.Tick = function(game, delta)
        GUISystem.Tick(game, delta)
    end

    setmetatable(sys, self)
    self.__index = self
    return sys
end
function GUISystem:Instance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end
function GUISystem:Awake()
    print("GUISystem Awake!")

    SceneObjectTable:Get_GameStartButton().OnClick:Connect(function()
        GameSystem:Instance():Start()
    end)
    SceneObjectTable:Get_GamePauseButton().OnClick:Connect(function()
        GameSystem:Instance():Stop()
    end)
    SceneObjectTable:Get_UserContent_UserMoneyPanel_RefreshButton().OnClick:Connect(function()
        BusinessSystem:Instance():UserRefreshStore(UserSystem:Instance().localuser_)
    end)
    SceneObjectTable:Get_UserContent_UserExpPanel_BuyExpButton().OnClick:Connect(function()
        BusinessSystem:Instance():BuyExp(UserSystem:Instance().localuser_)
    end)

    --self:ShowConfigText()
    self:ShowBusinessText()
end
function GUISystem:Start()
    SceneObjectTable:Get_GameUIPanel().IsActive = true

    --进度条
    self:GetTimeSliderTweenerObj().Duration = RoundSystem:Instance():GetRoundTimer_Millisecond()
    self:GetTimeSliderTweenerObj().Delay = 0
    self:GetTimeSliderTweenerObj().LoopDelay = 0

    self:GetTimeSliderTweenerObj():Play()
end
function GUISystem:Stop()
    self:GetTimeSliderTweenerObj():Pause()
end
function GUISystem:TimeSlider_ResetPlay(time)

    SceneObjectTable:Get_TimeSlider().Progress = 0
    self:GetTimeSliderTweenerObj().Duration = time
    self:GetTimeSliderTweenerObj():Play()

    return self:GetTimeSliderTweenerObj()
end
function GUISystem:ShowConfigText()

    local str = ToString(BusinessSystem:Instance().config_)

    if self.configText_ == nil then
        self.configText_ = GameEntity:Create(GameEntity.Type.UI_TextObject)
    end
    self.configText_:SetProperty("TextString", str)
    self.configText_:SetProperty("AnchorMin", Vector2.New(0, 1))
    self.configText_:SetProperty("AnchorMax", Vector2.New(0, 1))
    self.configText_:SetProperty("Position", Vector2.New(200, -20))
    self.configText_:SetProperty("SizeDelta", Vector2.New(400, 50))

    self.configText_:SetProperty("TextAlignment", Enum.AlignmentOptions[257])

    return self
end
function GUISystem:ShowGameInfoText()

    local str = "游戏阶段:" .. RoundSystemStatus.Keys[RoundSystem:Instance().roundStatus_] .. "\n"
    str = str .. "轮数:" .. RoundSystem:Instance().roundIndex_ .. "\n"

    local viewMap = MapSystem:Instance().view_

    if viewMap ~= nil then
        local viewplayer = viewMap.viewplayer_

        local round = RoundSystem:Instance().roundPlayers_[viewplayer.uid_]
        str = str .. "状态:" .. round:GetStatusStepKey() .. "\n"
    end

    if self.gameInfoText_ == nil then
        self.gameInfoText_ = GameEntity:Create(GameEntity.Type.UI_TextObject)
    end
    self.gameInfoText_:SetProperty("TextString", str)
    self.gameInfoText_:SetProperty("AnchorMin", Vector2.New(0, 1))
    self.gameInfoText_:SetProperty("AnchorMax", Vector2.New(0, 1))
    self.gameInfoText_:SetProperty("Position", Vector2.New(200, -20))
    self.gameInfoText_:SetProperty("SizeDelta", Vector2.New(400, 50))

    self.gameInfoText_:SetProperty("TextAlignment", Enum.AlignmentOptions[257])

    return self
end

function GUISystem:ShowBusinessText()

    local str = ToString(BusinessSystem:Instance().store_)
    local num = 0
    for key, value in pairs(BusinessSystem:Instance().store_) do
        num = num + value
    end
    str = str .. "\n 总共：" .. num

    if    self.businessText_ == nil then
        self.businessText_ = GameEntity:Create(GameEntity.Type.UI_TextObject)
    end
    self.businessText_:SetProperty("TextString", str)
    self.businessText_:SetProperty("AnchorMin", Vector2.New(0, 0))
    self.businessText_:SetProperty("AnchorMax", Vector2.New(0, 0))
    self.businessText_:SetProperty("Position", Vector2.New(200, 30))
    self.businessText_:SetProperty("SizeDelta", Vector2.New(400, 50))

    self.businessText_:SetProperty("TextAlignment", Enum.AlignmentOptions[1025])

    return self
end
function GUISystem:ShowStoreItemList(list)
    local prefab = SceneObjectTable:Get_UserContent_StoreItemContent_StoreItemPrefab()
    local parent = prefab.Parent
    if self.storeItemlist_ ~= nil then
        for index, value in pairs(self.storeItemlist_) do
            value:Destroy()
            self.storeItemlist_[index] = nil
        end
    end
    local temp = {}
    for i = 1, 5, 1 do
        local chess = list[i]
        --print(i .. tostring(prefab))
        local item = prefab:Clone(parent)
        item.IsActive = true
        if chess == nil then
            item.ButtonTextString = "NULL"
        else
            local chessdata = chess.data_
            --TODO 内容替换
            local buttonStr = "ChessData Id:" .. chessdata.id_ .. string.rep("☆", chessdata.star_)
            item.ButtonTextString = buttonStr
            item.OnClick:Connect(function()
                local res = BusinessSystem:Instance():BuyChessToShop(UserSystem:Instance().localuser_, i, chess)
                -- print(chessdata)
            end)
        end
        temp[i] = item
    end
    self.storeItemlist_ = temp
    --    print(#self.storeItemlist_)
end
function GUISystem:ShowUserListText()

    UserSystem:Instance():GetUserPool()

    local str = ToString(UserSystem:Instance():GetUserPool())
    local text = SceneObjectTable:Get_UserListContent_UserText()

    text.TextString = str

    return self
end

function GUISystem:Tick(delta)
    return self
end
--#endregion

--#region AnimateSystem
local AnimateSystem = {}
function AnimateSystem:new()

    local sys = {}

    sys.Tick = function(game, delta)
        AnimateSystem.Tick(game, delta)
    end

    setmetatable(sys, self)
    self.__index = self
    return sys
end
function AnimateSystem:Instance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end
function AnimateSystem:Awake()
    print("AnimateSystem Awake!")
end

function AnimateSystem:Tick(delta)
    return self
end
--#endregion

--#region ObjectSystem

GameEvent = {
    Define = {

        GameEvent_OnStart = "GameEvent_OnStart",
        GameEvent_OnStop = "GameEvent_OnStop",

        UserEvent_OnStart = "UserEvent_OnStart",
        UserEvent_OnUpdate = "UserEvent_OnUpdate",
        UserEvent_OnDestroy = "UserEvent_OnDestroy",
        UserEvent_OnCoinChanged = "UserEvent_OnCoinChanged",

        BusinessEvent_OnShowShop = "BusinessEvent_OnShowShop",
        BusinessEvent_OnExpUp = "BusinessEvent_OnExpUp",
        BusinessEvent_OnBuyChess = "BusinessEvent_OnBuyChess",
        BusinessEvent_OnPlayerHandAdd = "BusinessEvent_OnPlayerHandAdd",
        BusinessEvent_OnPlayerHandRemove = "BusinessEvent_OnPlayerHandRemove",

        RoundEvent_OnRefresh = "RoundEvent_OnRefresh",
        RoundEvent_OnStepRefresh = "RoundEvent_OnStepRefresh",

        BattleEvent_OnPlayFrame = "BattleEvent_OnPlayFrame",

        MapEvent_OnRenderViewChanged = "MapEvent_OnRenderViewChanged",
        MapEvent_OnRenderChessHand = "MapEvent_OnRenderChessHand",

        ObjectEvent_OnUpdate = "ObjectEvent_OnUpdate",
        ObjectEvent_SetProperty = "ObjectEvent_SetProperty",
        ObjectEvent_GetProperty = "ObjectEvent_GetProperty",

        InputEvent_OnUpdate = "InputEvent_OnUpdate",
    },
    Event = {

        GameEvent_OnStart = {},
        GameEvent_OnStop = {},

        UserEvent_OnStart = {},
        UserEvent_OnUpdate = {},
        UserEvent_OnDestroy = {},
        UserEvent_OnCoinChanged = {},

        BusinessEvent_OnShowShop = {},
        BusinessEvent_OnExpUp = {},
        BusinessEvent_OnBuyChess = {},
        BusinessEvent_OnPlayerHandAdd = {},
        BusinessEvent_OnPlayerHandRemove = {},

        RoundEvent_OnRefresh = {},
        RoundEvent_OnStepRefresh = {},

        BattleEvent_OnPlayFrame = {},

        MapEvent_OnRenderViewChanged = {},
        MapEvent_OnRenderChessHand = {},

        ObjectEvent_OnUpdate = {},
        ObjectEvent_SetProperty = {},
        ObjectEvent_GetProperty = {},

        InputEvent_OnUpdate = {},

    },
    ClearEvent = function(e)
        e.Event = {

            GameEvent_OnStart = {},
            GameEvent_OnStop = {},

            UserEvent_OnStart = {},
            UserEvent_OnUpdate = {},
            UserEvent_OnDestroy = {},
            UserEvent_OnCoinChanged = {},

            BusinessEvent_OnShowShop = {},
            BusinessEvent_OnExpUp = {},
            BusinessEvent_OnBuyChess = {},
            BusinessEvent_OnPlayerHandAdd = {},
            BusinessEvent_OnPlayerHandRemove = {},

            RoundEvent_OnRefresh = {},
            RoundEvent_OnStepRefresh = {},

            BattleEvent_OnPlayFrame = {},

            MapEvent_OnRenderViewChanged = {},
            MapEvent_OnRenderChessHand = {},

            ObjectEvent_OnUpdate = {},
            ObjectEvent_SetProperty = {},
            ObjectEvent_GetProperty = {},

            InputEvent_OnUpdate = {},

        }
    end,
    Broadcast = function(e, eName, ...)
        local tab = e[eName]
        if type(tab) == "table" then
            for key, value in ipairs(tab) do
                local func = value
                func(...)
            end
        end
    end,
    AddEvent = function(e, eName, func)
        local tab = e[eName]
        if tab == nil then
            e[eName] = {}
            tab = e[eName]
        end
        table.insert(tab, func)
        return #tab
    end,
    RemoveEvent = function(e, eName, index)
        local tab = e[eName]
        local func = tab[index]
        table.remove(tab, index)
        return func
    end,
}
GameEntity = {
    TempID = 0,
    EntityPool = {},

    GetEntityById = function(e, id)
        return GameEntity.EntityPool[id]
    end,

    RegisterEntity = function(e, o)
        GameEntity.EntityPool[o.id_] = o
        return o
    end,

    RemoveEntity = function(e, o)
        GameEntity.EntityPool[o.id_] = nil
        return o
    end
}
GameEntity.Type = {

    --Static

    TileHex_Object = 100,
    ChessTileHand_Object = 101,

    --Dynamic
    ActorObject = 200,

    UI_ButtonObject = 300,
    UI_TextObject = 301,

    ChessObject = 400,
}
function GameEntity:new(useCache)
    local o = {}

    GameEntity.TempID = GameEntity.TempID + 1
    o.id_ = GameEntity.TempID

    useCache = true

    if useCache then
        o.cache_ = {}
    end

    self.__tostring = function(t)
        return "{GameEntity}[ID:" .. t.id_ .. "]"
    end
    self.__index = self
    self.__newindex = function(table, key, value)
        if table[key] == value then
        else
            local oldVal = table[key]
            local newVal = value
            rawset(table, key, value)
            --print(tostring(table) .. "\n" .. key .. "|" .. tostring(oldVal) .. "-->" .. tostring(newVal))
            GameEvent:Broadcast(GameEvent.Define.ObjectEvent_SetProperty, table, key, oldVal, newVal)
        end
    end

    o.GetProperty = function(table, key)
        if table.cache_ == nil then return table.GameObject_[key] end

        if table.cache_[key] == nil and table.GameObject_ ~= nil then
            table.cache_[key] = table.GameObject_[key]
        end
        return table.cache_[key]
    end
    o.SetProperty = self.__newindex

    setmetatable(o, self)
    return o
end
function GameEntity:Create(t, onRenderObject, useCache)
    local o = GameEntity:new()

    o.type_ = t
    o.OnRenderObject_ = onRenderObject

    GameEntity:RegisterEntity(o)

    return o
end
--#region 游戏实体——角色
GameEntity_ActorObject = {
    ActorPool = {}
}
function GameEntity_ActorObject:Create(actorid)
    local o = GameEntity:Create(GameEntity.Type.ActorObject)

    o.actorid_ = actorid
    table.insert(GameEntity_ActorObject.ActorPool, o.actorid_, o)
    return o
end
function GameEntity_ActorObject:GetActorEntity(actorid)
    return self.ActorPool[actorid]
end
function GameEntity_ActorObject:DestroyById(id)
    local actor = GameEntity:GetEntityById(id)
    table.remove(GameEntity_ActorObject.ActorPool, actor.actorid_)
    return GameEntity:RemoveEntity(actor)
end
function GameEntity_ActorObject:DestroyByActorId(actorid)
    local actor = self:GetActorEntity(actorid)
    table.remove(GameEntity_ActorObject.ActorPool, actor.actorid_)
    return GameEntity:RemoveEntity(actor)
end
--#endregion

--#region 游戏实体——棋子
GameEntity_ChessObject = {}
GameEntity_ChessObject.COMBAT_Status = {
    IDLE = "IDLE",
    SEEK = "SEEK",
    ATTACK = "ATTACK",
    DEAD = "DEAD",
}
GameEntity_ChessObject.Map_Status = {
    Hidden = 1,
    Board = 2,
    Hand = 3,
}
function GameEntity_ChessObject:Create(chess)

    local o = GameEntity:Create(GameEntity.Type.ChessObject, function(e, obj)

        e.saleButton_entity_ = ObjectSystem:Instance():BindingObject(obj:GetChildByName("BillBoardGUI"):GetChildByName("SaleButton"))
        e.saleButton_entity_.GameObject_.OnClick:Connect(function()
            print("卖出！")
        end)
        e.infoText_entity_ = ObjectSystem:Instance():BindingObject(obj:GetChildByName("SurfaceGUI"):GetChildByName("InfoText"))
        e.levelText_entity_ = ObjectSystem:Instance():BindingObject(obj:GetChildByName("SurfaceGUI"):GetChildByName("LevelText"))

        e.infoText_entity_:SetProperty("TextString", "Data:" .. chess.data_.id_ .. "\n" .. string.rep("☆", chess.data_.star_))
        e.levelText_entity_:SetProperty("TextString", "Level:" .. chess.level_)
    end)

    o.chess_ = chess
    o.mapstate_ = GameEntity_ChessObject.Map_Status.Hidden

    return o
end
--#endregion


ObjectSystem = {
    ObjectPool = {},
    DirtyPool = {},
}
function ObjectSystem:new()

    local sys = {}

    sys.Tick = function(game, delta)
        ObjectSystem.Tick(game, delta)
    end

    setmetatable(sys, self)
    self.__index = self
    return sys
end
function ObjectSystem:Instance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end
function ObjectSystem:Awake()
    print("ObjectSystem Awake!")
    return self
end
function ObjectSystem:BindingObject(gameobject, entity)
    local e = entity
    if e == nil then
        e = GameEntity:new()
    end
    e.GameObject_ = gameobject
    GameEntity:RegisterEntity(e)

    ObjectSystem.ObjectPool[e.id_] = e

    return e
end
function ObjectSystem:Tick(delta)

    local creat = {}
    --刷新
    for index, value in pairs(GameEntity.EntityPool) do
        if self.ObjectPool[index] == nil then
            --创建
            creat[index] = self:LoadObject(value)
            -- table.insert(creat, self:LoadObject(value))
        end
    end
    for index, value in pairs(self.ObjectPool) do
        if GameEntity.EntityPool[index] == nil then
            --销毁
            self:DestroyObject(value)
            self.ObjectPool[index] = nil
        end
    end
    for index, value in pairs(creat) do
        self.ObjectPool[value.id_] = value
    end
    --优化，只刷新脏池子

    for index, value in pairs(ObjectSystem.DirtyPool) do
        local obj = ObjectSystem.ObjectPool[index]
        for key, val in pairs(value) do
            ObjectSystem:UpdateObject(obj, key, val)
        end
    end
    ObjectSystem.DirtyPool = {}

    return self
end
function ObjectSystem:LoadObject(entity)

    if entity.type_ == GameEntity.Type.ActorObject then
        if workSpace == nil then
            return nil
        end
        local obj = Object.Create("Avatar")
        obj.Parent = workSpace
        obj.Name = tostring(entity.id_)
        local posInit = obj.Position
        posInit.z = posInit.z + 1.5
        obj.Position = posInit
        entity.GameObject_ = obj
    elseif entity.type_ == GameEntity.Type.UI_TextObject then

        local obj = Object.Create("UIText")
        obj.Parent = SceneObjectTable:Get_PlayerUI()
        obj.Name = tostring("UIText_" .. entity.id_)
        obj.TextString = "UIText_" .. tostring(entity.id_)
        entity.GameObject_ = obj
    elseif entity.type_ == GameEntity.Type.TileHex_Object then
        local obj = SceneObjectTable:Get_TileHex_Prefab():Clone(SceneObjectTable:Get_Workspace());
        obj.Name = tostring("TileHex_" .. entity.id_)
        entity.GameObject_ = obj
    elseif entity.type_ == GameEntity.Type.ChessTileHand_Object then
        local obj = SceneObjectTable:Get_HandItem_Prefab():Clone(SceneObjectTable:Get_Workspace());
        obj.Name = tostring("ChessTileHand_" .. entity.id_)
        entity.GameObject_ = obj
    elseif entity.type_ == GameEntity.Type.ChessObject then
        local obj = SceneObjectTable:Get_ChessItem_Prefab():Clone(SceneObjectTable:Get_Workspace());
        obj.Name = tostring("ChessItem_Prefab_" .. entity.id_)
        entity.GameObject_ = obj
    end
    --初始化
    if entity.OnRenderObject_ ~= nil then
        entity:OnRenderObject_(entity.GameObject_, entity)
    end
    --注册事件改变,缓存优化
    if entity.cache_ ~= nil then
        -- print(tostring(entity))
        entity.GameObject_.Changed:Connect(function(key)
            GameEvent:Broadcast(GameEvent.Define.ObjectEvent_GetProperty, entity, key)
        end)
    end

    return entity
end
function ObjectSystem:UpdateObject(entity, key, val)
    entity.GameObject_[key] = val;
    GameEvent:Broadcast(GameEvent.Define.ObjectEvent_OnUpdate, entity, key, val)
end
function ObjectSystem:DestroyObject(entity)
    entity.GameObject_:Destroy()
    entity.GameObject_ = nil
end
--#endregion


--#region GameSystem
GameSystem = {}
function GameSystem:new()

    local sys = {}

    sys.states_ = SystemStatus.UNINIIALIZED
    sys.runtime_ = 0
    sys.GetRuntime = function(game)
        return game.runtime_
    end
    sys.GetState = function(game)
        return game.states_
    end

    sys.Start = function(game)
        game.states_ = SystemStatus.INIIALIZED
        GameSystem.Start(game)
    end
    sys.Tick = function(game, delta)

        InputSystem:Instance():Tick(delta)

        local state = game.states_
        if state ~= SystemStatus.INIIALIZED and state ~= SystemStatus.RUNNING then
            return self
        end
        game.runtime_ = game.runtime_ + delta
        GameSystem.Tick(game, delta)
    end
    sys.Stop = function(game)
        game.states_ = SystemStatus.SUSPEND
        GameSystem.Stop(game)
    end

    setmetatable(sys, self)
    self.__index = self
    return sys
end

function GameSystem:Instance()
    if self.instance == nil then
        self.instance = self:new()
        self:Awake()
    end
    return self.instance
end
function GameSystem:Awake()
    print("GameSystem Awake!")

    GameEvent:ClearEvent()

    local e = GameEvent:AddEvent(GameEvent.Define.MapEvent_OnRenderViewChanged, function(...)
        local arg = { ... }
        local oldview = arg[1]
        local newview = arg[2]
        -- print("MapEvent_OnRenderViewChanged ")
    end)
    --注册事件
    local e = GameEvent:AddEvent(GameEvent.Define.UserEvent_OnStart, function(...)
        local args = { ... }
        local player = args[1]
        local actorid = player.uid_

        local actor = GameEntity_ActorObject:Create(actorid, Vector3.New(0, 0, 0))

        BusinessSystem:Instance():AddPlayerShop(player)
        RoundSystem:Instance():GeneratePlayerRound(player)
        MapSystem:Instance():GeneratePlayerMap(player)

        if actorid == UserSystem.LocalUserData.Uid then
            MapSystem:Instance():RendererMap(player)
        end

        -- print("创建玩家:" .. tostring(actor))
    end)
    local e = GameEvent:AddEvent(GameEvent.Define.UserEvent_OnDestroy, function(...)
        local args = { ... }
        local player = args[1]
        local id = player.id_
        GameEntity_ActorObject:DestroyById(id)


        BusinessSystem:Instance():RemovePlayerShop(player)
        RoundSystem:Instance():DestroyPlayerRound(player)
        MapSystem:Instance():DestroyPlayerMap(player)

        print("删除玩家:" .. tostring(args[1]))
    end)
    local e = GameEvent:AddEvent(GameEvent.Define.RoundEvent_OnRefresh, function(...)
        print("局数轮询动画！")
        local function TraverseFunc(user)

            --给所有玩家增加金币
            local accrual = BusinessSystem:Instance():GetAccrual(user)
            local coin = user.coin_
            coin = coin + accrual
            user:SetCoin(coin)

            --升级经验（免费）
            BusinessSystem:Instance():ExpUp(user)

            --刷新商店（免费）
            BusinessSystem:Instance():RefreshStore(user)

        end
        UserSystem:Instance():TraverseUserPool(TraverseFunc)

    end)
    local e = GameEvent:AddEvent(GameEvent.Define.RoundEvent_OnStepRefresh, function(...)

        local args = { ... }
        local round = args[1]
        local player = round.viewplayer_
        -- print("RoundEvent_OnStepRefresh")
        local localUser = UserSystem:Instance().localuser_
        if player.uid_ == localUser.uid_ then

            GUISystem:Instance():TimeSlider_ResetPlay(round.timer_ * 1000) --按毫秒播放
            GUISystem:Instance():ShowUserListText()
            GUISystem:Instance():ShowGameInfoText()

            --刷新利息显示

            local accrual = BusinessSystem:Instance():GetAccrual(localUser)
            SceneObjectTable:Get_UserContent_UserMoneyPanel_AccrualText().TextString = "利息:" .. accrual
        end

        --读取对局配置

    end)
    local e = GameEvent:AddEvent(GameEvent.Define.BusinessEvent_OnBuyChess, function(...)
        local args = { ... }

        local res = args[1]
        local player = args[2]
        local index = args[3]
        local chess = args[4]

        --本地玩家更新
        if player == UserSystem:Instance().localuser_ then
            GUISystem:Instance():ShowStoreItemList(BusinessSystem:Instance().playershop_[player.uid_])
        end
    end)
    local e = GameEvent:AddEvent(GameEvent.Define.BusinessEvent_OnShowShop, function(...)
        local args = { ... }

        local list = args[1]
        local player = args[2]

        if player == UserSystem:Instance().localuser_ then
            GUISystem:Instance():ShowStoreItemList(list)
        end

        GUISystem:Instance():ShowBusinessText() -- 显示剩余仓库
    end)
    local e = GameEvent:AddEvent(GameEvent.Define.BusinessEvent_OnExpUp, function(...)
        local args = { ... }

        local user = args[1]
        local oldlevel = args[2]
        local newlevel = args[3]
        local oldExp = args[4]
        local newExp = args[5]

        if user.uid_ == UserSystem.LocalUserData.Uid then
            --            print("BusinessEvent_OnExpUp :" .. oldlevel)
            --本地玩家更新UI界面
            SceneObjectTable:Get_UserContent_UserExpPanel_ExpText().TextString = "Lv." .. newlevel
            SceneObjectTable:Get_UserContent_UserExpPanel_ExpSlider().Progress = newExp / BusinessSystem:Instance().levelExpTable_[newlevel]
        end
    end)
    local e = GameEvent:AddEvent(GameEvent.Define.MapEvent_OnRenderChessHand, function(...)
        local args = { ... }

        local isSelf = args[1]
        local gameobject = args[2]
        local index = args[3]

    end)
    local e = GameEvent:AddEvent(GameEvent.Define.BusinessEvent_OnPlayerHandAdd, function(...)
        local args = { ... }

        local user = args[1]
        local index = args[2]
        local chess = args[3]

        MapSystem:Instance().maps_[user.uid_].orginhand_[index] = chess
    end)
    local e = GameEvent:AddEvent(GameEvent.Define.BusinessEvent_OnPlayerHandRemove, function(...)
        local args = { ... }

        local user = args[1]
        local index = args[2]
        local chess = args[3]

        MapSystem:Instance().maps_[user.uid_].orginhand_[index] = nil
    end)
    local e = GameEvent:AddEvent(GameEvent.Define.UserEvent_OnCoinChanged, function(...)
        local args = { ... }
        local user = args[1]
        local oldnum = args[2]
        local newnum = args[3]
        --print("UserEvent_OnCoinChanged:" .. user.uid_ .. "|" .. oldnum .."-->" .. newnum)

        if user.uid_ == UserSystem.LocalUserData.Uid then
            --本地玩家更新UI界面
            SceneObjectTable:Get_UserContent_UserMoneyPanel_CoinText().TextString = "金币:" .. newnum
        end
    end)
    local e = GameEvent:AddEvent(GameEvent.Define.InputEvent_OnUpdate, function(...)
        --if playerInputService:IsKeyDown(Enum.KeyCode.W) then
        --    local localplayer = GameEntity_ActorObject:GetActorEntity(UserSystem.LocalUser.Uid)
        --    localplayer:SetProperty("Position", Vector3.New(0, 1, 0) + localplayer.GameObject_.Position)
        --end
    end)
    local e = GameEvent:AddEvent(GameEvent.Define.BattleEvent_OnPlayFrame, function(...)
        local args = { ... }
        local battle = args[1]
        local frame = args[2]


    end)

    local e = GameEvent:AddEvent(GameEvent.Define.ObjectEvent_SetProperty, function(...)

        local args = { ... }
        local id = args[1].id_
        local key = args[2]
        local oldVal = args[3]
        local newVal = args[4]

        if    ObjectSystem.DirtyPool[id] == nil then
            ObjectSystem.DirtyPool[id] = {}
        end

        ObjectSystem.DirtyPool[id][key] = newVal
        --print(ToString(args))
    end)

    local e = GameEvent:AddEvent(GameEvent.Define.ObjectEvent_GetProperty, function(...)

        local args = { ... }
        local entity = args[1]
        local key = args[2]

        if entity.cache_ ~= nil and entity.GameObject_ ~= nil then
            entity.cache_[key] = entity.GameObject_[key]
        end
    end)

    InputSystem:Instance():Awake()

    BusinessSystem:Instance():Awake()
    RoundSystem:Instance():Awake()
    UserSystem:Instance():Awake()
    BattleSystem:Instance():Awake()

    AnimateSystem:Instance():Awake()
    GUISystem:Instance():Awake()
    MapSystem:Instance():Awake()
    ObjectSystem:Instance():Awake()

    return self
end
function GameSystem:Start()
    print("GameSystem Start!")
    GameEvent.Broadcast(GameEvent.Define.GameEvent_OnStart)

    GUISystem:Instance():Start()
    return self
end

function GameSystem:Tick(delta)
    -- print("运行时间:" .. self:GetRuntime())

    BusinessSystem:Instance():Tick(delta)
    RoundSystem:Instance():Tick(delta)
    UserSystem:Instance():Tick(delta)
    BattleSystem:Instance():Tick(delta)

    AnimateSystem:Instance():Tick(delta)
    GUISystem:Instance():Tick(delta)
    MapSystem:Instance():Tick(delta)
    ObjectSystem:Instance():Tick(delta)

    return self
end

function GameSystem:Stop()
    print("GameSystem Stop!")
    GameEvent.Broadcast(GameEvent.Define.GameEvent_OnStop)

    GUISystem:Instance():Stop()
    return self
end
--#endregion    