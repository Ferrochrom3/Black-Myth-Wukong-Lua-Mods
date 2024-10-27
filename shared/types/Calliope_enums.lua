---@enum ECalliopeActivationState
ECalliopeActivationState = {
    NeverActivated = 0,
    Active = 1,
    WasActive = 2,
    ECalliopeActivationState_MAX = 3,
}

---@enum ECalliopeNetMode
ECalliopeNetMode = {
    Any = 0,
    Authority = 1,
    ClientOnly = 2,
    ServerOnly = 3,
    SinglePlayerOnly = 4,
    ECalliopeNetMode_MAX = 5,
}

---@enum ECalliopeNodeStyle
ECalliopeNodeStyle = {
    Condition = 0,
    Default = 1,
    InOut = 2,
    Latent = 3,
    Logic = 4,
    SubGraph = 5,
    Transit = 6,
    ECalliopeNodeStyle_MAX = 7,
}

---@enum ECalliopeViewType
ECalliopeViewType = {
    None = 0,
    Quest = 1,
    Combo = 2,
    State = 3,
    Behavior = 4,
    Skill = 5,
    Movie = 6,
    Process = 7,
    Task = 8,
    FSM = 9,
    Dialogue = 10,
    Guide = 11,
    Max = 12,
}

---@enum EGsDynamicObstacleManagePolice
EGsDynamicObstacleManagePolice = {
    SameAsPrevious = 0,
    KeepOpen = 1,
    KeepClose = 2,
    AsBattleInDoor = 3,
    AsBattleOutDoor = 4,
    EGsDynamicObstacleManagePolice_MAX = 5,
}

---@enum EGsDynamicObstacleState
EGsDynamicObstacleState = {
    Opened = 0,
    Closed = 1,
    EGsDynamicObstacleState_MAX = 2,
}

---@enum EGsInteractorManagePolice
EGsInteractorManagePolice = {
    SameAsPrevious = 0,
    KeepInteractive = 1,
    KeepNotInteractive = 2,
    EGsInteractorManagePolice_MAX = 3,
}

---@enum EGsInteractorState
EGsInteractorState = {
    Interactive = 0,
    NotInteractive = 1,
    EGsInteractorState_MAX = 2,
}

---@enum EGsManagedParamType
EGsManagedParamType = {
    None = 0,
    Parameter = 1,
    SceneObj = 2,
    DynamicObstacle = 3,
    Overlap = 4,
    Interactor = 5,
    Spawner = 6,
    Unit = 7,
    NPCUnit = 8,
    GroupUnit = 9,
    IntParam = 32,
    SequenceID = 33,
    TaskStageID = 34,
    BuffID = 35,
    GroupID = 36,
    AiConversationID = 37,
    TaskLineID = 38,
    NameParam = 64,
    ArchiveLabel = 65,
    StreamingLevel = 66,
    AssociationUnitConfig = 67,
    AssociationOnFightSkillID = 68,
    FollowPartnerConfig = 69,
    TeamID = 70,
    IdleAMIdx = 71,
    InteractGroupID = 72,
    StreamingLevelStateConfig = 73,
    LeisureAnimIndex = 74,
    EGsManagedParamType_MAX = 75,
}

---@enum EGsNPCBuffState
EGsNPCBuffState = {
    Add = 0,
    Remove = 1,
    EGsNPCBuffState_MAX = 2,
}

---@enum EGsNPCShowState
EGsNPCShowState = {
    Show = 0,
    Hide = 1,
    EGsNPCShowState_MAX = 2,
}

---@enum EGsOverlapManagePolice
EGsOverlapManagePolice = {
    SameAsPrevious = 0,
    KeepEnable = 1,
    KeepDisable = 2,
    EGsOverlapManagePolice_MAX = 3,
}

---@enum EGsOverlapState
EGsOverlapState = {
    Enabled = 0,
    Disabled = 1,
    EGsOverlapState_MAX = 2,
}

---@enum EGsSpawnerManagePolice
EGsSpawnerManagePolice = {
    SameAsPrevious = 0,
    Auto = 1,
    SameAsBattle = 2,
    OnlyBeginSameAsBattle = 3,
    OnlyEndSameAsBattle = 4,
    Disable = 5,
    BeginLikeStateEndLikeBattle = 6,
    EGsSpawnerManagePolice_MAX = 7,
}

---@enum EGsSpawnerState
EGsSpawnerState = {
    Disabled = 0,
    Enabled = 1,
    Spawned = 2,
    EGsSpawnerState_MAX = 3,
}

---@enum EGsStreamingLevelManagePolice
EGsStreamingLevelManagePolice = {
    SameAsPrevious = 0,
    DefaultLoadAndShow = 1,
    DefaultUnload = 2,
    EGsStreamingLevelManagePolice_MAX = 3,
}

---@enum EGsStreamingLevelState
EGsStreamingLevelState = {
    LoadedAndShown = 0,
    Unloaded = 1,
    EGsStreamingLevelState_MAX = 2,
}

---@enum EGsUnitManagePolice
EGsUnitManagePolice = {
    SameAsPrevious = 0,
    Status = 1,
    StatusWithoutHP = 2,
    Spawn = 3,
    Destroy = 4,
    EGsUnitManagePolice_MAX = 5,
}

---@enum EGsUnitResetType
EGsUnitResetType = {
    No = 0,
    Destroy = 1,
    Status = 2,
    Spawn = 3,
    StatusWithoutHp = 4,
    None = 5,
    EGsUnitResetType_MAX = 6,
}

