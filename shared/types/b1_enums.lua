---@enum EBBKeyType
EBBKeyType = {
    BOOL_TYPE = 0,
    CLASS_TYPE = 1,
    ENUM_TYPE = 2,
    FLOAT_TYPE = 3,
    INT_TYPE = 4,
    NAME_TYPE = 5,
    NATIVE_ENUM_TYPE = 6,
    OBJECT_TYPE = 7,
    ROTATOR_TYPE = 8,
    STRING_TYPE = 9,
    VECTOR_TYPE = 10,
    EBBKeyType_MAX = 11,
}

---@enum EBGDrawDebugType
EBGDrawDebugType = {
    None = 0,
    Movement = 1,
    QTE = 2,
    MAX = 3,
}

---@enum EBGUEQCQueryType
EBGUEQCQueryType = {
    None = 0,
    SingleActor = 1,
    SingleLocation = 2,
    ActorSet = 3,
    LocationSet = 4,
    EBGUEQCQueryType_MAX = 5,
}

---@enum EBGUFSMEventName
EBGUFSMEventName = {
    FSM_EVENT_LIFE_HASTARGET = 0,
    FSM_EVENT_LIFE_GOHOME = 10,
    FSM_EVENT_LIFE_ARRIVEHOME = 11,
    FSM_EVENT_LIFE_GAZEANDSURROUND = 12,
    FSM_EVENT_LIFE_DIE = 1,
    FSM_EVENT_LIFE_REVIVE = 2,
    FSM_EVENT_LIFE_STANDBY = 3,
    FSM_EVENT_NONCOMBAT_WARNNING = 4,
    FSM_EVENT_NONCOMBAT_IDLE = 5,
    FSM_EVENT_BATTLE_BEHIT = 6,
    FSM_EVENT_BATTLE_ATTACK = 7,
    FSM_EVENT_BATTLE_WANDER = 8,
    FSM_EVENT_BATTLE_STALEMATE = 9,
    FSM_EVENT_MAX = 13,
}

---@enum EBGUFSMStateName
EBGUFSMStateName = {
    FSM_STATE_LIFE = 0,
    FSM_STATE_LIFE_RETURNHOME = 9,
    FSM_STATE_LIFE_DEAD = 1,
    FSM_STATE_BATTLE = 2,
    FSM_STATE_BATTLE_ATTACK = 3,
    FSM_STATE_BATTLE_WANDER = 4,
    FSM_STATE_BATTLE_STALEMATE = 5,
    FSM_STATE_NONCOMBAT = 6,
    FSM_STATE_NONCOMBAT_WARNNING = 7,
    FSM_STATE_NONCOMBAT_IDLE = 8,
    FSM_STATE_REVOLVEAROUND = 11,
    FSM_STATE_NEUTRALANIMAL_PATROL = 12,
    FSM_STATE_NEUTRALANIMAL_BATTLE = 13,
    FSM_STATE_NEUTRALANIMAL_ESCAPE = 14,
    FSM_STATE_INVALID = 20,
    FSM_STATE_MAX = 21,
}

---@enum EBGURunEQSObjReason
EBGURunEQSObjReason = {
    None = 0,
    Teleport = 1,
    Summon = 2,
    RandomPatrol = 3,
    GenPointSet = 4,
    EBGURunEQSObjReason_MAX = 5,
}

---@enum EBGU_PathFindingResult
EBGU_PathFindingResult = {
    FirstFindingSuccess = 0,
    SecondFindingSussess = 1,
    Fail = 2,
    EBGU_MAX = 3,
}

---@enum EBGWJoinSessionResult
EBGWJoinSessionResult = {
    Success = 0,
    SessionIsFull = 1,
    SessionDoesNotExist = 2,
    CouldNotRetrieveAddress = 3,
    AlreadyInSession = 4,
    UnknownError = 5,
    EBGWJoinSessionResult_MAX = 6,
}

---@enum EBGWLoginStatus
EBGWLoginStatus = {
    NotLoggedIn = 0,
    UsingLocalProfile = 1,
    LoggedIn = 2,
    EBGWLoginStatus_MAX = 3,
}

---@enum EBGWOnlineSessionState
EBGWOnlineSessionState = {
    NoSession = 0,
    Creating = 1,
    Pending = 2,
    Starting = 3,
    InProgress = 4,
    Ending = 5,
    Ended = 6,
    Destroying = 7,
    EBGWOnlineSessionState_MAX = 8,
}

---@enum EBGWOnlineSessionType
EBGWOnlineSessionType = {
    InvalidSession = 0,
    GameSession = 1,
    PlayerSession = 2,
    PartySession = 3,
    EBGWOnlineSessionType_MAX = 4,
}

---@enum EBGWPrivilegeResult
EBGWPrivilegeResult = {
    Unknown = 0,
    Available = 1,
    UserNotLoggedIn = 2,
    LicenseInvalid = 3,
    VersionOutdated = 4,
    NetworkConnectionUnavailable = 5,
    AgeRestricted = 6,
    AccountTypeRestricted = 7,
    AccountUseRestricted = 8,
    PlatformFailure = 9,
    EBGWPrivilegeResult_MAX = 10,
}

---@enum EBGWStreamingVolumeUsage
EBGWStreamingVolumeUsage = {
    Loading = 0,
    LoadingAndVisibility = 1,
    VisibilityBlockingOnLoad = 2,
    BlockingOnLoad = 3,
    LoadingNotVisible = 4,
    MAX = 5,
}

---@enum EBGWSubsystemType
EBGWSubsystemType = {
    Unknown = 0,
    NULL = 1,
    Steam = 2,
    Epic = 3,
    TENCENT = 4,
    GDK = 5,
    PS5 = 6,
    EBGWSubsystemType_MAX = 7,
}

---@enum EBGWUserPrivileges
EBGWUserPrivileges = {
    CanPlay = 0,
    CanPlayOnline = 1,
    CanCommunicateOnline = 2,
    CanUseUserGeneratedContent = 3,
    CanUserCrossPlay = 4,
    EBGWUserPrivileges_MAX = 5,
}

---@enum EBGW_DispLibEnvWeather
EBGW_DispLibEnvWeather = {
    Sunny = 0,
    Mist = 1,
    Rain = 2,
    Fog = 3,
    Snow = 4,
    SandStorm = 5,
    Narrative = 6,
    Night = 7,
    EBGW_MAX = 8,
}

---@enum EBUHandFootType
EBUHandFootType = {
    None = 0,
    LeftHand = 1,
    RightHand = 2,
    LeftFoot = 3,
    RightFoot = 4,
    EBUHandFootType_MAX = 5,
}

---@enum EBUTargetFilter
EBUTargetFilter = {
    Default = 0,
    MySelf = 1,
    TeamMate = 2,
    Enemy = 4,
    EBUTargetFilter_MAX = 5,
}

---@enum EBeamFXTargetActorType
EBeamFXTargetActorType = {
    Zero = 0,
    Self = 1,
    CameraLockActor = 2,
    MAX = 255,
}

---@enum ECameraBlendType
ECameraBlendType = {
    None = 0,
    BlendBySpeed = 1,
    BlendByTime = 2,
    MAX = 255,
}

---@enum ECustomTickGroup
ECustomTickGroup = {
    ECustomTickGroup_None = 0,
    PreAnimation = 101,
    BeforeStartPhsics = 111,
    BeforePostPhsics = 141,
    BeforePostUpdateWork = 151,
    ECustomTickGroup_MAX = 152,
}

---@enum EFriendsListsType
EFriendsListsType = {
    Default = 0,
    OnlinePlayers = 1,
    InGamePlayers = 2,
    InGameAndSessionPlayers = 3,
    EFriendsListsType_MAX = 4,
}

---@enum EFriendsStateType
EFriendsStateType = {
    Online = 0,
    Offline = 1,
    Away = 2,
    ExtendedAway = 3,
    DoNotDisturb = 4,
    Chat = 5,
    EFriendsStateType_MAX = 6,
}

---@enum EGSAngleCenterDirection
EGSAngleCenterDirection = {
    Forward = 0,
    Back = 1,
    Left = 2,
    Right = 3,
    EGSAngleCenterDirection_MAX = 4,
}

---@enum EGSBlendTypeG
EGSBlendTypeG = {
    GSNone = 0,
    GSLinear = 1,
    GSEaseIn = 2,
    GSEaseOut = 3,
    GSEaseInOut = 4,
    MAX = 255,
}

---@enum EGSEnvContextBase
EGSEnvContextBase = {
    Querier = 0,
    Player = 1,
    PlayerCamera = 2,
    SceneItemByTag = 3,
    Target = 4,
    CustomActor = 5,
    EGSEnvContextBase_MAX = 6,
}

---@enum EGSEnvTraceMode
EGSEnvTraceMode = {
    None = 0,
    Navigation = 1,
    CapsuleTraceByPawn = 2,
    EGSEnvTraceMode_MAX = 3,
}

---@enum EGSLevelSetResult
EGSLevelSetResult = {
    Success = 0,
    RefusedByVolume = 1,
    LevelNotFound = 2,
    NullPtrParam = 3,
    WorldTypeError = 4,
    UnnecessaryUnload = 5,
    BlockedByHotLevelStreaming = 6,
    UnknownError = 7,
    EGSLevelSetResult_MAX = 8,
}

---@enum EGSLevelState
EGSLevelState = {
    Auto = 0,
    LoadedVisible = 1,
    LoadedInvisible = 2,
    Unloaded = 3,
    EGSLevelState_MAX = 4,
}

---@enum EGSNetCloseResult
EGSNetCloseResult = {
    Test = 0,
    Unknown = 1,
    Success = 2,
    EGSNetCloseResult_MAX = 3,
}

---@enum EGSPointOnCircleSpacingMethod
EGSPointOnCircleSpacingMethod = {
    BySpaceBetween = 0,
    ByNumberOfPoints = 1,
    EGSPointOnCircleSpacingMethod_MAX = 2,
}

---@enum EGSStatType
EGSStatType = {
    NONE = 0,
    CYCLE = 1,
    MEMORY = 2,
    NUM = 3,
    EGSStatType_MAX = 4,
}

---@enum EGSSweepCheckShapeType
EGSSweepCheckShapeType = {
    Zero = 0,
    BoxShape = 1,
    SphereShape = 2,
    CapsuleShape = 3,
    MAX = 255,
}

---@enum EGsEnAnimN
EGsEnAnimN = {
    None = 0,
    MontageJumpToSection = 1,
    PlayerNiagaraFX = 2,
    Max = 3,
}

---@enum EGsEnAnimNS
EGsEnAnimNS = {
    None = 0,
    AttackState = 1,
    AttackRotation = 2,
    SweepCheck = 3,
    ComboWindow = 4,
    EditorHelper = 5,
    DevLineHit = 6,
    AddState = 7,
    AddBuff = 8,
    SlowTime = 9,
    CalcAMScale = 10,
    CastDingShen = 11,
    SetCurveValueToMesh = 12,
    HeadLock = 13,
    HandAndFootLock = 14,
    ChangeMoveMode = 15,
    ZatoiSPScore = 16,
    AMSpeedRate = 17,
    AMCurveMove = 18,
    Aiming = 19,
    Shooting = 20,
    Casting = 21,
    MoveAttackState = 22,
    AISkillFeature = 23,
    MontageJumpToSection = 24,
    AbortWindow = 25,
    SetCurveValueToHair = 26,
    SyncAnimation = 27,
    Max = 28,
}

---@enum EOnlineActivityOutcomeType
EOnlineActivityOutcomeType = {
    Completed = 0,
    Failed = 1,
    Cancelled = 2,
    EOnlineActivityOutcomeType_MAX = 3,
}

---@enum EOnlinePresenceStateType
EOnlinePresenceStateType = {
    Online = 0,
    Offline = 1,
    Away = 2,
    ExtendedAway = 3,
    DoNotDisturb = 4,
    Chat = 5,
    EOnlinePresenceStateType_MAX = 6,
}

---@enum ERefRotatorType
ERefRotatorType = {
    Zero = 0,
    RefByController = 1,
    RefByPlayer = 2,
    RefByPlayerQTE = 3,
    MAX = 255,
}

---@enum ESortType
ESortType = {
    none = 0,
    big_to_small = 1,
    small_to_big = 2,
    ESortType_MAX = 3,
}

---@enum EStartGameInstanceTypeForCS
EStartGameInstanceTypeForCS = {
    StartCS_UnKnow = 0,
    StartCS_StandAlone = 1,
    StartCS_DedicateServer = 2,
    StartCS_PIE_Standalone = 3,
    StartCS_PIE_ListenServer = 4,
    StartCS_PIE_Client = 5,
    StartCS_PIE_DedicateServer = 6,
    StartCS_MAX = 7,
}

---@enum ESweepCheckHitFilterType
ESweepCheckHitFilterType = {
    Zero = 0,
    NotInSameTeam = 1,
    FilterMaster = 2,
    MAX = 255,
}

---@enum ESweepCheckType
ESweepCheckType = {
    SweepCheck = 0,
    AttackWarning = 1,
    Max = 2,
}

---@enum ETamerType
ETamerType = {
    None = 0,
    LevelLoaded = 1,
    Spawned = 2,
    Summoned = 3,
    ETamerType_MAX = 4,
}

---@enum ETargetLevelStreamingState
ETargetLevelStreamingState = {
    RemainCurrent = 0,
    HideOnly = 1,
    Unloaded = 2,
    ETargetLevelStreamingState_MAX = 3,
}

---@enum EVolumeStreamingMethod
EVolumeStreamingMethod = {
    StreamingLevel = 0,
    WorldCompositionGroup = 1,
    WorldPartition = 2,
    EVolumeStreamingMethod_MAX = 3,
}

---@enum EWeatherType
EWeatherType = {
    None = 0,
    Snowy = 1,
    Rainy = 2,
    EWeatherType_MAX = 3,
}

