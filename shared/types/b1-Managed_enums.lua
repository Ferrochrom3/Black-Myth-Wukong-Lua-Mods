---@enum AbnormalStateType
AbnormalStateType = {
    None = 0,
    Abnormal_Freeze = 1,
    Abnormal_Burn = 2,
    Abnormal_Poison = 3,
    Abnormal_Thunder = 4,
    Abnormal_Yin = 5,
    Abnormal_Yang = 6,
    EnumMax = 7,
    AbnormalStateType_MAX = 8,
}

---@enum AbnromalDispActionType
AbnromalDispActionType = {
    AccProcess = 0,
    FinalBegin = 1,
    FinalLoop = 2,
    HitExt = 3,
    DeadKeep = 4,
    DeadDisappear = 5,
    AbnromalDispActionType_MAX = 6,
}

---@enum AbnromalDispActionType_FreezeExt
AbnromalDispActionType_FreezeExt = {
    Broken = 0,
    AutoRelease = 1,
    ShakeFreeze = 2,
    AbnromalDispActionType_MAX = 3,
}

---@enum AccAbnormalValueType
AccAbnormalValueType = {
    IncreaseByValue = 0,
    IncreaseByINV10000 = 1,
    AccAbnormalValueType_MAX = 2,
}

---@enum AiBreakInteractionType
AiBreakInteractionType = {
    Battle = 0,
    PlayerFaraway = 1,
    PlayerLeaveInteractArea = 2,
    Other = 3,
    AiBreakInteractionType_MAX = 4,
}

---@enum AiConversationFactType
AiConversationFactType = {
    FactType_Int = 0,
    FactType_Bool = 1,
    FactType_String = 2,
    FactType_MAX = 3,
}

---@enum AiWeakInteractCheckType
AiWeakInteractCheckType = {
    BothPlayerAndFollowPartner = 0,
    OnlyFollowPartner = 1,
    AiWeakInteractCheckType_MAX = 2,
}

---@enum AimToType
AimToType = {
    None = 0,
    Target = 1,
    AimToType_MAX = 2,
}

---@enum AimType
AimType = {
    NONE = 0,
    AIM_TO_CUR_TARGET = 1,
    XYLineFromOwner = 2,
    AimType_MAX = 3,
}

---@enum AkCurveInterpolationCS
AkCurveInterpolationCS = {
    Log3 = 0,
    Sine = 1,
    Log1 = 2,
    InvSCurve = 3,
    Linear = 4,
    SCurve = 5,
    Exp1 = 6,
    SineReciprocal = 7,
    Exp3 = 8,
    Constant = 9,
    AkCurveInterpolationCS_MAX = 10,
}

---@enum AkEventStopMode
AkEventStopMode = {
    Auto = 0,
    WhenUnitDead = 1,
    ByTime = 2,
    AkEventStopMode_MAX = 3,
}

---@enum AngleBaseType
AngleBaseType = {
    Self2Target = 0,
    Target2Self = 1,
    SelfXAxis = 2,
    AngleBaseType_MAX = 3,
}

---@enum AnimMode
AnimMode = {
    DefaultAnim = 0,
    PatrolAnim = 1,
    EQSRunAnim = 2,
    ShieldAnim = 3,
    PowerStorageAnim = 4,
    AnimMode_MAX = 5,
}

---@enum AnimalDistributionSpawnTendency
AnimalDistributionSpawnTendency = {
    Concentrated = 0,
    Random = 1,
    AnimalDistributionSpawnTendency_MAX = 2,
}

---@enum AnimalSpawnPosType
AnimalSpawnPosType = {
    EQS_Runtime = 0,
    PresetPointset = 1,
    AnimalSpawnPosType_MAX = 2,
}

---@enum AnimalSpawnRotType
AnimalSpawnRotType = {
    RandomYaw = 0,
    AnimalSpawnRotType_MAX = 1,
}

---@enum ArchiveSaveSource
ArchiveSaveSource = {
    ArchiveSaveV1 = 1,
    RoleDataMerge = 2,
    PushTaskStageSuccess = 3,
    PlayerDead = 4,
    BossOrEliteDead = 5,
    SeqPlayFinished = 6,
    BackToMainMenu = 7,
    TeleportFinish = 8,
    Console = 9,
    Interact = 10,
    NewGamePlus = 11,
    ReSet820Data = 12,
    TravelLevel = 13,
    ExitGame = 14,
    ArchiveSaveSource_MAX = 15,
}

---@enum AreaAbilityType
AreaAbilityType = {
    Default = 0,
    PlayDialogue = 8,
    AreaAbilityType_MAX = 9,
}

---@enum AreaType
AreaType = {
    SimpleTrigger = 0,
    Volume = 1,
    AreaType_MAX = 2,
}

---@enum AreaUnitFilterType
AreaUnitFilterType = {
    All = 0,
    Player = 1,
    LocalPlayer = 2,
    WukongOnly = 3,
    SpecifiedResID = 4,
    WukongTeam = 5,
    AreaUnitFilterType_MAX = 6,
}

---@enum AssetExportMode
AssetExportMode = {
    INCREMENT = 0,
    COMPLETELY = 1,
    CUSTOM_NAME = 2,
    ONLY_JSON_DATA = 3,
    AssetExportMode_MAX = 4,
}

---@enum AssociationUnitActiveType
AssociationUnitActiveType = {
    ActiveImmediately = 0,
    NoActive = 1,
    AssociationUnitActiveType_MAX = 2,
}

---@enum AssociationUnitSpawnType
AssociationUnitSpawnType = {
    BySceneItem = 0,
    ByEQS = 1,
    AssociationUnitSpawnType_MAX = 2,
}

---@enum AtkFXOnGroundType
AtkFXOnGroundType = {
    UseDBC = 0,
    UseMatPainter = 1,
    AtkFXOnGroundType_MAX = 2,
}

---@enum AttackIKType
AttackIKType = {
    None = 0,
    TerrainSlope = 1,
    AvatarBonePitchOnly = 2,
    AvatarBoneRollOnly = 3,
    FishSpike = 4,
    AvatarLockPointPitch = 5,
    AttackIKType_MAX = 6,
}

---@enum AttackOffsetType
AttackOffsetType = {
    AttackOffset_None = 0,
    AttackOffset_WorldRotOffset = 1,
    AttackOffset_MAX = 2,
}

---@enum AttackStyle
AttackStyle = {
    Heavy = 0,
    Prop = 1,
    Poke = 2,
    AttackStyle_MAX = 3,
}

---@enum AttackerArea
AttackerArea = {
    Forward = 0,
    LeftSide = 1,
    RightSide = 2,
    Backward = 3,
    AttackerArea_MAX = 4,
}

---@enum AutoMoveMode
AutoMoveMode = {
    AttackMove = 0,
    ForcedMove = 1,
    SimpleMove = 2,
    AutoMoveMode_MAX = 3,
}

---@enum AwardProbabilityRaiseType
AwardProbabilityRaiseType = {
    None = 0,
    RaiseToFirst = 1,
    RaiseToSecond = 2,
    RaiseToTarget = 3,
    EnumMax = 4,
    AwardProbabilityRaiseType_MAX = 5,
}

---@enum AwardStateConditionType
AwardStateConditionType = {
    None = 0,
    IsInBattle = 1,
    InDistanceToCenter = 2,
    TraceTeleportDistance = 3,
    PlayerDead = 4,
    EnumMax = 5,
    AwardStateConditionType_MAX = 6,
}

---@enum BANItemTeleportType
BANItemTeleportType = {
    TeleportTargetRebirthPointId = 0,
    RebirthPointTeleport = 1,
    BANItemTeleportType_MAX = 2,
}

---@enum BattleCoopReason
BattleCoopReason = {
    UnitDead = 0,
    BattleCoopReason_MAX = 1,
}

---@enum BattleStartConditionType
BattleStartConditionType = {
    Auto = 0,
    UnitActive = 1,
    SpawnerActive = 2,
    EnterOverlap = 3,
    BattleStartConditionType_MAX = 4,
}

---@enum BeAttackedBlendType
BeAttackedBlendType = {
    None = 0,
    Physics = 1,
    AdditiveAnim = 2,
    MatJitter = 4,
    Scar = 8,
    BeAttackedBlendType_MAX = 9,
}

---@enum BeginEndOverlapTriggerDirectionType
BeginEndOverlapTriggerDirectionType = {
    None = 0,
    SameDirection = 1,
    DiffDirection = 2,
    BeginEndOverlapTriggerDirectionType_MAX = 3,
}

---@enum Birth_AbnormalStateImmueType
Birth_AbnormalStateImmueType = {
    None = 0,
    FreezeImmue = 1,
    BurnImmue = 2,
    PoisonImmue = 3,
    ThunderImmue = 4,
    Birth_MAX = 5,
}

---@enum BlockAMSelectMode
BlockAMSelectMode = {
    SequenceSelectMode = 0,
    RandomSelectMode = 1,
    BlockAMSelectMode_MAX = 2,
}

---@enum BlockCounterType
BlockCounterType = {
    AddCountAfterBounced = 0,
    AddCountAfterBlock = 1,
    BlockCounterType_MAX = 2,
}

---@enum BuffControlCondition
BuffControlCondition = {
    EnterCollisionArea = 0,
    StayCollisionArea = 1,
    LeaveCollisionArea = 2,
    BuffControlCondition_MAX = 3,
}

---@enum BuffSourceType
BuffSourceType = {
    GM = 0,
    AutoTest = 1,
    BAIT = 2,
    MFOverlapEvent = 3,
    BuffTrigger = 4,
    AI = 5,
    AbnormalState = 6,
    Notify = 7,
    ProjectilBasic = 8,
    AssociationUnit = 9,
    AttackFeedback = 10,
    Armor = 11,
    BeImmobilized = 12,
    BehaviorGraph = 13,
    Birth = 14,
    SpawnInfoBirth = 15,
    ChargeSkill = 16,
    CliffFall = 17,
    DestructibleBullet = 18,
    EquipFabao = 19,
    GroupAI = 20,
    HardMove = 21,
    IronBody = 22,
    Jump = 23,
    MonsterTrans = 24,
    NPCShow = 25,
    PartMgr = 26,
    Patrol = 27,
    Performer = 28,
    PhantomRush = 29,
    PhysicalMove = 30,
    AIInteract = 31,
    PlayerInteract = 32,
    PlayerItem = 33,
    PlayerTrans = 34,
    PreciseDodge = 35,
    SkillInsts = 36,
    Stamina = 37,
    SummonBehavior = 38,
    Talent = 39,
    UnitItem = 40,
    CMG = 41,
    CPG = 42,
    CQG = 43,
    AddBuffEffect = 44,
    BattleTrigger = 45,
    TaskManager = 46,
    EnvironmentSurfaceEffect = 47,
    MagicSection = 48,
    SmartCastSkill = 49,
    InputAction = 50,
    SpiderSilkEntangle = 51,
    VigourDropper = 52,
    SealingSpell = 53,
    AnimationSync = 54,
    Default = 55,
    IntervalTrigger = 56,
    DumperTruckTrigger = 57,
    BossRoom = 58,
    Detonate = 59,
    ManualSplineMove = 60,
    PotentialEnergy = 61,
    SkillInputAssist = 62,
    TransitionPhase = 63,
    GCFSMTravelLevel = 64,
    SummonDesc = 65,
    CostAttrByBuff = 66,
    CloudMove = 67,
    LifeSaving = 68,
    MagicallyChange = 69,
    BuffRule = 70,
    BeAttacked = 71,
    Trans2DaSheng = 72,
    FollowPartner = 73,
    BuffSourceType_MAX = 74,
}

---@enum BuffTarget
BuffTarget = {
    Player = 0,
    OtherUnit = 1,
    SceneUnit = 2,
    BuffTarget_MAX = 3,
}

---@enum ButtonStat
ButtonStat = {
    Normal = 0,
    Lock = 1,
    Disable = 2,
    NotUse = 3,
    Hide = 4,
    ButtonStat_MAX = 5,
}

---@enum ButtonUIStat
ButtonUIStat = {
    None = 0,
    Normal = 1,
    Hovered = 2,
    Focused = 3,
    LockNormal = 4,
    LockHovered = 5,
    LockFocused = 6,
    Actived = 7,
    Disable = 8,
    NotUse = 9,
    LockActived = 10,
    Hide = 11,
    ButtonUIStat_MAX = 12,
}

---@enum CGI_Global
CGI_Global = {
    IsIgnoreWXLogin = 0,
    CGI_MAX = 1,
}

---@enum CGI_Loading
CGI_Loading = {
    HasArchive = 0,
    IsInStartUpLevel = 1,
    IsInBattleLevel = 2,
    IsInDefaultBattleLevel = 3,
    HasArchiveIdInContext = 4,
    IsInServer = 5,
    IsInDedicateServer = 6,
    IsInListenServer = 7,
    IsStandAlone = 8,
    IsInNetClient = 9,
    IsInPIEClient = 10,
    TravelUrlIsListen = 11,
    TravelUrlHasHost = 12,
    IsEnableLoadingUserInput = 13,
    HasPlayerLoginBtlSvr = 14,
    IsInToilet = 15,
    IsInContextLevel = 16,
    TeleportNeedLevelTravel = 17,
    SwitchTeleportType = 18,
    IsReplayWorldLoadFinish = 19,
    PlayerGameStateCheck = 20,
    IsInPreviewSeqContext = 21,
    NeedSwitchPlayerGameMode = 22,
    MonsterTeleportArchiveExist = 23,
    BattleLevelTravelNeedWaitCameraBlend = 24,
    IsInMap = 25,
    OpenSeamlessLevelTravel = 26,
    IsNeedPostLeaveLevel = 27,
    IsNeedPreEnterLevel = 28,
    IsNeedResetGameInstanceData = 29,
    CheckGlobalTravelMode = 30,
    IsNeedOpenLoadingScreen = 31,
    IsNeedCloseLoadingScreen = 32,
    IsFirstStartGame = 33,
    CheckGMFlagsSupportUnknownTravel = 34,
    IsDriverVersionMismatch = 35,
    IsPlayGoDownloadIncomplete = 36,
    SwitchFillContextArchiveDataType = 37,
    IsNeedPreStartGameProcess = 38,
    SwitchSaveArchiveDegree = 39,
    DetermineTravelLevelByHandlingArchive = 40,
    CGI_MAX = 41,
}

---@enum CPS_Transaction
CPS_Transaction = {
    TaskCondition = 0,
    CPS_MAX = 1,
}

---@enum CacheAssetState
CacheAssetState = {
    Unloaded = 0,
    Loading = 1,
    Loaded = 2,
    FileNotFound = 255,
    CacheAssetState_MAX = 256,
}

---@enum CalliopeFSMType
CalliopeFSMType = {
    GI_Global = 0,
    GI_Loading = 1,
    PS_Transaction = 2,
    CalliopeFSMType_MAX = 3,
}

---@enum CameraParamType
CameraParamType = {
    ArmLocationX = 0,
    ArmLocationY = 1,
    ArmLocationZ = 2,
    ArmSocketOffsetX = 3,
    ArmSocketOffsetY = 4,
    ArmSocketOffsetZ = 5,
    ArmLength = 6,
    ControllerPitch = 7,
    ControllerRoll = 8,
    ControllerYaw = 9,
    DmcActorLocationX = 10,
    DmcActorLocationY = 11,
    DmcActorLocationZ = 12,
    DmcActorPitch = 13,
    DmcActorRoll = 14,
    DmcActorYaw = 15,
    DmcArmLength = 16,
    PlayerPosition2D = 17,
    PlayerPositionZ = 18,
    TargetPosition2D = 19,
    TargetPositionZ = 20,
    EnumMax = 21,
    CameraParamType_MAX = 22,
}

---@enum CameraType
CameraType = {
    None = 0,
    Normal = 1,
    Cine = 2,
    Rail = 3,
    Crane = 4,
}

---@enum CardinalDir
CardinalDir = {
    Default = 0,
    E = 1,
    S = 2,
    W = 3,
    CardinalDir_MAX = 4,
}

---@enum CastSkillResult
CastSkillResult = {
    CSR_OK = 0,
    CSR_CAST_CHR_FAILED = 1,
    CSR_FIND_NO_SKILLDESC = 2,
    CSR_FIND_NO_UNITDESC = 3,
    CSR_FIND_NO_SKILLMONTAGE = 4,
    CSR_FIND_NO_ANIMINST = 5,
    CSR_CAN_CAST_SKILL_CHECK_FAILED = 6,
    CSR_OTHER = 7,
    CSR_MAX = 8,
}

---@enum CastSkillSourceType
CastSkillSourceType = {
    Default = 0,
    Blueprint = 1,
    PersonalTest = 2,
    Notify = 3,
    QA = 4,
    SkillPreview = 5,
    BT = 6,
    AI_GOAP = 7,
    AI_Combo = 8,
    AI_Score = 9,
    AI_ReturnHome = 10,
    AI_OnFight = 11,
    AI_Born = 12,
    GroupAI = 13,
    OnFightTrigger = 14,
    AIInteract = 15,
    ChargeSkill = 16,
    CloudMove = 17,
    DodgeSkill = 18,
    FaBaoSkill = 19,
    GlideMove = 20,
    GM = 21,
    HardMove = 22,
    Intimidate = 23,
    MagicallyChange = 24,
    PhantomRush = 25,
    PlayerItem = 26,
    PlayerTrans = 27,
    PreciseDodge = 28,
    Rebirth = 29,
    BornSkill = 30,
    PhaseTransition = 31,
    SmartCastSkill = 32,
    SummonBehavior = 33,
    CBG = 34,
    CPG = 35,
    CQG = 36,
    ComboDebug = 37,
    Interact = 38,
    Teleport = 39,
    SummonBorn = 40,
    Trans = 41,
    TransitionPhase = 42,
    TurnSkill = 43,
    CastSkillSourceType_MAX = 44,
}

---@enum ChangeMatUnitAttrType
ChangeMatUnitAttrType = {
    None = 0,
    Velocity = 1,
    ChangeMatUnitAttrType_MAX = 2,
}

---@enum ChangeTargetType
ChangeTargetType = {
    None = 0,
    Player = 1,
    Master = 2,
    Summon = 3,
    SkillBaseTarget = 4,
    UnitGuid = 5,
    ChangeTargetType_MAX = 6,
}

---@enum CharacterSlopeAlignType
CharacterSlopeAlignType = {
    None = 0,
    AOPlan = 1,
    RotWholeBodyPlan = 2,
    CharacterSlopeAlignType_MAX = 3,
}

---@enum ChargeSkillEndEventType
ChargeSkillEndEventType = {
    ChargeEnd = 0,
    TimeOut = 1,
    StaminaOver = 2,
    PELevelGrowUp = 3,
    ChargeSkillEndEventType_MAX = 4,
}

---@enum CheckConditionType
CheckConditionType = {
    None = 0,
    AITarget = 1,
    HpLow = 2,
    InRange = 3,
    HasBuff = 4,
    InAbnormalState = 5,
    BreakPart = 101,
    Beatback = 102,
    CastSkill = 103,
    CheckConditionType_MAX = 104,
}

---@enum ChildActorActionType
ChildActorActionType = {
    CastSkill = 0,
    AddBuff = 1,
    RemoveBuff = 2,
    SpawnSocketAttachTamer = 3,
    ChildActorActionType_MAX = 4,
}

---@enum ChildActorFilterType
ChildActorFilterType = {
    Socket = 0,
    ResId = 1,
    NickName = 2,
    Buff = 3,
    All = 4,
    ChildActorFilterType_MAX = 5,
}

---@enum CircusMemberType
CircusMemberType = {
    Unknown = 0,
    Tamer = 1,
    InteractiveObj = 2,
    SpawnWaves = 3,
    Overlap = 4,
    JJSObstacle = 5,
    CircusMemberType_MAX = 6,
}

---@enum ClientTamerInitNetState
ClientTamerInitNetState = {
    Dead = 0,
    UnLoaded = 1,
    ClientTamerInitNetState_MAX = 2,
}

---@enum CollisionBodyType
CollisionBodyType = {
    CollisionBody_CapsuleComp = 1,
    CollisionBody_SkeletalMeshComp = 2,
    CollisionBody_MAX = 3,
}

---@enum CollisionProfileUniqueIDType
CollisionProfileUniqueIDType = {
    PhysicalMove = 0,
    CollisionProfileUniqueIDType_MAX = 1,
}

---@enum ComboConditionType
ComboConditionType = {
    None = 0,
    UnitAttr = 1,
    SimpleState = 2,
    UnitState = 3,
    HasBuff = 4,
    PotentialEnergy = 5,
    Charge = 6,
    CeilingHeight = 7,
    HasTalent = 8,
    StanceType = 9,
    IsFalling = 11,
    InJumpUpper = 12,
    NotInStrideUpJump = 13,
    AirSkillCount = 14,
    FlooDistance = 15,
    MoveMode = 16,
    HasMoveInput = 17,
    InLittleMonkeyStage = 18,
    InPreDaShengStage = 19,
    InDaShengStage = 20,
    InPressedSpinModeState = 21,
    EnumMax = 22,
    ComboConditionType_MAX = 23,
}

---@enum ComboTargetType
ComboTargetType = {
    None = 0,
    CurrentAITarget = 1,
    Player = 2,
    ComboTargetType_MAX = 3,
}

---@enum ConditionalRelation
ConditionalRelation = {
    And = 0,
    Or = 1,
    ConditionalRelation_MAX = 2,
}

---@enum ConditionsTarget
ConditionsTarget = {
    Player = 0,
    FindByTag = 1,
    ManualSelect = 2,
    ConditionsTarget_MAX = 3,
}

---@enum ConfigShowType
ConfigShowType = {
    All = 0,
    StandAlone = 1,
    Online = 2,
    GameConsole = 4,
    PC = 8,
    NotStartUp = 16,
    PlotTransMode = 32,
    Host = 64,
    WithArchive = 128,
    ConfigShowType_MAX = 129,
}

---@enum ContinueBehaviorType
ContinueBehaviorType = {
    None = 0,
    Skill = 1,
    Beatback = 2,
    AnimationSyncing = 3,
    ContinueBehaviorType_MAX = 4,
}

---@enum CustomizedKeyUnlockCondition
CustomizedKeyUnlockCondition = {
    AlwaysShow = 0,
    MagicArtifact = 1,
    VigorSkill = 2,
    Cloud = 3,
    PropStance = 4,
    PokeStance = 5,
    CustomizedKeyUnlockCondition_MAX = 6,
}

---@enum DamageCalcType
DamageCalcType = {
    Normal = 0,
    ElemDot = 1,
    HPMaxRatioAbs = 2,
    DamageCalcType_MAX = 3,
}

---@enum DamageNumberType
DamageNumberType = {
    None = 0,
    Normal = 1,
    Critical = 2,
    RecoveryHP = 3,
    Backstap = 4,
    DamageNumberType_MAX = 5,
}

---@enum DamageReason
DamageReason = {
    None = 0,
    Buff = 1,
    Skill = 2,
    FallDmg = 3,
    DeadZone = 4,
    DamageReason_MAX = 5,
}

---@enum DamageTypeEnum
DamageTypeEnum = {
    NONE = 0,
    PLAYER_DMG = 1,
    PLAYER_DMG_CRIT = 2,
    PLAYER_DMG_FREEZE = 3,
    PLAYER_DMG_BURN = 4,
    PLAYER_DMG_POSITION = 5,
    PLAYER_DMG_THUNDER = 6,
    PLAYER_MISS = 7,
    PLAYER_HEAL = 8,
    ENEMY_DMG = 9,
    ENEMY_DMG_CRIT = 10,
    ENEMY_DMG_FREEZE = 11,
    ENEMY_DMG_BURN = 12,
    ENEMY_DMG_POSITION = 13,
    ENEMY_DMG_THUNDER = 14,
    ENEMY_MISS = 15,
    ENEMY_HEAL = 16,
    All = 17,
    DamageTypeEnum_MAX = 18,
}

---@enum DeadEllipsisType
DeadEllipsisType = {
    None = 0,
    NoAbnormalState = 1,
    NoHitAction = 2,
    NoAttackerArea = 3,
    BothNoAttackerAreaNHitAction = 4,
    NoGears = 5,
    NoDepot = 6,
    DeadEllipsisType_MAX = 7,
}

---@enum DeathDissolvePlayType
DeathDissolvePlayType = {
    DeadAMEnd = 0,
    DeadAMBegin = 1,
    DeathDissolvePlayType_MAX = 2,
}

---@enum DefaulValueType
DefaulValueType = {
    Percent = 0,
    PlayerHp = 1,
    PlayerMp = 2,
    PlayerSt = 3,
    UnitHp = 4,
    MultiMapping = 5,
    DefaulValueType_MAX = 6,
}

---@enum DefaultCamArmMode
DefaultCamArmMode = {
    Default = 0,
    Close = 1,
    Normal = 2,
    Far = 3,
    Free = 4,
    DefaultCamArmMode_MAX = 5,
}

---@enum DependType
DependType = {
    Auto = 0,
    UpDown = 1,
    DependType_MAX = 2,
}

---@enum DestructibleMassLevel
DestructibleMassLevel = {
    Basic = 0,
    WalkDestroy = 1,
    RunDestroy = 2,
    SprintDestroy = 3,
    GiantDestroy = 4,
    Indestructible = 5,
    DestructibleMassLevel_MAX = 6,
}

---@enum DestructibleStrengthLevel
DestructibleStrengthLevel = {
    LightHitDestroy = 0,
    MediumHitDestroy = 1,
    HeavyHitDestroy = 2,
    SpecialHitDestroy = 3,
    Indestructible = 99,
    DestructibleStrengthLevel_MAX = 100,
}

---@enum DetectedElementType
DetectedElementType = {
    None = 0,
    SimpleState = 1,
    UnitState = 2,
    HasBuff = 3,
    UnitAttr = 4,
    UnitActived = 5,
    UnitInActived = 6,
    AbnormalState = 7,
    FsmState = 8,
    SkillCoolDown = 9,
    DistanceFromTarget = 10,
    SkillCanCast = 11,
    CustomFsmState = 12,
    LastBeAttackedStiffLevel = 13,
    DistanceFromMaster = 14,
    ActorYawRotation = 15,
    GlobalCastSkillCount = 16,
    DurCastSkill = 17,
    CurrentBeAttackedStiffLevel = 18,
    CurSkillCostDmgNum = 19,
    SocketUnitsDead = 20,
    DistanceFromNearestPlayer = 21,
    SpecifyResIdUnitsDead = 22,
    FamilySpecifyUnitAttr = 23,
    Random = 24,
    FamilyUnitAliveNum = 25,
    TargetInAngleRange = 26,
    CompareBuffLayer = 27,
    CompareGamePlusCount = 28,
    CheckSurfaceType = 29,
    HasStoryCanTalkInThisLevel = 30,
    StoryInCollingOffPeriod = 31,
    PlayerLeisureOverTime = 32,
    DetectedElementType_MAX = 33,
}

---@enum DetectedForceType
DetectedForceType = {
    Friend = 0,
    Enemy = 1,
    Other = 2,
    DetectedForceType_MAX = 3,
}

---@enum DetectedUnitType
DetectedUnitType = {
    Self = 0,
    Target = 1,
    Master = 2,
    Player = 3,
    UseSmartUnit = 4,
    DetectedUnitType_MAX = 5,
}

---@enum DisTestBaseType
DisTestBaseType = {
    OwnCharacter = 0,
    Feature = 1,
    DisTestBaseType_MAX = 2,
}

---@enum DisTestFilterType
DisTestFilterType = {
    DTF_Min = 0,
    DTF_Max = 1,
}

---@enum DispLibAdvanceNiagaraDispLogicMode
DispLibAdvanceNiagaraDispLogicMode = {
    Custom = 0,
    StandardDirBeHit = 1,
    StandardInteraction = 2,
    PlanePostProcess = 3,
    TinyOffsetBeHit = 4,
    MatchingToNearestSocket = 5,
    DBCMergedSystem = 6,
    DispLibAdvanceNiagaraDispLogicMode_MAX = 7,
}

---@enum DispLibAttachConstraintMode
DispLibAttachConstraintMode = {
    Fixed = 0,
    FixedTime = 1,
    RootVelocityThreshold = 2,
    AttachedSocketVelocityThreshold = 3,
    AttachedSocketVelocityAndTorsionThreshold = 4,
    AttachedSocketDistanceACCAndTorsionThreshold = 5,
    DispLibAttachConstraintMode_MAX = 6,
}

---@enum DispLibCollisionProfileNames
DispLibCollisionProfileNames = {
    NoCollision = 0,
    BlockAll = 1,
    OverlapAll = 2,
    BlockAllDynamic = 3,
    GroundBrick = 4,
    Rock_Big = 5,
    Rock_Small = 6,
    DispLibCollisionProfileNames_MAX = 7,
}

---@enum DispLibDBCActorGroup
DispLibDBCActorGroup = {
    None = 0,
    BattleUnit = 1,
    Interact = 2,
    Projectile = 3,
    EquipPreview = 4,
    DLDWorld = 5,
    DispLibDBCActorGroup_MAX = 6,
}

---@enum DispLibDBCAdvProcessFLinearColorMode
DispLibDBCAdvProcessFLinearColorMode = {
    Standard = 0,
    RandomAlphaOnSpawn = 1,
    RandomAlpha = 2,
    UCurve = 3,
    DispLibDBCAdvProcessFLinearColorMode_MAX = 4,
}

---@enum DispLibDBCAdvProcessModifyNiagaraParamUtilMode
DispLibDBCAdvProcessModifyNiagaraParamUtilMode = {
    Standard = 0,
    RandomOnSpawn = 1,
    Random = 2,
    TimedUCurve = 3,
    SpecAtt = 4,
    SpecAttUCurve = 5,
    DispLibDBCAdvProcessModifyNiagaraParamUtilMode_MAX = 6,
}

---@enum DispLibDBCAdvProcessReleaseParameterControlMode
DispLibDBCAdvProcessReleaseParameterControlMode = {
    OnEventRealEnd = 0,
    OnParamSelfEndStageOver = 1,
    DispLibDBCAdvProcessReleaseParameterControlMode_MAX = 2,
}

---@enum DispLibDBCAdvProcessScalarMode
DispLibDBCAdvProcessScalarMode = {
    Standard = 0,
    RandomOnSpawn = 1,
    Random = 2,
    UCurve = 3,
    DispLibDBCAdvProcessScalarMode_MAX = 4,
}

---@enum DispLibDBCAnimNotifyTarget
DispLibDBCAnimNotifyTarget = {
    None = 0,
    Self = 1,
    EnemyTarget = 2,
    DispLibDBCAnimNotifyTarget_MAX = 3,
}

---@enum DispLibDBCAxisMode
DispLibDBCAxisMode = {
    WS_X = 0,
    WS_Y = 1,
    WS_Z = 2,
    WS_N_X = 3,
    WS_N_Y = 4,
    WS_N_Z = 5,
    Bone_X = 6,
    Bone_Y = 7,
    Bone_Z = 8,
    Bone_N_X = 9,
    Bone_N_Y = 10,
    Bone_N_Z = 11,
    Owner_X = 12,
    Owner_Y = 13,
    Owner_Z = 14,
    Owner_N_X = 15,
    Owner_N_Y = 16,
    Owner_N_Z = 17,
    Bone_Velocity = 18,
    Bone_N_Velocity = 19,
    Owner_Velocity = 20,
    Owner_N_Velocity = 21,
    Zero = 22,
    DispLibDBCAxisMode_MAX = 23,
}

---@enum DispLibDBCCompsFilterMode
DispLibDBCCompsFilterMode = {
    AllComps = 0,
    ByTags = 1,
    ByExcludeTags = 2,
    DispLibDBCCompsFilterMode_MAX = 3,
}

---@enum DispLibDBCCustomEventTriggerMode
DispLibDBCCustomEventTriggerMode = {
    Standard = 0,
    Immediate = 1,
    DispLibDBCCustomEventTriggerMode_MAX = 2,
}

---@enum DispLibDBCCustomEventType
DispLibDBCCustomEventType = {
    None = 0,
    Free_One = 1,
    Free_Two = 2,
    DispLibDBCCustomEventType_MAX = 3,
}

---@enum DispLibDBCEffectDestroyTiming
DispLibDBCEffectDestroyTiming = {
    OnEndDispStageEnd = 0,
    OnEndDispStageStart = 1,
    DispLibDBCEffectDestroyTiming_MAX = 2,
}

---@enum DispLibDBCEndMode
DispLibDBCEndMode = {
    AutoRelease = 0,
    FixDuration = 1,
    ProcedureNotity = 2,
    DispLibDBCEndMode_MAX = 3,
}

---@enum DispLibDBCEndReason
DispLibDBCEndReason = {
    StandardEnd = 0,
    Break = 1,
    MainCompDeath = 2,
    MinorCompDeath = 3,
    ForceStop = 4,
    DispLibDBCEndReason_MAX = 5,
}

---@enum DispLibDBCEndStageMode
DispLibDBCEndStageMode = {
    CommonEnd = 0,
    EndImmediately = 1,
    DispLibDBCEndStageMode_MAX = 2,
}

---@enum DispLibDBCFollowTriggerMode
DispLibDBCFollowTriggerMode = {
    None = 0,
    OnEndStageBegin = 1,
    AfterEndStage = 2,
    OnBreakBegin = 3,
    AfterBreak = 4,
    DispLibDBCFollowTriggerMode_MAX = 5,
}

---@enum DispLibDBCLightMode
DispLibDBCLightMode = {
    PointLight = 0,
    SpotLight = 1,
    DispLibDBCLightMode_MAX = 2,
}

---@enum DispLibDBCMaterialsFilterMode
DispLibDBCMaterialsFilterMode = {
    AllMats = 0,
    BySlotNames = 1,
    ByExcludeSlotNames = 2,
    ByIndexes = 3,
    ByExcludeIndexes = 4,
    ByUMaterial = 5,
    ByExcludeUMaterial = 6,
    DispLibDBCMaterialsFilterMode_MAX = 7,
}

---@enum DispLibDBCModNiagaraParamsPauseMode
DispLibDBCModNiagaraParamsPauseMode = {
    Pause = 0,
    None = 1,
    GotoEndDispStage = 2,
    RealEndAndNoEndDispStage = 3,
    DispLibDBCModNiagaraParamsPauseMode_MAX = 4,
}

---@enum DispLibDBCNiagaraFilterMode
DispLibDBCNiagaraFilterMode = {
    AllNiagara = 0,
    ByName = 1,
    ByExcludeName = 2,
    ByTags = 3,
    ByExcludeTags = 4,
    BySystemAsset = 5,
    ByExcludeSystemAsset = 6,
    DispLibDBCNiagaraFilterMode_MAX = 7,
}

---@enum DispLibDBCNiagaraForceVisibleStateMode
DispLibDBCNiagaraForceVisibleStateMode = {
    ImmdSetCompVisibleState = 0,
    None = 1,
    SetNiagaraParam = 2,
    DispLibDBCNiagaraForceVisibleStateMode_MAX = 3,
}

---@enum DispLibDBCNiagaraScalabilityKillMode
DispLibDBCNiagaraScalabilityKillMode = {
    IntoEndDispStage = 0,
    ForceNoEndDispStage = 1,
    ReuseByReset = 2,
    DispLibDBCNiagaraScalabilityKillMode_MAX = 3,
}

---@enum DispLibDBCNiagaraScalabilityPoolMode
DispLibDBCNiagaraScalabilityPoolMode = {
    GlobalSameDataAssets = 0,
    GlobalSameNiagaraSystem = 1,
    PreSourceOwnerSameNiagaraSystem = 2,
    DispLibDBCNiagaraScalabilityPoolMode_MAX = 3,
}

---@enum DispLibDBCPCurvePointColorMode
DispLibDBCPCurvePointColorMode = {
    DirectSet = 0,
    CacheCurValue = 1,
    ParamInitialValue = 2,
    OnSpawn_ValueMultiplyRandom_0_1 = 3,
    OnSpawn_ValueMultiplyRandom_N1_1 = 4,
    ValueMultiplyRandom_0_1 = 5,
    ValueMultiplyRandom_N1_1 = 6,
    DispLibDBCPCurvePointColorMode_MAX = 7,
}

---@enum DispLibDBCPCurvePointScalarMode
DispLibDBCPCurvePointScalarMode = {
    DirectSet = 0,
    CacheCurValue = 1,
    ParamInitialValue = 2,
    OnSpawn_ValueMultiplyRandom_0_1 = 3,
    OnSpawn_ValueMultiplyRandom_N1_1 = 4,
    ValueMultiplyRandom_0_1 = 5,
    ValueMultiplyRandom_N1_1 = 6,
    DispLibDBCPCurvePointScalarMode_MAX = 7,
}

---@enum DispLibDBCPauseMode
DispLibDBCPauseMode = {
    Pause = 0,
    None = 1,
    GotoEndDispStage = 2,
    RealEndAndNoEndDispStage = 3,
    PauseAndHide = 4,
    ForceDestory = 5,
    DispLibDBCPauseMode_MAX = 6,
}

---@enum DispLibDBCRequesterIdentity
DispLibDBCRequesterIdentity = {
    Notify = 0,
    NotifyState = 1,
    UENativeComp = 2,
    GSECS_BUSComp = 3,
    GSECS_BWSComp = 4,
    DBCDataAsset = 5,
    DispLibDBCRequesterIdentity_MAX = 6,
}

---@enum DispLibDBCScalarNoiseMode
DispLibDBCScalarNoiseMode = {
    NoNoise = 0,
    Sin = 1,
    PerlinNoise = 2,
    DispLibDBCScalarNoiseMode_MAX = 3,
}

---@enum DispLibDBCSnapGroundRotationMode
DispLibDBCSnapGroundRotationMode = {
    HitPointNormalProjected = 0,
    CompXAxis = 1,
    DispLibDBCSnapGroundRotationMode_MAX = 2,
}

---@enum DispLibDBCSpecialAttritubeTpye
DispLibDBCSpecialAttritubeTpye = {
    Velocity = 0,
    DispLibDBCSpecialAttritubeTpye_MAX = 1,
}

---@enum DispLibDBCWindMotorMode
DispLibDBCWindMotorMode = {
    NoWind = 0,
    LocalDirectionalWind = 1,
    LocalOmniWind = 2,
    LocalVortexWind = 3,
    LocalAbsorbWind = 4,
    DispLibDBCWindMotorMode_MAX = 5,
}

---@enum DispLibMaterialParamsInheritMode
DispLibMaterialParamsInheritMode = {
    NoInherit = 0,
    InheritAllSameNameParams = 1,
    InheritOverrideSameNameParams = 2,
    CustomInheritParamsNameArray = 3,
    DispLibMaterialParamsInheritMode_MAX = 4,
}

---@enum DispLibSocketSearchMode
DispLibSocketSearchMode = {
    OnlyOriginSocket = 0,
    OnlyInterfaceSocket = 1,
    OriginSocketPrecedence = 2,
    InterfaceSocketPrecedence = 3,
    DispLibSocketSearchMode_MAX = 4,
}

---@enum DispLibSystemActiveMode
DispLibSystemActiveMode = {
    NormalActive = 0,
    RefuseNewRequest = 1,
    Deactive = 2,
    DispLibSystemActiveMode_MAX = 3,
}

---@enum DistributionType
DistributionType = {
    SenderToAllMembers = 0,
    SenderToOtherMembers = 1,
    DistributionType_MAX = 2,
}

---@enum DonutBulletAudioLocationType
DonutBulletAudioLocationType = {
    None = 0,
    InnerBorder = 1,
    OuterBorder = 2,
    Between = 3,
    DonutBulletAudioLocationType_MAX = 4,
}

---@enum DropItemFlyCurveType
DropItemFlyCurveType = {
    FastBezier = 0,
    CurveTranslation = 1,
    DropItemFlyCurveType_MAX = 2,
}

---@enum DropItemPerfromType
DropItemPerfromType = {
    WithOutPick = 0,
    Standard = 1,
    WithDropAnim = 2,
    FixedPoint = 3,
    DropItemPerfromType_MAX = 4,
}

---@enum DropReason
DropReason = {
    None = 0,
    UnitDead = 1,
    Collection = 2,
    Destruction = 3,
    Challenge = 4,
    DropItemMgr = 5,
    DropReason_MAX = 6,
}

---@enum DynamicObstacleManagePolice
DynamicObstacleManagePolice = {
    SameAsPrevious = 0,
    KeepOpen = 1,
    KeepClose = 2,
    AsBattleInDoor = 3,
    AsBattleOutDoor = 4,
    DynamicObstacleManagePolice_MAX = 5,
}

---@enum DynamicObstacleState
DynamicObstacleState = {
    Opened = 0,
    Closed = 1,
    DynamicObstacleState_MAX = 2,
}

---@enum EABPMoveMode
EABPMoveMode = {
    None = 0,
    Locomotion_Simple4Dir = 1,
    Locomotion_Paragon4Dir = 2,
    Locomotion_Simple8Dir = 3,
    MotionMatching = 4,
    CarMove = 5,
    Locomotion_Player8Dir = 6,
    SimpleFlyControl = 7,
    PlayerLocomotion = 8,
    ComplexFlyControl = 9,
    MonsterLocomotion = 10,
    AdvancedMonsterLocomotion = 11,
    QuadrupedLocomotion = 12,
    CloudLocomotion = 13,
    EABPMoveMode_MAX = 14,
}

---@enum EAIAttentionFeatureType
EAIAttentionFeatureType = {
    None = 0,
    NearestEnemy = 1,
    SkillArea = 2,
    StandInSkillArea = 3,
    SkillCastRange = 4,
    AttackableEnemy = 5,
    EAIAttentionFeatureType_MAX = 6,
}

---@enum EAIBasicActionState
EAIBasicActionState = {
    None = 0,
    Executing = 1,
    Finish = 2,
    ErrorRequestType = 3,
    SkillNotFound = 4,
    RequestNoFound = 5,
    WaitingAbort = 6,
    Aborted = 7,
    EAIBasicActionState_MAX = 8,
}

---@enum EAICheckDistanceType
EAICheckDistanceType = {
    LocationDistanceXY = 0,
    LocationDistance = 1,
    ZDistance = 2,
    NavigationDistance = 3,
    EAICheckDistanceType_MAX = 4,
}

---@enum EAICheckTarget
EAICheckTarget = {
    CachedScencItem = 0,
    CurLockTarget = 1,
    FirstLocalPlayer = 2,
    EQSTarget = 3,
    EAICheckTarget_MAX = 4,
}

---@enum EAIMoveSpeedType
EAIMoveSpeedType = {
    JOG = 0,
    RUN = 1,
    SPRINT = 2,
    EAIMoveSpeedType_MAX = 3,
}

---@enum EAIRequestType
EAIRequestType = {
    MoveToLoc = 0,
    MoveToActor = 1,
    DirDamage = 2,
    MoveSkill = 3,
    EAIRequestType_MAX = 4,
}

---@enum EAISearchTargetWay
EAISearchTargetWay = {
    FindTargetNearest = 0,
    FindTargetFurthest = 1,
    FindTargetByHatred = 2,
    EAISearchTargetWay_MAX = 3,
}

---@enum EAMScaleRateAxis
EAMScaleRateAxis = {
    AllByScaleRateAxisX = 0,
    All = 1,
    AxisX = 2,
    AxisY = 3,
    AxisZ = 4,
    AxisZLanding = 5,
    EAMScaleRateAxis_MAX = 6,
}

---@enum EAMScaleType
EAMScaleType = {
    ScaleForTarget = 0,
    ScaleForSceneItem = 1,
    ScaleForCachedPoint = 2,
    UsePureScale = 3,
    UseSkillBaseTarget = 4,
    EAMScaleType_MAX = 5,
}

---@enum EANTriggerEffectTargetType
EANTriggerEffectTargetType = {
    Owner = 0,
    Master = 1,
    LastAttacker = 2,
    EANTriggerEffectTargetType_MAX = 3,
}

---@enum EB1CameraMode
EB1CameraMode = {
    Normal = 0,
    G4 = 1,
    EB1CameraMode_MAX = 2,
}

---@enum EBGMDisableType
EBGMDisableType = {
    None = 0,
    BossBattleBGM = 1,
    EliteBattleBGM = 2,
    MonsterBattleBGM = 3,
    WanderBGM = 4,
    TransMusic = 32,
    EBGMDisableType_MAX = 33,
}

---@enum EBGMPriority
EBGMPriority = {
    BossBattleBGM = 0,
    EliteBattleBGM = 1,
    MonsterBattleBGM = 2,
    WanderBGM = 3,
    EBGMPriority_MAX = 4,
}

---@enum EBGMVolumeConditionSusCountType
EBGMVolumeConditionSusCountType = {
    Once = 0,
    All = 1,
    EBGMVolumeConditionSusCountType_MAX = 2,
}

---@enum EBGMVolumeConditionType
EBGMVolumeConditionType = {
    None = 0,
    UnitAlive = 1,
    UnitInBattle = 2,
    IntervalTriggerActive = 3,
    EBGMVolumeConditionType_MAX = 4,
}

---@enum EBGUAutoTestPlayerComboKey
EBGUAutoTestPlayerComboKey = {
    None = 0,
    LightAttackDown = 1,
    LightAttackUp = 2,
    HeavyAttackDown = 3,
    HeavyAttackUp = 4,
    Dodge = 5,
    EBGUAutoTestPlayerComboKey_MAX = 6,
}

---@enum EBGUAutoTestPlayerMagicType
EBGUAutoTestPlayerMagicType = {
    None = 0,
    ShenFa = 1,
    HaoMao = 2,
    QiShu = 3,
    BianShen = 4,
    EBGUAutoTestPlayerMagicType_MAX = 5,
}

---@enum EBGUBotLifeTimeState
EBGUBotLifeTimeState = {
    Idle = 0,
    Battle = 1,
    Dead = 2,
    Patrol = 3,
    ReturnHome = 4,
    EnumMax = 5,
    EBGUBotLifeTimeState_MAX = 6,
}

---@enum EBGUBulletDestroyReason
EBGUBulletDestroyReason = {
    None = 0,
    HitItemDestroy = 1,
    HitCharacterDestroy = 2,
    TimeOutDestroy = 3,
    SpeedLowDestroy = 4,
    FlyBackDestroy = 5,
    FarthestDistOutDestroy = 6,
    EffectDestroy = 7,
    AttachedParentNotValid = 8,
    LevelSequenceDestroy = 9,
    EBGUBulletDestroyReason_MAX = 10,
}

---@enum EBGUBulletDispReason
EBGUBulletDispReason = {
    None = 0,
    Spawn = 1,
    HitChr = 2,
    HitSceneItem = 3,
    LifeOver = 4,
    BeHit = 5,
    EBGUBulletDispReason_MAX = 6,
}

---@enum EBGUComboKey
EBGUComboKey = {
    None = 0,
    LightAttackDown = 1,
    HeavyAttackDown = 2,
    LightAttackUp = 3,
    HeavyAttackUp = 4,
    RollDown = 5,
    RollUp = 6,
    EBGUComboKey_MAX = 7,
}

---@enum EBGUDeadLogicType
EBGUDeadLogicType = {
    None = 0,
    Normal = 1,
    FlyByPhysical = 2,
    AI = 3,
    Sequence = 4,
    EBGUDeadLogicType_MAX = 5,
}

---@enum EBGUJumpTargetType
EBGUJumpTargetType = {
    CurrentTarget = 0,
    SceneItem = 1,
    EBGUJumpTargetType_MAX = 2,
}

---@enum EBGUMoveAIType
EBGUMoveAIType = {
    None = 0,
    KeepFacingTarget = 1,
    Flock = 2,
    FacingVelocity = 3,
    EBGUMoveAIType_MAX = 4,
}

---@enum EBGUMoveAcceptableRadiusType
EBGUMoveAcceptableRadiusType = {
    NoInclude = 0,
    IncludeSelf = 1,
    IncludeTarget = 2,
    BothIncludeSelfAndTarget = 3,
    EBGUMoveAcceptableRadiusType_MAX = 4,
}

---@enum EBGUMoveCurveType
EBGUMoveCurveType = {
    None = 0,
    SpeedCurve = 1,
    DistanceCurve = 2,
    EBGUMoveCurveType_MAX = 3,
}

---@enum EBGUMoveMode
EBGUMoveMode = {
    None = 0,
    Normal = 1,
    BeatBack = 2,
    SideWalk = 3,
    AttackRotate = 4,
    TPSRotate = 5,
    AIPathMove = 6,
    AnimationMontage = 7,
    CameraG4Move = 8,
    AIWallAndCellMove = 9,
    CurveSplineMove = 10,
    JumpMove = 11,
    StandRotate = 12,
    CarMontage = 13,
    FlyControl = 14,
    PlayerAutoMove = 15,
    GlideMove = 16,
    ParkourMove = 17,
    SplineFlyControl = 18,
    RelativeFloatMove = 19,
    AIFlyMove = 20,
    RotateWithCam = 21,
    PhysicsSimulation = 22,
    ManualSplineMove = 23,
    NpcGuideSplineMove = 24,
    AISpiderMove = 25,
    TurretRotate = 26,
    CloudMove = 27,
    EnumMax = 28,
    EBGUMoveMode_MAX = 29,
}

---@enum EBGUSimpleState
EBGUSimpleState = {
    Normal = 0,
    ImmueDamage = 1,
    CantAttack = 2,
    CantMove = 3,
    CancelLifeSavingCD = 4,
    IgnoreTargetElemDef = 5,
    IgnoreAllInput = 6,
    CanHitBullet = 7,
    PEClearProtect = 8,
    Immobilizing = 9,
    ImmueDmgExceptElementDmg = 10,
    ImmueFreezeAcc = 11,
    BanInputButCamera = 12,
    CanBlendToDeadAM = 13,
    ImmueFrozenBrokenAM = 14,
    CantBeDead = 15,
    CantPlayShakeFreezeAM = 16,
    ImmueStiff = 17,
    ImmueImmobilizing = 18,
    ImmueAnimationSyncing = 19,
    ForbidLifeSavingHair = 20,
    BreakPart2Weak = 22,
    ImmueBurnAcc = 23,
    ImmuePoisonAcc = 24,
    ImmueThunderAcc = 25,
    CantSweepUnit = 26,
    UseCarMontageMoveMode = 27,
    CantBeSweepChecked = 28,
    ImmueDeadZone = 29,
    CantBeLock = 30,
    StaminaDepleted = 31,
    SeduceAttack = 32,
    CancelSkillCD = 33,
    MoveSlowly = 35,
    CantBeBaseTarget = 38,
    SkillSuperArmor = 39,
    StaminaLock = 40,
    HRCounterattackProtectOneFrame = 42,
    BreakSkillSuperArmor = 43,
    Silent = 44,
    BounceAttack = 45,
    CanForceAttackInChargeSkill = 47,
    CanTriggerBeHitAdditiveAnim = 48,
    DynamicUpperBodyMode = 50,
    DynamicLeftArmMode = 51,
    DynamicRightArmMode = 52,
    LockStateWalking = 53,
    FlyControlMode = 54,
    TPSMode = 55,
    PlayerInSeq = 56,
    ImmueAttackPerformEffect = 57,
    DisableFreezeFrame = 58,
    ImmueBeAttackedPerformEffect = 59,
    KeepMMRunning = 61,
    CanDefeatTTTB = 62,
    Mute = 63,
    LockRotation = 64,
    Imperceptible = 66,
    IgnoreHostile = 68,
    InPhaseTransition = 69,
    InPointAttraction = 71,
    ForcePerformance = 72,
    PlayerCantLock = 73,
    CanTriggerBlockNormal = 74,
    ForceSkill = 75,
    BreakBlock = 76,
    InAnimationSyncing = 77,
    CanTriggerBlockInSPState = 78,
    BreakBlock2Weak = 79,
    InTTTB = 80,
    MontageSectionJumpApproved = 81,
    Frozen = 82,
    FreezeImmue = 83,
    BurnImmue = 84,
    PoisonImmue = 85,
    ThunderImmue = 86,
    PhysicsSimulationMoveMode = 87,
    PhantomRush = 88,
    BreakImmobilize2Weak = 89,
    BeTaunted = 90,
    SplineFlyWaiting = 91,
    PlayerDeadNoPunish = 92,
    SpiderSilkyHardMoving = 93,
    FrozenMoving = 94,
    MuddyMoving = 95,
    WinddyMoving = 96,
    ImmuneNeutral = 97,
    ImmunePositive = 98,
    ImmuneNegative = 99,
    InUpdraft = 100,
    Interacting = 101,
    CantShowBlood = 102,
    PendingDeathInAnimationSyncing = 103,
    IgnoreSpell = 104,
    IgnoreRollSkill = 105,
    IgnoreUnitTransSkill = 107,
    IgnoreSpinLightInput = 108,
    IgnoreInteractInput = 109,
    IgnoreMoveInput = 110,
    IgnoreJumpInput = 111,
    IgnoreLightAttackInput = 112,
    IgnoreHeavyAttackInput = 113,
    YinImmue = 114,
    YangImmue = 115,
    CommonDamageImmue = 116,
    StrongDamageImmue = 117,
    IgnoreAlignCapsule2Surface = 118,
    WithinOceanSea = 119,
    NoAutoTransformBack = 120,
    DeadUseFixCamera = 121,
    IgnoreMoveBackInput = 123,
    IgnoreXAxisMoveInput = 124,
    DisableAutoRecoverFreeze = 125,
    DisableAutoRecoverBurn = 126,
    DisableAutoRecoverPoison = 127,
    DisableAutoRecoverThunder = 128,
    DisableAutoRecoverYin = 129,
    DisableAutoRecoverYang = 130,
    CantHatredTick = 133,
    Berserk = 134,
    IgnoreBattleInfoInUnitBar = 135,
    CantTransBack = 136,
    TransEnergyLock = 137,
    PELock = 138,
    DamageTransfer = 139,
    RidingExitingStatus = 140,
    CantTrans = 141,
    BanLegacyTalent = 142,
    CloudMove = 143,
    CricketIdle = 144,
    DisableImmobilizedBreakAnim = 145,
    EnableSpecialImmobilizedBreakAnim = 146,
    FabaoEnergyLock = 147,
    VigorEnergyLock = 148,
    CantGainFabaoEnergy = 149,
    CantGainVigorEnergy = 150,
    InteractCricketLoop = 151,
    InInteractAnimationSyncing = 152,
    RefuseAttackRotation = 153,
    RefuseAMScale = 154,
    DisableHRCounterAttack = 155,
    DisableDamageNumUI = 156,
    Camouflage = 157,
    CantShowLock = 158,
    PreAnimationSyncing = 159,
    IgnoreVigorSkill = 160,
    CantInVigorSkill = 161,
    CantInteract = 162,
    Sentry = 163,
    LockMP = 164,
    CantBeAutoLockTarget = 165,
    CantShowDamageUI = 166,
    TargetCantShowLock = 167,
    CantTriggerPreciseDodge = 168,
    BanTrans2DaSheng = 169,
    CantCastFaBao = 170,
    CantTransInSeq = 171,
    EnumMax = 172,
    EBGUSimpleState_MAX = 173,
}

---@enum EBGUSpeedCtrlID
EBGUSpeedCtrlID = {
    MoveSpeedRate = 0,
    Custom = 1,
    EnumMax = 2,
    EBGUSpeedCtrlID_MAX = 3,
}

---@enum EBGUUnitState
EBGUUnitState = {
    None = 0,
    Attacking = 1,
    AttackMoving = 2,
    AttackRotation = 3,
    Beatback = 4,
    InComboWindow = 5,
    Dead = 6,
    SideWalking = 7,
    Sprinting = 8,
    Walking = 9,
    AtkComboKeyCache = 10,
    DodgeComboKeyCache = 11,
    MagicKeyCache = 12,
    InDodgeWindow = 13,
    InMagicWindow = 14,
    HRCounterattacking = 15,
    ShooterMode = 16,
    BMMoveAttack = 17,
    AttackAlignUpperBodyToSlope = 18,
    AttackAlignWholeBodyToSlope = 19,
    JumpMoving = 20,
    FloatingHit = 21,
    GlideMoving = 22,
    InMoveWindow = 23,
    BlockBeatBack = 24,
    PerfectBlockBeatBack = 25,
    BlockBounced = 26,
    FreezeAccProtect = 27,
    ImpactActionPlaying = 28,
    BlindStiff = 29,
    Teleporting = 30,
    InAbortWindow = 31,
    InAnimationSyncDeathWindow = 32,
    JumpWindow = 33,
    PhasePerformance = 34,
    LifeSavingHair_FakeDead = 35,
    LifeSavingHair_Rebirth = 36,
    VigorKeyCache = 37,
    InVigorWindow = 38,
    ItemSkillKeyCache = 39,
    InItemSkillWindow = 40,
    LifeSavingHairBlocking = 41,
    InInteractWindow = 42,
    InCloudWindow = 43,
    InChapterClearWorkFlow = 44,
    EnumMax = 45,
    EBGUUnitState_MAX = 46,
}

---@enum EBGW_TextureSysMemMask
EBGW_TextureSysMemMask = {
    None = 0,
    SystemUI = 1,
    Vfx_NonStreamed = 2,
    LandScape = 4,
    GrayBox_HeightMap = 8,
    Vfx_Atlas = 16,
    EBGW_MAX = 17,
}

---@enum EBPBuffID
EBPBuffID = {
    NoneBuff = 0,
    SmallStunBuff = 200,
    BigStunBuff = 201,
    SkillCastingBuff = 202,
    ShieldDefenceBuff = 203,
    SpawnDoingBuff = 206,
    TianjiangEnterAIStage2 = 208,
    FightBackBuff = 209,
    ImmueStiffBuff = 210,
    SuperImmueStiffBuff = 211,
    InvincibleBuff = 212,
    ImmueDamage = 213,
    DemoChangeCharacter = 216,
    DemoFTXDInvincibleBuff = 218,
    DemoTianJiangInterQTEBuff = 219,
    EnumMax = 255,
    EBPBuffID_MAX = 256,
}

---@enum EBSelectTargetRangeType
EBSelectTargetRangeType = {
    None = 0,
    CameraLock = 1,
    MeeleAttack = 2,
    EnumMax = 3,
    EBSelectTargetRangeType_MAX = 4,
}

---@enum EBTTargetType
EBTTargetType = {
    Target = 0,
    Player = 1,
    SceneItem = 2,
    Location = 3,
    AlignToCamFwd = 4,
    None = 5,
    EBTTargetType_MAX = 6,
}

---@enum EBUStateTrigger
EBUStateTrigger = {
    None = 0,
    Die = 1,
    Rebirth = 2,
    CastSkillSuccess = 3,
    AttackStateBegin = 4,
    AttackRotationBegin = 5,
    SkillBreak = 6,
    Beatback = 7,
    EnterComboWindow = 8,
    AtkRebounding = 9,
    UnitInputWalkPressed = 10,
    UnitInputWalkRelease = 11,
    UnitInputSprintPressed = 12,
    UnitInputSprintRelease = 13,
    BreakSprint = 14,
    EnableMoveInSkill = 15,
    EnterAtkComboKeyCache = 16,
    EnterDodgeComboKeyCache = 17,
    EnterDodgeWindow = 18,
    EnterMagicKeyCache = 19,
    EnterMagicWindow = 20,
    HRCounterattackBegin = 21,
    ShooterModeTrigger = 22,
    ShooterModeClear = 23,
    BMMoveAttackTrigger = 24,
    BMMoveAttackClear = 25,
    AttackAlignUpperBodyToSlopeBegin = 26,
    AttackAlignWholeBodyToSlopeBegin = 27,
    JumpMovingStart = 28,
    JumpMovingStop = 29,
    ShootModeTigger = 30,
    ShootModeClear = 31,
    AIInputSprint = 32,
    AIInputRun = 33,
    AIInputWalk = 34,
    BeginFloatingHit = 35,
    EndFloatingHit = 36,
    EnterGlideMove = 37,
    EndGlideMove = 38,
    EnterMoveWindow = 39,
    EnterBlockBeatBack = 70,
    EnterPerfectBlockBeatBack = 71,
    EnterBlockBounced = 72,
    LeaveAllBlockState = 73,
    FreezeAccProtectBegin = 74,
    EnableImpactAction = 75,
    EnterBlindStiff = 76,
    TeleportBegin = 77,
    TeleportEnd = 78,
    EnterAbortWindow = 79,
    EnterAnimationSyncDeathWindow = 80,
    EnterJumpWindow = 81,
    ExitJumpWindow = 82,
    StartJump = 83,
    StartMoveInMoveWindow = 84,
    EnterPhasePerformance = 85,
    ExitPhasePerformance = 86,
    Enter_LifeSavingHair_FakeDead = 87,
    Enter_LifeSavingHair_Rebirth = 88,
    Exit_LifeSavingHair = 89,
    EnterVigorKeyCache = 90,
    EnterVigorWindow = 91,
    EnterItemSkillKeyCache = 92,
    EnterItemSkillWindow = 93,
    EnterLifeSavingHairBlocking = 94,
    ExitLifeSavingHairBlocking = 95,
    EnterInteractWindow = 96,
    EnterCloudWindow = 97,
    EnterChapterClearWorkFlow = 98,
    ExitChapterClearWorkFlow = 99,
    EnumMax = 100,
    EBUStateTrigger_MAX = 101,
}

---@enum EDBCTransformType
EDBCTransformType = {
    SweepCheck = 0,
    Normal = 1,
    EDBCTransformType_MAX = 2,
}

---@enum EDPSCalTimeType
EDPSCalTimeType = {
    Total = 0,
    FromLastHit = 1,
    EDPSCalTimeType_MAX = 2,
}

---@enum EEQCType
EEQCType = {
    None = 0,
    Target = 1,
    Player = 2,
    Querier = 3,
    EEQCType_MAX = 4,
}

---@enum EFXActorType
EFXActorType = {
    None = 0,
    DestructibleObject = 1,
    NonPreTracingDestructibleObject = 2,
    EFXActorType_MAX = 3,
}

---@enum EFXAnimalMoveType
EFXAnimalMoveType = {
    NormalMove = 0,
    SplineMove = 1,
    EFXAnimalMoveType_MAX = 2,
}

---@enum EFXAnimalSpawnMomentType
EFXAnimalSpawnMomentType = {
    SpawnAtBegin = 0,
    SpawnAtEscape = 1,
    EFXAnimalSpawnMomentType_MAX = 2,
}

---@enum EFXAnimalSpeedType
EFXAnimalSpeedType = {
    Normal = 0,
    EFXAnimalSpeedType_MAX = 1,
}

---@enum EGI_Global
EGI_Global = {
    WXLogin = 0,
    ToiletStandAlone = 1,
    StartUp = 2,
    LoadArchive = 3,
    StartNewGame = 4,
    GameLevelPassFinal = 5,
    GameLevelPass = 6,
    ToiletListenServer = 7,
    ToiletDedicateServer = 8,
    ToiletClient = 9,
    UnKnowLevelTravel = 10,
    BackToMainMenu = 11,
    WXLoginSuccess = 12,
    ReplayBattle = 13,
    TravelToNextChapter = 14,
    PreviewSeq = 15,
    PartyRoomServer = 16,
    PartyRoomClient = 17,
    ClientDisconnect = 18,
    BackToStandAlone = 19,
    QuickMonsterTeleport = 20,
    StartNewGamePlus = 21,
    Demo820ReSetData = 22,
    BackToMainMenuByPlayGo = 23,
    ReadArchiveFailed = 24,
    BenchMark = 25,
    GMLevelTravel = 26,
    EGI_MAX = 27,
}

---@enum EGI_Global_IsIgnoreWXLogin_Result
EGI_Global_IsIgnoreWXLogin_Result = {
    True = 0,
    False = 1,
    EGI_Global_IsIgnoreWXLogin_MAX = 2,
}

---@enum EGI_Global_SubG_GI_Global_BenchMark_Return
EGI_Global_SubG_GI_Global_BenchMark_Return = {
    BenchMark = 0,
    Finish = 1,
    EGI_Global_SubG_GI_Global_BenchMark_MAX = 2,
}

---@enum EGI_Global_SubG_GI_Global_WXLogin_Return
EGI_Global_SubG_GI_Global_WXLogin_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Global_WXLogin_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_820DemoReSetGameData_Return
EGI_Global_SubG_GI_Loading_820DemoReSetGameData_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_820DemoReSetGameData_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_820DemoStartUp_Return
EGI_Global_SubG_GI_Loading_820DemoStartUp_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_820DemoStartUp_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_BackToMainMenu_Return
EGI_Global_SubG_GI_Loading_BackToMainMenu_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_BackToMainMenu_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_BackToStandAlone_Return
EGI_Global_SubG_GI_Loading_BackToStandAlone_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_BackToStandAlone_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_CheckGSSdkServerConfig_Return
EGI_Global_SubG_GI_Loading_CheckGSSdkServerConfig_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_CheckGSSdkServerConfig_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_GameLevelPass_Return
EGI_Global_SubG_GI_Loading_GameLevelPass_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_GameLevelPass_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_HandleDisConnect_Return
EGI_Global_SubG_GI_Loading_HandleDisConnect_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_HandleDisConnect_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_InitWXLogin_Return
EGI_Global_SubG_GI_Loading_InitWXLogin_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_InitWXLogin_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_PartyRoomClient_Return
EGI_Global_SubG_GI_Loading_PartyRoomClient_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_PartyRoomClient_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_PartyRoomServer_Return
EGI_Global_SubG_GI_Loading_PartyRoomServer_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_PartyRoomServer_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_PostWXLoginFinish_Return
EGI_Global_SubG_GI_Loading_PostWXLoginFinish_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_PostWXLoginFinish_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_PreEnterMainMenu_Return
EGI_Global_SubG_GI_Loading_PreEnterMainMenu_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_PreEnterMainMenu_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_PreviewSequence_Return
EGI_Global_SubG_GI_Loading_PreviewSequence_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_PreviewSequence_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_ReplayBattle_Return
EGI_Global_SubG_GI_Loading_ReplayBattle_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_ReplayBattle_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_SaveArchiveAndWaitFinish_Return
EGI_Global_SubG_GI_Loading_SaveArchiveAndWaitFinish_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_SaveArchiveAndWaitFinish_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_ServerLogin_Return
EGI_Global_SubG_GI_Loading_ServerLogin_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_ServerLogin_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_SetConfigAndPrecompilePSO_Return
EGI_Global_SubG_GI_Loading_SetConfigAndPrecompilePSO_Return = {
    GameIntent = 0,
    MainMenu = 1,
    PrologueChapter = 2,
    EGI_Global_SubG_GI_Loading_SetConfigAndPrecompilePSO_MAX = 3,
}

---@enum EGI_Global_SubG_GI_Loading_StartNewGamePlus_Return
EGI_Global_SubG_GI_Loading_StartNewGamePlus_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_StartNewGamePlus_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_StartNewGame_Return
EGI_Global_SubG_GI_Loading_StartNewGame_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_StartNewGame_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_StartUp_Return
EGI_Global_SubG_GI_Loading_StartUp_Return = {
    FinishWithArchive = 0,
    FinishWithOutArchive = 1,
    EGI_Global_SubG_GI_Loading_StartUp_MAX = 2,
}

---@enum EGI_Global_SubG_GI_Loading_Teleport_Return
EGI_Global_SubG_GI_Loading_Teleport_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_Teleport_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_ToiletClient_Return
EGI_Global_SubG_GI_Loading_ToiletClient_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_ToiletClient_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_ToiletDedicateServer_Return
EGI_Global_SubG_GI_Loading_ToiletDedicateServer_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_ToiletDedicateServer_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_ToiletListenServer_Return
EGI_Global_SubG_GI_Loading_ToiletListenServer_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_ToiletListenServer_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_ToiletStandAlone_Return
EGI_Global_SubG_GI_Loading_ToiletStandAlone_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_ToiletStandAlone_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_TravelLevel_Return
EGI_Global_SubG_GI_Loading_TravelLevel_Return = {
    Finish = 0,
    ClientDisconnect = 1,
    ReadArchiveFailed = 2,
    EGI_Global_SubG_GI_Loading_TravelLevel_MAX = 3,
}

---@enum EGI_Global_SubG_GI_Loading_TravelToNextChapter_Return
EGI_Global_SubG_GI_Loading_TravelToNextChapter_Return = {
    Finish = 0,
    EGI_Global_SubG_GI_Loading_TravelToNextChapter_MAX = 1,
}

---@enum EGI_Global_SubG_GI_Loading_UnKnowLevelTravel_Return
EGI_Global_SubG_GI_Loading_UnKnowLevelTravel_Return = {
    FinishInWXLogin = 0,
    FinishInStartUp = 1,
    FinishInStandAlone = 2,
    FinishInLS = 3,
    FinishInClient = 4,
    EGI_Global_SubG_GI_Loading_UnKnowLevelTravel_MAX = 5,
}

---@enum EGI_Loading
EGI_Loading = {
    Finish = 0,
    Error = 1,
    EGI_MAX = 2,
}

---@enum EGI_Loading_BattleLevelTravelNeedWaitCameraBlend_Result
EGI_Loading_BattleLevelTravelNeedWaitCameraBlend_Result = {
    True = 0,
    False = 1,
    EGI_Loading_BattleLevelTravelNeedWaitCameraBlend_MAX = 2,
}

---@enum EGI_Loading_CheckGMFlagsSupportUnknownTravel_Result
EGI_Loading_CheckGMFlagsSupportUnknownTravel_Result = {
    True = 0,
    False = 1,
    EGI_Loading_CheckGMFlagsSupportUnknownTravel_MAX = 2,
}

---@enum EGI_Loading_CheckGlobalTravelMode_Result
EGI_Loading_CheckGlobalTravelMode_Result = {
    MainMenu = 0,
    StandAlone = 1,
    ListenServer = 2,
    Client = 3,
    EGI_Loading_CheckGlobalTravelMode_MAX = 4,
}

---@enum EGI_Loading_HasArchiveIdInContext_Result
EGI_Loading_HasArchiveIdInContext_Result = {
    True = 0,
    False = 1,
    EGI_Loading_HasArchiveIdInContext_MAX = 2,
}

---@enum EGI_Loading_HasArchive_Result
EGI_Loading_HasArchive_Result = {
    True = 0,
    False = 1,
    EGI_Loading_HasArchive_MAX = 2,
}

---@enum EGI_Loading_IsDriverVersionMismatch_Result
EGI_Loading_IsDriverVersionMismatch_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsDriverVersionMismatch_MAX = 2,
}

---@enum EGI_Loading_IsEnableLoadingUserInput_Result
EGI_Loading_IsEnableLoadingUserInput_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsEnableLoadingUserInput_MAX = 2,
}

---@enum EGI_Loading_IsInBattleLevel_Result
EGI_Loading_IsInBattleLevel_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInBattleLevel_MAX = 2,
}

---@enum EGI_Loading_IsInContextLevel_Result
EGI_Loading_IsInContextLevel_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInContextLevel_MAX = 2,
}

---@enum EGI_Loading_IsInDedicateServer_Result
EGI_Loading_IsInDedicateServer_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInDedicateServer_MAX = 2,
}

---@enum EGI_Loading_IsInDefaultBattleLevel_Result
EGI_Loading_IsInDefaultBattleLevel_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInDefaultBattleLevel_MAX = 2,
}

---@enum EGI_Loading_IsInListenServer_Result
EGI_Loading_IsInListenServer_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInListenServer_MAX = 2,
}

---@enum EGI_Loading_IsInMap_Result
EGI_Loading_IsInMap_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInMap_MAX = 2,
}

---@enum EGI_Loading_IsInNetClient_Result
EGI_Loading_IsInNetClient_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInNetClient_MAX = 2,
}

---@enum EGI_Loading_IsInPIEClient_Result
EGI_Loading_IsInPIEClient_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInPIEClient_MAX = 2,
}

---@enum EGI_Loading_IsInServer_Result
EGI_Loading_IsInServer_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInServer_MAX = 2,
}

---@enum EGI_Loading_IsInStartUpLevel_Result
EGI_Loading_IsInStartUpLevel_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInStartUpLevel_MAX = 2,
}

---@enum EGI_Loading_IsInToilet_Result
EGI_Loading_IsInToilet_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsInToilet_MAX = 2,
}

---@enum EGI_Loading_IsNeedPreStartGameProcess_Result
EGI_Loading_IsNeedPreStartGameProcess_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsNeedPreStartGameProcess_MAX = 2,
}

---@enum EGI_Loading_IsNeedResetGameInstanceData_Result
EGI_Loading_IsNeedResetGameInstanceData_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsNeedResetGameInstanceData_MAX = 2,
}

---@enum EGI_Loading_IsPlayGoDownloadIncomplete_Result
EGI_Loading_IsPlayGoDownloadIncomplete_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsPlayGoDownloadIncomplete_MAX = 2,
}

---@enum EGI_Loading_IsReplayWorldLoadFinish_Result
EGI_Loading_IsReplayWorldLoadFinish_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsReplayWorldLoadFinish_MAX = 2,
}

---@enum EGI_Loading_IsStandAlone_Result
EGI_Loading_IsStandAlone_Result = {
    True = 0,
    False = 1,
    EGI_Loading_IsStandAlone_MAX = 2,
}

---@enum EGI_Loading_MonsterTeleportArchiveExist_Result
EGI_Loading_MonsterTeleportArchiveExist_Result = {
    True = 0,
    False = 1,
    EGI_Loading_MonsterTeleportArchiveExist_MAX = 2,
}

---@enum EGI_Loading_NeedSwitchPlayerGameMode_Result
EGI_Loading_NeedSwitchPlayerGameMode_Result = {
    True = 0,
    False = 1,
    EGI_Loading_NeedSwitchPlayerGameMode_MAX = 2,
}

---@enum EGI_Loading_OpenSeamlessLevelTravel_Result
EGI_Loading_OpenSeamlessLevelTravel_Result = {
    True = 0,
    False = 1,
    EGI_Loading_OpenSeamlessLevelTravel_MAX = 2,
}

---@enum EGI_Loading_PlayerGameStateCheck_Result
EGI_Loading_PlayerGameStateCheck_Result = {
    True = 0,
    False = 1,
    EGI_Loading_PlayerGameStateCheck_MAX = 2,
}

---@enum EGI_Loading_SubG_GI_Loading_BattleLevelTravel_Return
EGI_Loading_SubG_GI_Loading_BattleLevelTravel_Return = {
    Finish = 0,
    EGI_Loading_SubG_GI_Loading_BattleLevelTravel_MAX = 1,
}

---@enum EGI_Loading_SubG_GI_Loading_ClientEnvInit_Return
EGI_Loading_SubG_GI_Loading_ClientEnvInit_Return = {
    Finish = 0,
    EGI_Loading_SubG_GI_Loading_ClientEnvInit_MAX = 1,
}

---@enum EGI_Loading_SubG_GI_Loading_GSLogin_Return
EGI_Loading_SubG_GI_Loading_GSLogin_Return = {
    Finish = 0,
    EGI_Loading_SubG_GI_Loading_GSLogin_MAX = 1,
}

---@enum EGI_Loading_SubG_GI_Loading_HandleArchiveInTravelLevel_Return
EGI_Loading_SubG_GI_Loading_HandleArchiveInTravelLevel_Return = {
    Finish = 0,
    EGI_Loading_SubG_GI_Loading_HandleArchiveInTravelLevel_MAX = 1,
}

---@enum EGI_Loading_SubG_GI_Loading_HideLoadingUI_Return
EGI_Loading_SubG_GI_Loading_HideLoadingUI_Return = {
    Finish = 0,
    EGI_Loading_SubG_GI_Loading_HideLoadingUI_MAX = 1,
}

---@enum EGI_Loading_SubG_GI_Loading_PostLeaveLevel_Return
EGI_Loading_SubG_GI_Loading_PostLeaveLevel_Return = {
    Finish = 0,
    EGI_Loading_SubG_GI_Loading_PostLeaveLevel_MAX = 1,
}

---@enum EGI_Loading_SubG_GI_Loading_PreEnterLevel_Return
EGI_Loading_SubG_GI_Loading_PreEnterLevel_Return = {
    Finish = 0,
    EGI_Loading_SubG_GI_Loading_PreEnterLevel_MAX = 1,
}

---@enum EGI_Loading_SubG_GI_Loading_ReStartGSLogin_Return
EGI_Loading_SubG_GI_Loading_ReStartGSLogin_Return = {
    Finish = 0,
    EGI_Loading_SubG_GI_Loading_ReStartGSLogin_MAX = 1,
}

---@enum EGI_Loading_SubG_GI_Loading_ResetGameInstanceDataAndSaveArchive_Return
EGI_Loading_SubG_GI_Loading_ResetGameInstanceDataAndSaveArchive_Return = {
    Finish = 0,
    EGI_Loading_SubG_GI_Loading_ResetGameInstanceDataAndSaveArchive_MAX = 1,
}

---@enum EGI_Loading_SubG_GI_Loading_SaveArchiveAndWaitFinish_Return
EGI_Loading_SubG_GI_Loading_SaveArchiveAndWaitFinish_Return = {
    Finish = 0,
    EGI_Loading_SubG_GI_Loading_SaveArchiveAndWaitFinish_MAX = 1,
}

---@enum EGI_Loading_SwitchTeleportType_Result
EGI_Loading_SwitchTeleportType_Result = {
    TeleportToSameLevel = 0,
    TravelLevelToSamePlayerGameMode = 1,
    TravelLevelToParty = 2,
    TravelLevelToConsole = 3,
    EGI_Loading_SwitchTeleportType_MAX = 4,
}

---@enum EGI_Loading_TeleportNeedLevelTravel_Result
EGI_Loading_TeleportNeedLevelTravel_Result = {
    True = 0,
    False = 1,
    EGI_Loading_TeleportNeedLevelTravel_MAX = 2,
}

---@enum EGI_Loading_TravelUrlHasHost_Result
EGI_Loading_TravelUrlHasHost_Result = {
    True = 0,
    False = 1,
    EGI_Loading_TravelUrlHasHost_MAX = 2,
}

---@enum EGI_Loading_TravelUrlIsListen_Result
EGI_Loading_TravelUrlIsListen_Result = {
    True = 0,
    False = 1,
    EGI_Loading_TravelUrlIsListen_MAX = 2,
}

---@enum EGMCommandType
EGMCommandType = {
    None = 0,
    ShowBattleUI = 1,
    EnableEnemyBar = 2,
    Invincible = 3,
    LockHP = 4,
    LockStamina = 5,
    Invisible = 6,
    LockEnemyHP = 7,
    CancelEnemyCD = 8,
    ToggleAllEnemyAI = 9,
    Lock60FPS = 10,
    VSync = 11,
    EnumMax = 12,
    EGMCommandType_MAX = 13,
}

---@enum EGSAutoTestPlayerCastConditionType
EGSAutoTestPlayerCastConditionType = {
    UnitAttr = 0,
    UnitState = 1,
    HasItem = 64,
    PELevel = 65,
    NotPreloading = 128,
    EGSAutoTestPlayerCastConditionType_MAX = 129,
}

---@enum EGSCloudMoveRestrictType
EGSCloudMoveRestrictType = {
    None = 0,
    ForbidEnableCloudMove = 1,
    ForbidDisableCloudMove = 2,
    EGSCloudMoveRestrictType_MAX = 3,
}

---@enum EGSDestructibleModifyType
EGSDestructibleModifyType = {
    Break = 0,
    Modify = 1,
    EGSDestructibleModifyType_MAX = 2,
}

---@enum EGSForceFightCondition
EGSForceFightCondition = {
    EnterCollisionArea = 0,
    LeaveCollisionArea = 1,
    ObserveUnitsConditions = 2,
    EGSForceFightCondition_MAX = 3,
}

---@enum EGSForceFightTargetType
EGSForceFightTargetType = {
    None = 0,
    KeepCurrentAndStalemate = 1,
    CollisionOverlappedUnit = 2,
    SelectedTargetUnit = 3,
    EGSForceFightTargetType_MAX = 4,
}

---@enum EGSForceFightTriggerUnitType
EGSForceFightTriggerUnitType = {
    Default = 0,
    TriggerConditionUnit = 1,
    TriggerConditionUnitEnemy = 2,
    EGSForceFightTriggerUnitType_MAX = 3,
}

---@enum EGSForceFightUnitFilterType
EGSForceFightUnitFilterType = {
    None = 0,
    WhiteListFilter = 1,
    BlackListFilter = 2,
    EGSForceFightUnitFilterType_MAX = 3,
}

---@enum EGSForceFightUnitType
EGSForceFightUnitType = {
    None = 0,
    Player = 1,
    PlayerTeam = 2,
    EGSForceFightUnitType_MAX = 3,
}

---@enum EGSGroupSplinePatrolType
EGSGroupSplinePatrolType = {
    Loop = 0,
    Single = 1,
    EGSGroupSplinePatrolType_MAX = 2,
}

---@enum EGSHairType
EGSHairType = {
    TressFX = 0,
    HairStrands = 1,
    EGSHairType_MAX = 2,
}

---@enum EGSHitDestructibleDirection
EGSHitDestructibleDirection = {
    DestructibleDirection = 0,
    AttackerSpeedDirection = 1,
    AttackerRelativeDirection = 2,
    EGSHitDestructibleDirection_MAX = 3,
}

---@enum EGSHitDestructibleImpulseType
EGSHitDestructibleImpulseType = {
    Default = 0,
    StrengthLevel = 1,
    Manual = 2,
    EGSHitDestructibleImpulseType_MAX = 3,
}

---@enum EGSHitDestructibleStrengthLevel
EGSHitDestructibleStrengthLevel = {
    None = 0,
    Light = 1,
    Medium = 2,
    Heavy = 3,
    Special = 4,
    EGSHitDestructibleStrengthLevel_MAX = 5,
}

---@enum EGSInputChangeType
EGSInputChangeType = {
    All = 0,
    Gamepad = 1,
    KeyboardMouse = 2,
    EGSInputChangeType_MAX = 3,
}

---@enum EGSInputModeChangeReason
EGSInputModeChangeReason = {
    Unknown = 0,
    Init = 1,
    UI = 2,
    GM = 3,
    MiniGM = 4,
    ReportBug = 5,
    ExceptionPanel = 6,
    DataValidate = 7,
    WXLogin = 8,
    BP_GMActor_GMPanel = 9,
    BP_GMActor_ZBBPanel = 10,
    BP_GMActor_OCEAN = 11,
    Reset = 12,
    PreLoadMap = 13,
    Replay = 14,
    LoadingScreenPreview = 15,
    EGSInputModeChangeReason_MAX = 16,
}

---@enum EGSInputTab
EGSInputTab = {
    Comm = 0,
    Battle = 1,
    System = 2,
    Other = 3,
    EGSInputTab_MAX = 4,
}

---@enum EGSKeyMappingType
EGSKeyMappingType = {
    Comm = 0,
    Move = 1,
    Spell = 2,
    EGSKeyMappingType_MAX = 3,
}

---@enum EGSMatParamType
EGSMatParamType = {
    None = 0,
    Float = 1,
    Vector = 2,
    LinearColor = 3,
    FloatCurve = 4,
    VectorCurve = 5,
    LinearColorValue = 6,
    OwnerInfoStart = 64,
    OwnerWorldLocation = 65,
    OwnerForwardVector = 66,
    OwnerVelocity = 67,
    OwnerSocketLocation = 68,
    OwnerSocketForwardVector = 69,
    PlayerInfoStart = 128,
    PlayerWorldLocation = 129,
    PlayerForwardVector = 130,
    PlayerVelocity = 131,
    PlayerSocketLocation = 132,
    PlayerSocketForwardVector = 133,
    EGSMatParamType_MAX = 134,
}

---@enum EGSSceneActorActivationType
EGSSceneActorActivationType = {
    PhysicsSimulation = 0,
    EmitterActivation = 1,
    TickEnable = 2,
    BGUActorActivation = 3,
    HiddenInGame = 4,
    ActorCollision = 5,
    EGSSceneActorActivationType_MAX = 6,
}

---@enum EGSTickType
EGSTickType = {
    NotSet = 0,
    NeverGSTick = 1,
    AutoGSTick = 2,
    AlwaysGSTick = 3,
    EGSTickType_MAX = 4,
}

---@enum EGSTrainDummyHPType
EGSTrainDummyHPType = {
    Default = 0,
    Infinite = 1,
    Value = 2,
    EGSTrainDummyHPType_MAX = 3,
}

---@enum EIDType_Outlaw
EIDType_Outlaw = {
    Projectile = 0,
    SkillEffect = 1,
    Buff = 2,
    Summon = 3,
    EIDType_MAX = 4,
}

---@enum ELMFreeMode
ELMFreeMode = {
    Normal = 0,
    Simple = 1,
    ELMFreeMode_MAX = 2,
}

---@enum ELMLockMode
ELMLockMode = {
    Normal = 0,
    SimpleLeft = 1,
    SimpleRight = 2,
    ELMLockMode_MAX = 3,
}

---@enum EMMBehaviorState
EMMBehaviorState = {
    MoveLoop = 0,
    EMMBehaviorState_MAX = 1,
}

---@enum ENGSEasingFunc
ENGSEasingFunc = {
    Linear = 0,
    Step = 1,
    SinusoidalIn = 2,
    SinusoidalOut = 3,
    SinusoidalInOut = 4,
    EaseIn = 5,
    EaseOut = 6,
    EaseInOut = 7,
    ExpoIn = 8,
    ExpoOut = 9,
    ExpoInOut = 10,
    CircularIn = 11,
    CircularOut = 12,
    CircularInOut = 13,
    BackEaseIn = 14,
    BackEaseOut = 15,
    BackEaseInOut = 16,
    EaseInQuart = 17,
    EaseInOutQuint = 18,
    Sin = 19,
    ENGSEasingFunc_MAX = 20,
}

---@enum EOSS_CharacterType
EOSS_CharacterType = {
    None = 0,
    Player = 1,
    Monster = 2,
    AiPartner = 3,
    EOSS_MAX = 4,
}

---@enum EPS_Transaction
EPS_Transaction = {
    TaskFinish = 0,
    TaskAbort = 1,
    EPS_MAX = 2,
}

---@enum EPS_Transaction_TaskCondition_Result
EPS_Transaction_TaskCondition_Result = {
    True = 0,
    False = 1,
    EPS_Transaction_TaskCondition_MAX = 2,
}

---@enum EUIPageID
EUIPageID = {
    MIN = 0,
    Managed = 1,
    BattleMainCon = 2,
    Story = 3,
    TeamInfo = 4,
    BloodBarList = 5,
    Interact = 6,
    ShrineMain = 7,
    FallDying = 8,
    Death = 9,
    TPSReticle = 10,
    Name = 11,
    RoleMain = 12,
    Background = 13,
    EquipMain = 14,
    BagMain = 15,
    MDropMain = 16,
    DropSpecial = 17,
    BlackOut = 18,
    StartGameManaged = 19,
    StartGame = 20,
    AgeTips = 21,
    Archives = 22,
    SelectChapter = 23,
    Defeated = 24,
    Shop = 25,
    EquipShop = 26,
    Confirm = 27,
    ConfirmThree = 28,
    TalentMain = 29,
    LearnTalent = 30,
    LearnLegacyTalent = 31,
    MapTips = 32,
    Setting = 33,
    InitSetting = 34,
    SettingInputKeyBoard = 35,
    SettingScreenDetail = 36,
    BrightnessSetting = 37,
    HDRSetting = 38,
    CommTips = 39,
    CommTipsBlock = 40,
    SoakingMain = 41,
    Award = 42,
    MedicineRecipe = 43,
    Alchemy = 44,
    CommSkip = 45,
    WeaponBuild = 46,
    RoleWeaponBuild = 47,
    EquipBuild = 48,
    AnimShowBlock = 49,
    SimpleTips = 50,
    NpcInteract = 51,
    CollectionMain = 52,
    ChapterAward = 53,
    ChapterMovie = 54,
    TravelNotesMain = 55,
    PastMemory = 56,
    RoleMeditationPointMain = 57,
    SeqMediaPlayer = 58,
    SaveTips = 59,
    Login = 60,
    LoginNotice = 61,
    AgreementPolicy = 62,
    Farm = 63,
    TransGuide = 64,
    GuideNormal = 65,
    GuideQuest = 66,
    GuidePopbox = 67,
    TakePhoto = 68,
    AchieveTips = 69,
    QTEInteract = 70,
    EndCredits = 71,
    SoulSkillCollect = 72,
    SoulSkillStrength = 73,
    BenchMark = 74,
    HuluStrength = 75,
    WineStrength = 76,
    GuideMain = 77,
    EditionAward = 78,
    ShaderCompiling = 79,
    PlayGoProgressRaw = 80,
    PlayGoProgressNormal = 81,
    SoundtrackV2 = 82,
    SeqLogo = 83,
    NewGamePlusGuide = 84,
    LoadingAdaptor = 85,
    ShaderCompilingConfirm = 86,
    MiniGM = 87,
    GMConfirm = 88,
    GMCommTips = 89,
    ReportBugPanel = 90,
    UITexConfigCheck = 91,
    HexRoomTest = 92,
    GuiqiangTest = 93,
    HatumTestUI = 94,
    EllenTest = 95,
    GMDisplayUIText = 96,
    EnumMax = 97,
    EUIPageID_MAX = 98,
}

---@enum EUIPageType
EUIPageType = {
    None = 0,
    Practice = 1,
    Equip = 2,
    Bag = 3,
    Shop = 4,
    WeaponBuild = 5,
    EquipBuild = 6,
    EquipShop = 7,
    SoakingMain = 8,
    RefiningCommonElixir = 9,
    RefiningElixir = 10,
    HuluLevel = 11,
    WineLevel = 12,
    Farm = 13,
    TravelNotes = 14,
    ChapterAward = 15,
    LearnLegacyTalent = 16,
    SoulSkillCollect = 17,
    BenchMark = 18,
    Archives = 19,
    Setting = 20,
    Story = 21,
    Name = 22,
    SeqMediaPlayer = 23,
    LearnTalent = 24,
    EditionAward = 25,
    TakePhoto = 26,
    ObsMode = 27,
    FaBao = 28,
    SoulSkill = 29,
    Teleport = 30,
    SettingHDR = 31,
    SettingBrightness = 32,
    SettingKeyBoard = 33,
    SeqLogo = 34,
    PastMemory = 35,
    SoundtrackV2 = 36,
    EndCredits = 37,
    EUIPageType_MAX = 38,
}

---@enum EUISettingConfigName
EUISettingConfigName = {
    DmgNumShow = 0,
    HudShow = 1,
    EUISettingConfigName_MAX = 2,
}

---@enum EllipsisType
EllipsisType = {
    None = 0,
    NoHitAction = 1,
    NoAttackerArea = 2,
    BothNoAttackerAreaNHitAction = 3,
    NoGears = 4,
    NoDepot = 5,
    EllipsisType_MAX = 6,
}

---@enum EnShortcutType
EnShortcutType = {
    INIT = 0,
    ITEM = 1,
    SPELL = 2,
    TRANSSPELL = 3,
    EnShortcutType_MAX = 4,
}

---@enum EndCreditsItemType
EndCreditsItemType = {
    None = 0,
    Text = 1,
    Image = 2,
    Item = 3,
    Page = 4,
    EndCreditsItemType_MAX = 5,
}

---@enum EndCreditsPageAction
EndCreditsPageAction = {
    Anim = 0,
    AnimAndScroll = 1,
    Scroll = 2,
    SwitchSpeedScroll = 3,
    ScrollAnimEnd = 4,
    EndCreditsPageAction_MAX = 5,
}

---@enum EndCreditsType
EndCreditsType = {
    EndA = 0,
    EndB = 1,
    EndCreditsType_MAX = 2,
}

---@enum EndingCreditsAction
EndingCreditsAction = {
    Open = 0,
    OpenBackground = 1,
    EndingCreditsAction_MAX = 2,
}

---@enum EnvironmentInteractionType
EnvironmentInteractionType = {
    Surface = 0,
    EnvironmentInteractionType_MAX = 1,
}

---@enum EnvironmentItemStateMachineAbilityType
EnvironmentItemStateMachineAbilityType = {
    Default = 0,
    PlayDialogue = 2,
    EnvironmentItemStateMachineAbilityType_MAX = 3,
}

---@enum EquipFXType
EquipFXType = {
    None = 0,
    Wear = 1,
    Upgrade = 2,
    UpgradeChange = 3,
    EquipFXType_MAX = 4,
}

---@enum EscapeSkillConfigMode
EscapeSkillConfigMode = {
    None = 0,
    Single = 1,
    Multiple = 2,
    FromSceneItem = 3,
    EscapeSkillConfigMode_MAX = 4,
}

---@enum EscapeWay
EscapeWay = {
    None = 0,
    MoveTo = 1,
    CastSkill = 2,
    EscapeWay_MAX = 3,
}

---@enum FallDyingState
FallDyingState = {
    Min = 0,
    Alive = 1,
    FallDyingBegin = 2,
    FallDyingWaiting = 3,
    FallDyingWaitSelfSave = 4,
    FallDyingSelfSaving = 5,
    RealDead = 6,
    FallDyingState_MAX = 7,
}

---@enum FallHeightType_V2
FallHeightType_V2 = {
    FallHeight_Little = 0,
    FallHeight_Low = 1,
    FallHeight_Mid = 2,
    FallHeight_High = 3,
    FallHeight_Dead = 4,
    FallHeight_MAX = 5,
}

---@enum FightBackCountType
FightBackCountType = {
    BeHitCount = 0,
    StiffCount = 1,
    FightBackCountType_MAX = 2,
}

---@enum FindSceneItemWay
FindSceneItemWay = {
    FindNearest = 0,
    FindFurthest = 1,
    FindMinTotalAngle = 2,
    Composite = 3,
    CompositeV2 = 4,
    FindNearestToTarget = 5,
    FindFurthestToTarget = 6,
    ClosestOutsideTheAngle = 7,
    FarthestOutsideTheAngle = 8,
    FindSceneItemWay_MAX = 9,
}

---@enum FishSpikeJumpType
FishSpikeJumpType = {
    Default = 0,
    OnlyCloseTo = 1,
    OnlyFarFrom = 2,
    None = 3,
    FishSpikeJumpType_MAX = 4,
}

---@enum FlowActorType
FlowActorType = {
    None = 0,
    Overlap = 2,
    DynamicObstacle = 3,
    Spawn = 4,
    Checker = 5,
    FlowActorType_MAX = 6,
}

---@enum FluidSimDimension
FluidSimDimension = {
    Vol_32_3 = 0,
    Vol_64_3 = 1,
    Vol_100_3 = 2,
    Vol_128_3 = 3,
    Vol_196_3 = 4,
    Vol_256_3 = 5,
    Vol_324_3 = 6,
    Vol_400_3 = 7,
    Vol_MAX = 8,
}

---@enum FocusReason
FocusReason = {
    Init = 0,
    ManualSet = 1,
    FocusReason_MAX = 2,
}

---@enum FoliageInteractSoundPriority
FoliageInteractSoundPriority = {
    Default = 0,
    Low = 1,
    Medium = 2,
    High = 3,
    FoliageInteractSoundPriority_MAX = 4,
}

---@enum FootStepType
FootStepType = {
    LeftFoot = 0,
    RightFoot = 1,
    FootStepType_MAX = 2,
}

---@enum GaitGroundedState
GaitGroundedState = {
    None = 0,
    Idle = 1,
    Walk = 2,
    Run = 3,
    Rush = 4,
    GaitGroundedState_MAX = 5,
}

---@enum GameplayCounterType
GameplayCounterType = {
    None = 0,
    Time = 1,
    HP = 2,
    HPPercent = 3,
    GameplayCounterType_MAX = 4,
}

---@enum GateStateMachineType
GateStateMachineType = {
    None = 0,
    Destructible = 1,
    GateStateMachineType_MAX = 2,
}

---@enum GetTamerMethod
GetTamerMethod = {
    Use_DA = 0,
    Use_SingleMonster = 1,
    Use_MAX = 2,
}

---@enum GlideMoveAnimState
GlideMoveAnimState = {
    None = 0,
    GlideStart = 1,
    GlideLoop = 2,
    GlideEnd = 3,
    GlideMoveAnimState_MAX = 4,
}

---@enum GlobalTravelLevelType
GlobalTravelLevelType = {
    None = 0,
    Unknown = 1,
    Generic = 2,
    StartNewGame = 3,
    StartNewGamePlus = 4,
    BackToMainMenu = 5,
    ReadArchive = 6,
    GMTravel = 7,
    Online = 8,
    GameLevelPass = 9,
    GameIntent = 10,
    WXLoginFinish = 11,
    SetConfigFinish = 12,
    BackToMainMenuByPlayGo = 13,
    Nianhui = 14,
    BenchMark = 15,
    SeamlessStartNewGame = 16,
    BackToMainMenuFullBlack = 17,
    GlobalTravelLevelType_MAX = 18,
}

---@enum GroupPatrolType
GroupPatrolType = {
    None = 0,
    Leader = 1,
    Member = 2,
    GroupPatrolType_MAX = 3,
}

---@enum GroupPriorityActionType
GroupPriorityActionType = {
    MoveToPos = 0,
    CastSkill = 1,
    AddBuff = 2,
    EnumMax = 255,
    GroupPriorityActionType_MAX = 256,
}

---@enum HitAltFxAnimalRotType
HitAltFxAnimalRotType = {
    CamDir_Fwd = 0,
    CamDir_Bwd = 1,
    CamDir_Right = 2,
    CamDir_Left = 3,
    RotToPlayer = 4,
    RotToPlayerSurround = 5,
    HitAltFxAnimalRotType_MAX = 6,
}

---@enum HitMoveDir
HitMoveDir = {
    Default = 0,
    XAxisHitMove = 1,
    YAxisHitMove = 2,
    HitMoveDir_MAX = 3,
}

---@enum IdleProcessActionType
IdleProcessActionType = {
    None = 0,
    Teleport = 1,
    ActiveRebirthPoint = 2,
    DisappearUnit = 3,
    NotifyDropItemManagerDrop = 4,
    AiConversation = 5,
    SetNPCParamOnlyInEnter = 6,
    TriggerUnitBattle = 7,
    SpawnAssociationUnit = 8,
    ActiveAssociationUnit = 9,
    KillAssociationUnit = 10,
    NpcPlayMontage = 11,
    NpcMoveTo = 12,
    EnterWeakPerformState = 13,
    ExitWeakPerformState = 14,
    KillFollowPartner = 15,
    ClearAllBloodBar = 16,
    NotifyStateMachine = 17,
    TeleportRebirthPoint = 18,
    PlayDefeatUI = 19,
    BlockRebirthPoint = 20,
    GameLevelPass = 21,
    TriggerSplineMove = 22,
    IdleProcessActionType_MAX = 23,
}

---@enum InputMappingContextLevelInfoType
InputMappingContextLevelInfoType = {
    None = 0,
    OnlyAppliedToLevels = 1,
    NotAppliedToLevels = 2,
    InputMappingContextLevelInfoType_MAX = 3,
}

---@enum InputMappingContextMode
InputMappingContextMode = {
    UIOnly = 0,
    GameOnly = 1,
    UIAndGame = 2,
    Replay = 3,
    All = 4,
    InputMappingContextMode_MAX = 5,
}

---@enum InputMappingContextTagV2
InputMappingContextTagV2 = {
    None = 0,
    Move = 1,
    Camera = 2,
    Skill = 3,
    Chord = 4,
    Interact = 5,
    Ride = 6,
    UI = 7,
    GSUI_TOP = 8,
    Battle_UI = 9,
    Battle_UI_Release = 10,
    Battle_UI_Skip = 11,
    Replay = 12,
    GM_Temp = 13,
    Unfreeze = 14,
    SprintAndDodge = 15,
    SpellAndUseItem = 16,
    LoadingScreen = 17,
    Cloud = 18,
    ShepherdDebug = 19,
    InteractSkip = 20,
    TakePhoto = 21,
    CricketBattle = 22,
    RemoteCamera = 23,
    BattleTriggerUI = 24,
    Vigor = 25,
    GM = 26,
    InputMappingContextTagV2_MAX = 27,
}

---@enum InputTipsType
InputTipsType = {
    Min = 0,
    Obs_Mode = 10,
    TalentMain_Select = 20,
    TalentMain_ResetSelect = 21,
    Talent_Reset = 22,
    SpellConfig_Select = 30,
    SpellConfig_SelectNotSet = 31,
    Equip_EquipSlot = 40,
    Equip_QuickItemSlot_HadConfig = 41,
    Equip_QuickItemSlot_NotConfig = 42,
    Equip_AccessorySlot_HadConfig = 43,
    Equip_AccessorySlot_NotConfig = 44,
    Equip_Accessory_HadConfig = 45,
    Equip_Accessory_NotConfig = 46,
    Equip_Accessory_CurConfig = 47,
    Equip_Min_CanEnterTPMode = 48,
    Equip_EquipSlot_CanEnterTPMode = 49,
    Equip_QuickItemSlot_HadConfig_CanEnterTPMode = 50,
    Equip_QuickItemSlot_NotConfig_CanEnterTPMode = 51,
    Equip_AccessorySlot_HadConfig_CanEnterTPMode = 52,
    Equip_AccessorySlot_NotConfig_CanEnterTPMode = 53,
    Bag_CanUse = 60,
    Bag_CantUse = 61,
    Bag_HadConfig = 62,
    Bag_SlotNotConfig = 63,
    Bag_SlotHadConfig = 64,
    Bag_ItemConfiging_NotConfig = 65,
    Bag_ItemConfiging_HadConfig = 66,
    Bag_ItemConfiging_CurConfig = 67,
    Shop_CanBuy = 80,
    Shop_CantBuy = 81,
    Shop_Sell = 82,
    Shop_SecConfirm = 83,
    WeaponBuild_CanShowTree = 90,
    WeaponBuild_CantShowTree = 91,
    WeaponBuild_ShowTree = 92,
    Soaking_MainPage_Wine = 100,
    Soaking_WineList_NotConfig = 101,
    Soaking_WineList_CurConfig = 102,
    Soaking_MainPage_WineItemSlot_NotConfig = 103,
    Soaking_MainPage_WineItemSlot_HadConfig = 104,
    Soaking_WineItemList_HadConfig = 105,
    Soaking_WineItemList_NotConfig = 106,
    Soaking_WineItemList_CurConfig = 107,
    Medicine_Interact = 120,
    Medicine_Shrine = 121,
    Medicine_Interact_Sort = 122,
    Medicine_Shrine_Sort = 123,
    Alchemy_Tips = 130,
    TravelNotes_Unfold = 140,
    TravelNotes_Fold = 141,
    ChapterAward_CameraRoam = 150,
    ChapterAward_CameraRoam_Start = 151,
    ChapterAward_CameraRoam_Middle = 152,
    ChapterAward_CameraRoam_End = 153,
    Learn_DSTalent_Menu_LeftFocusCanSwitch = 160,
    Learn_DSTalent_RebirthPoint_LeftFocusCanSwitch = 161,
    Learn_DSTalent_Menu_LeftFocusCantSwitch = 162,
    Learn_DSTalent_RebirthPoint_LeftFocusCantSwitch = 163,
    Learn_DSTalent_Menu_RightFocus = 164,
    Learn_DSTalent_RebirthPoint_RightFocus = 165,
    Farm_Can_Collect = 180,
    Farm_Cant_Collect = 181,
    Farm_LongPress_Button = 182,
    Farm_Output_Info = 183,
    Farm_Seed_Info = 184,
    SoulSkill_Item = 190,
    SoulSkill_LongPress = 191,
    BenchMark_Report = 200,
    Archive_LoadArchive = 210,
    Setting_BenchMark = 220,
    Setting_Main = 221,
    Setting_Exit = 222,
    Setting_Normal_Confirm = 223,
    Setting_Normal = 224,
    Setting_BenchMark_Quality_Confirm = 225,
    Setting_BenchMark_Quality = 226,
    Setting_BenchMark_Confirm = 227,
    Setting_Quality_Confirm = 228,
    Setting_Quality = 229,
    Setting_NoConfirm = 230,
    Setting_Confirm = 231,
    EditionAward_Item = 240,
    EditionAward_LongPress = 241,
    MeditationPoint_CanPlay = 250,
    MeditationPoint_CantPlay = 251,
    MeditationPoint_Playing = 252,
    InputTipsType_MAX = 253,
}

---@enum InteractActionType
InteractActionType = {
    Normal = 0,
    InteractActionType_MAX = 1,
}

---@enum InteractConstraint
InteractConstraint = {
    None = 0,
    TransForming = 1,
    NotFocusEnough = 2,
    Busy = 3,
    OtherIsUsing = 4,
    EnemyAround = 5,
    CD = 6,
    Dead = 7,
    NpcHide = 8,
    ConfigMiss = 9,
    ItemRequireCondition = 10,
    Restriction = 11,
    SplineMoving = 12,
    Interacting = 13,
    CricketIdle = 14,
    Other = 15,
    InteractConstraint_MAX = 16,
}

---@enum InteractInfoTemplateType
InteractInfoTemplateType = {
    Humankind = 0,
    InteractInfoTemplateType_1 = 1,
    InteractInfoTemplateType_2 = 2,
    InteractInfoTemplateType_3 = 3,
    InteractInfoTemplateType_4 = 4,
    InteractInfoTemplateType_5 = 5,
    InteractInfoTemplateType_MAX = 6,
}

---@enum InteractiveObjectMaterial
InteractiveObjectMaterial = {
    Default = 0,
    Wood = 1,
    Stone = 2,
    Steel = 3,
    InteractiveObjectMaterial_MAX = 4,
}

---@enum InteractorManagePolice
InteractorManagePolice = {
    SameAsPrevious = 0,
    KeepInteractive = 1,
    KeepNotInteractive = 2,
    InteractorManagePolice_MAX = 3,
}

---@enum InteractorState
InteractorState = {
    Interactive = 0,
    NotInteractive = 1,
    InteractorState_MAX = 2,
}

---@enum JumpSectionCondition
JumpSectionCondition = {
    SceneItemNotFound = 0,
    FindSceneItemsWithSkillID = 1,
    JumpSectionCondition_MAX = 2,
}

---@enum JumpType
JumpType = {
    None = 0,
    Normal = 1,
    GlideJump = 2,
    StrideJump = 3,
    JumpType_MAX = 4,
}

---@enum KeyBoardShowFocusType
KeyBoardShowFocusType = {
    Hide = 0,
    OnlyHover = 1,
    Always = 2,
    KeyBoardShowFocusType_MAX = 3,
}

---@enum KillUnitMapCond
KillUnitMapCond = {
    Crit = 0,
    NoCodition = 1,
    Unparalleled = 2,
    PerfectChargeDamage = 3,
    KillUnitMapCond_MAX = 4,
}

---@enum KillUnitMapResult
KillUnitMapResult = {
    HeadShot = 0,
    RandomCut = 1,
    Boom = 2,
    KillUnitMapResult_MAX = 3,
}

---@enum LevelLoadState
LevelLoadState = {
    Auto = 0,
    Load = 1,
    Unload = 2,
    LevelLoadState_MAX = 3,
}

---@enum LevelTag
LevelTag = {
    None = 0,
    Party = 1,
    SupportRide = 2,
    SupportOpenMap = 3,
    LevelTag_MAX = 4,
}

---@enum LoadingUIFadeInReason
LoadingUIFadeInReason = {
    None = 0,
    CombatTeleport = 1,
    NonCombatTeleport = 2,
    OnlineDisconnect = 3,
    LoadingUIFadeInReason_MAX = 4,
}

---@enum LockMoveDirectionSix
LockMoveDirectionSix = {
    None = 0,
    F = 1,
    FL = 2,
    FR = 3,
    BL = 4,
    BR = 5,
    B = 6,
    LockMoveDirectionSix_MAX = 7,
}

---@enum LockTargetType
LockTargetType = {
    Actor = 0,
    SceneComp = 1,
    SkeletonSocket = 2,
    Point = 3,
    LockTargetType_MAX = 4,
}

---@enum LockTargetWayType
LockTargetWayType = {
    Auto = 0,
    Manual = 1,
    Skill = 2,
    Combo = 3,
    AimOffset = 4,
    MoveTo = 5,
    LockTargetWayType_MAX = 6,
}

---@enum LoopDirection
LoopDirection = {
    LeftToRight = 0,
    RightToLeft = 1,
    LoopDirection_MAX = 2,
}

---@enum MFOverlapEventType
MFOverlapEventType = {
    AddBuff = 0,
    RemoveBuffWithTriggerRemove = 1,
    RemoveBuffWithoutTriggerRemove = 2,
    TriggerSkillEffect = 3,
    DrawSign = 4,
    AddAvoidance = 5,
    RemoveAvoidance = 6,
    DestroyProjectileByFlag = 7,
    SetMastersTarget = 8,
    MFOverlapEventType_MAX = 9,
}

---@enum MagicFieldDirectionType
MagicFieldDirectionType = {
    None = 0,
    Directional = 1,
    Radial = 2,
    Spiral = 3,
    MagicFieldDirectionType_MAX = 4,
}

---@enum MagicFieldDirectionTypeDetail
MagicFieldDirectionTypeDetail = {
    Positive = 0,
    Negative = 1,
    MagicFieldDirectionTypeDetail_MAX = 2,
}

---@enum MagicFieldDirectionUsage
MagicFieldDirectionUsage = {
    None = 0,
    WindyMove = 1,
    MagicFieldDirectionUsage_MAX = 2,
}

---@enum MagicFieldEffectDirectionType
MagicFieldEffectDirectionType = {
    FrontBack = 0,
    FrontBackLeftRight = 1,
    MagicFieldEffectDirectionType_MAX = 2,
}

---@enum MagicFieldEffectTriggerEvent
MagicFieldEffectTriggerEvent = {
    OnBorn = 0,
    OnDead = 1,
    OnEnter = 2,
    OnExit = 3,
    MagicFieldEffectTriggerEvent_MAX = 4,
}

---@enum MagicFieldOverlapType
MagicFieldOverlapType = {
    Normal = 0,
    NegativeOverlap = 1,
    MagicFieldOverlapType_MAX = 2,
}

---@enum ManagedNPCUnitType
ManagedNPCUnitType = {
    None = 0,
    DynamicObstacle = 1,
    TriggerBox = 2,
    Interactor = 3,
    Spawner = 4,
    Unit = 5,
    ManagedNPCUnitType_MAX = 6,
}

---@enum ManagedSceneObjType
ManagedSceneObjType = {
    None = 0,
    DynamicObstacle = 1,
    Overlap = 2,
    Interactor = 3,
    Unit = 4,
    Spawner = 5,
    ManagedSceneObjType_MAX = 6,
}

---@enum ManualSplineMoveCameraType
ManualSplineMoveCameraType = {
    None = 0,
    AlongSpline = 1,
    ManualSplineMoveCameraType_MAX = 2,
}

---@enum ManualSplineMoveDirectionType
ManualSplineMoveDirectionType = {
    Free = 0,
    Lock = 1,
    ManualSplineMoveDirectionType_MAX = 2,
}

---@enum MapCatFlag
MapCatFlag = {
    CAT_NONE = 0,
    CAT_N = 1,
    CAT_S = 2,
    CAT_NS = 3,
    CAT_W = 4,
    CAT_NW = 5,
    CAT_SW = 6,
    CAT_NSW = 7,
    CAT_E = 8,
    CAT_NE = 9,
    CAT_SE = 10,
    CAT_NSE = 11,
    CAT_WE = 12,
    CAT_NWE = 13,
    CAT_SWE = 14,
    CAT_NSWE = 15,
    CAT_MAX = 16,
}

---@enum MapSymbolLevel
MapSymbolLevel = {
    EnumMin = 0,
    CrossFocus = 1,
    Player = 2,
    Npc = 3,
    RebirthPoint = 4,
    Stupa = 5,
    GodTower = 6,
    StrongHold = 7,
    CaveEntrance = 8,
    Challenge = 9,
    Desc = 10,
    EnumMax = 11,
    MapSymbolLevel_MAX = 12,
}

---@enum MatPainterType
MatPainterType = {
    Point = 0,
    Line = 1,
    MatPainterType_MAX = 2,
}

---@enum MatSyncType
MatSyncType = {
    UnSync = 0,
    SyncMainTex = 1,
    SyncTierState = 2,
    SyncPercent = 3,
    SyncMainTexAndTier = 4,
    SyncAllQuick = 5,
    SyncAll = 6,
    MatSyncType_MAX = 7,
}

---@enum MatType
MatType = {
    Scale = 0,
    Vector = 1,
    Texture = 2,
    MatType_MAX = 3,
}

---@enum MaterialLayerParamEvaluateType
MaterialLayerParamEvaluateType = {
    None = 0,
    Override = 1,
    Additive = 2,
    MaterialLayerParamEvaluateType_MAX = 3,
}

---@enum MaterialLayerParamType
MaterialLayerParamType = {
    None = 0,
    Scalar = 1,
    LinearColor = 2,
    ScalarCurve = 3,
    ColorCurve = 4,
    MaterialLayerParamType_MAX = 5,
}

---@enum MenuSwitchType
MenuSwitchType = {
    Normal = 0,
    FocusActived = 1,
    AimingActived = 2,
    KeyBoardOrFocusActived = 3,
    MenuSwitchType_MAX = 4,
}

---@enum MenuUIStat
MenuUIStat = {
    None = 0,
    Normal = 1,
    Actived = 2,
    MenuUIStat_MAX = 3,
}

---@enum ModelOperateType
ModelOperateType = {
    UnableOperate = 0,
    OnlyYaw = 1,
    ZoomYaw = 2,
    ZoomYawPitch = 3,
    ModelOperateType_MAX = 4,
}

---@enum MontageBindReason
MontageBindReason = {
    Default = 0,
    NormalSkill = 1,
    MagicallyChange = 2,
    ChargeSkill = 3,
    ManualSplineMove = 4,
    FollowPartnerIdleDodge = 5,
    FollowPartnerIdleWaiting = 6,
    Patrol = 7,
    SummonBehavior = 8,
    Born = 9,
    LifeSavingHairPrepare = 10,
    LifeSavingHair = 11,
    EngageSkill = 12,
    InteractCricket = 13,
    Interact = 14,
    MontageBindReason_MAX = 15,
}

---@enum MontageSectionJumpType
MontageSectionJumpType = {
    None = 0,
    AnimationSyncing = 1,
    MontageSectionJumpType_MAX = 2,
}

---@enum MouseMoveHoverType
MouseMoveHoverType = {
    Default = 0,
    MoveHover = 1,
    StopUnhover = 2,
    MouseMoveHoverType_MAX = 3,
}

---@enum MoveDirection
MoveDirection = {
    None = 0,
    Forward = 1,
    Right = 2,
    Backward = 3,
    Left = 4,
    MoveDirection_MAX = 5,
}

---@enum MoveDirectionEight
MoveDirectionEight = {
    None = 0,
    F = 1,
    FR = 2,
    R = 3,
    BR = 4,
    B = 5,
    BL = 6,
    L = 7,
    FL = 8,
    MoveDirectionEight_MAX = 9,
}

---@enum MoveDirectionFive
MoveDirectionFive = {
    None = 0,
    F = 1,
    R = 2,
    BR = 3,
    BL = 4,
    L = 5,
    MoveDirectionFive_MAX = 6,
}

---@enum MovePhysicsRotationType
MovePhysicsRotationType = {
    None = 0,
    FollowVelocityXYPlane = 1,
    FollowVelocity = 2,
    MovePhysicsRotationType_MAX = 3,
}

---@enum MoveSpeedLevel
MoveSpeedLevel = {
    Walk = 0,
    Run = 1,
    Sprint = 2,
    MoveSpeedLevel_MAX = 3,
}

---@enum MoveToSceneItemAndCastSkillState
MoveToSceneItemAndCastSkillState = {
    None = 0,
    RotateToSceneItem = 2,
    MoveToSceneItem = 3,
    TryCastSkill = 4,
    CastingSkill = 5,
    EnumMax = 6,
    MoveToSceneItemAndCastSkillState_MAX = 7,
}

---@enum MovieConditionQueryType
MovieConditionQueryType = {
    AllLevelSwitchStateFinish = 0,
    GroupUnitBirthFinish = 1,
    MovieConditionQueryType_MAX = 2,
}

---@enum MovieRelationType
MovieRelationType = {
    None = 0,
    Actor = 1,
    Location = 2,
    Monster = 3,
    ManualLocation = 4,
    MovieRelationType_MAX = 5,
}

---@enum MovieTriggerType
MovieTriggerType = {
    None = 0,
    Overlap = 1,
    Interactor = 2,
    Unit = 3,
    NPC = 4,
    Spawner = 5,
    TaskStage = 6,
    MovieTriggerType_MAX = 7,
}

---@enum MultiTargetConditionType
MultiTargetConditionType = {
    None = 0,
    HasBuff = 1,
    HasState = 2,
    HasSimpleState = 3,
    HPPercentInRange = 4,
    MultiTargetConditionType_MAX = 5,
}

---@enum NeutralAnimalType
NeutralAnimalType = {
    None = 0,
    Battle = 1,
    Escape = 2,
    NeutralAnimalType_MAX = 3,
}

---@enum NormalStiffSectorsType
NormalStiffSectorsType = {
    AllForward = 0,
    ForwardAndBackward = 1,
    FourDir = 2,
    NormalStiffSectorsType_MAX = 3,
}

---@enum NpcMoveType
NpcMoveType = {
    Navigation = 0,
    Spline = 1,
    NpcMoveType_MAX = 2,
}

---@enum ObModeSource
ObModeSource = {
    Null = 0,
    Antique = 1,
    Artifact = 2,
    Item = 3,
    MainEquip = 4,
    EquipHead = 5,
    EquipUpwear = 6,
    EquipArm = 7,
    EquipFoot = 8,
    EquipHulu = 9,
    EquipWeapon = 10,
    EquipFabao = 11,
    EquipAccessory = 12,
    EquipSoul = 13,
    SoakingMain = 14,
    SoakingLiquor = 15,
    SoakingConsume1 = 16,
    SoakingConsume2 = 17,
    SoakingConsume3 = 18,
    SoakingConsume4 = 19,
    Legacy = 20,
    MedicineRecipe = 21,
    Black = 22,
    Spell = 23,
    Ability = 24,
    Setting = 25,
    Manual = 26,
    TravelNotesMain = 27,
    LegacyEven = 28,
    LegacyOdd = 29,
    AbilitySwitch = 30,
    SpellSwitch = 31,
    EquipMainSwitch = 32,
    ItemSwitch = 33,
    TNMSwitch = 34,
    ManualSwitch = 35,
    SettingSwitch = 36,
    LegacySwitch = 37,
    EquipSoulSwitch = 38,
    BlackSwitch = 39,
    EquipFabaoSwitch = 40,
    EquipAccessorySwitch = 41,
    MedicineRecipeSwitch = 42,
    ObModeSource_MAX = 43,
}

---@enum ObserveConditionType
ObserveConditionType = {
    None = 0,
    PlayerEnterArea = 1,
    PlayerLeaveArea = 2,
    PlayerPenetrateArea = 3,
    PlayerInteractBegin = 4,
    PlayerInteractBreak = 5,
    PlayerInteractEnd = 6,
    PlayerInteractTimeEnd = 7,
    UnitAllDeadInnerRange = 8,
    SpawnUnitAllDead = 9,
    TimeOver = 10,
    TimeOut = 11,
    WakeUp = 12,
    UnitDead = 13,
    Trigger = 14,
    GateOpen = 15,
    GateClose = 16,
    ChallengeFailed = 17,
    ChallengeAwarded = 18,
    ChallengeSuccess = 19,
    ChallengeBegin = 20,
    UseTagFlag = 100,
    UnitDestroy = 101,
    UnitActive = 102,
    UnitInActive = 103,
    UnitAttr = 104,
    SimpleState = 105,
    UnitState = 106,
    HasBuff = 107,
    ItemFullOnline = 108,
    EnumMax = 109,
    ObserveConditionType_MAX = 110,
}

---@enum ObserveOnlineConditionType
ObserveOnlineConditionType = {
    None = 0,
    PlayerCountInRange = 1,
    PlayerEnterBossTraceArea = 2,
    KillMonsterNumber = 3,
    GainItemCumulative = 4,
    AwardCount = 5,
    EnumMax = 6,
    ObserveOnlineConditionType_MAX = 7,
}

---@enum OrderSetting
OrderSetting = {
    Baseline = 0,
    Top = 1,
    Bottom = 2,
    OrderSetting_MAX = 3,
}

---@enum OverlapManagePolice
OverlapManagePolice = {
    SameAsPrevious = 0,
    KeepEnable = 1,
    KeepDisable = 2,
    OverlapManagePolice_MAX = 3,
}

---@enum OverlapState
OverlapState = {
    Enabled = 0,
    Disabled = 1,
    OverlapState_MAX = 2,
}

---@enum ParkourMoveAnimState
ParkourMoveAnimState = {
    None = 0,
    ParkourStart = 1,
    ParkourStartFinished = 2,
    ParkourFall = 3,
    ParkourLand = 4,
    ParkourMoveAnimState_MAX = 5,
}

---@enum PartnerAssistState
PartnerAssistState = {
    None = 0,
    PassiveWithOutAtk = 1,
    Passive = 2,
    Active = 3,
    PartnerAssistState_MAX = 4,
}

---@enum PatrolType
PatrolType = {
    None = 0,
    Random = 1,
    Spline = 2,
    Leisure = 3,
    Follow = 4,
    Group = 5,
    MultiSpline = 6,
    PatrolType_MAX = 7,
}

---@enum PerformerParamType
PerformerParamType = {
    None = 0,
    Overlap = 1,
    Performer = 2,
    PerformerParamType_MAX = 3,
}

---@enum PhysAnimType
PhysAnimType = {
    None = 0,
    Normal = 1,
    BeAttack = 2,
    PhysicBlend = 3,
    BeCatchThrow = 4,
    PhysicsSimulationMove = 5,
    DeathPhysicBlend = 6,
    DATA_MAX = 7,
    Death = 8,
    ThrowUpDeath = 9,
    PhysAnimType_MAX = 10,
}

---@enum PhysicBlendInType
PhysicBlendInType = {
    Immediately = 0,
    BlendByTime = 1,
    PhysicBlendInType_MAX = 2,
}

---@enum PhysicBlendOutType
PhysicBlendOutType = {
    Immediately = 0,
    BlendByTimeBeforeEnd = 1,
    BlendByTimeAfterEnd = 2,
    PhysicBlendOutType_MAX = 3,
}

---@enum PhysicsForceType
PhysicsForceType = {
    DirectionalForce = 0,
    ExplosiveForce = 1,
    PhysicsForceType_MAX = 2,
}

---@enum PlayerCameraMode
PlayerCameraMode = {
    AutoTrail = 0,
    LockDarkSoul = 1,
    LockDMC = 2,
    PlayerCameraMode_MAX = 3,
}

---@enum PlayerFreeCameraType
PlayerFreeCameraType = {
    None = 0,
    AutoTrail = 1,
    G4Mode = 2,
    SeqMatch = 3,
    PlayerFreeCameraType_MAX = 4,
}

---@enum PlayerTransBeginType
PlayerTransBeginType = {
    None = 0,
    CastSpell = 1,
    AddBuff = 2,
    BianChan = 3,
    Ride = 4,
    ReadArchive = 5,
    SkillEffect = 6,
    Plot = 7,
    RebirthPoint = 8,
    Sequence = 9,
    PlayerTransBeginType_MAX = 10,
}

---@enum PlayerTransEndType
PlayerTransEndType = {
    None = 0,
    CastSpell = 1,
    ManualEndRide = 2,
    BeatBack = 3,
    EnergyEmpty = 4,
    RebirthTransBack = 5,
    CPGTransBack = 6,
    HpTransBack = 7,
    Simplestate = 8,
    CantRide = 9,
    CantTrans = 10,
    Buff = 11,
    TriggerBoxForceTransBack = 12,
    SkillEffect = 13,
    CMGTransBack = 14,
    SettingransBack = 15,
    Plot = 16,
    PlayerTransEndType_MAX = 17,
}

---@enum PointBlockLocFlag
PointBlockLocFlag = {
    PBL_NONE = 0,
    PBL_N = 1,
    PBL_S = 2,
    PBL_W = 4,
    PBL_NW = 5,
    PBL_SW = 6,
    PBL_E = 8,
    PBL_NE = 9,
    PBL_SE = 10,
    PBL_NSWE = 15,
    PBL_MAX = 16,
}

---@enum PointGenBaseType
PointGenBaseType = {
    OwnCharacter = 0,
    Feature = 1,
    PointGenBaseType_MAX = 2,
}

---@enum PointTestType
PointTestType = {
    CheckAngle = 0,
    SkillArea = 1,
    Distance = 2,
    SkillCastRange = 3,
    CharacterBlock = 4,
    NavPathExist = 5,
    Visible = 6,
    Height = 7,
    PointTestType_MAX = 8,
}

---@enum PointsGenType
PointsGenType = {
    ByEQS_Async = 0,
    ByEQS_Sync = 1,
    BySocket = 2,
    BySceneItem = 3,
    ExplodeLineTrace = 4,
    PointsGenType_MAX = 5,
}

---@enum PoleDrinkConditionType
PoleDrinkConditionType = {
    HasTalent = 0,
    PoleDrinkConditionType_MAX = 1,
}

---@enum PostProcessSource
PostProcessSource = {
    None = 0,
    Buff = 1,
    AnimNotify = 2,
    ReservedAfterReset = 3,
    IntervalTrigger = 4,
    PostProcessSource_MAX = 5,
}

---@enum PriorityActionSelectUnitType
PriorityActionSelectUnitType = {
    AllInWandering = 0,
    FarFromPlayerAndInScreenSort = 1,
    PriorityActionSelectUnitType_MAX = 2,
}

---@enum PriorityActionUnitType
PriorityActionUnitType = {
    ActivatingGroupAIUnit = 0,
    NoneActivatingGroupAIUnit = 1,
    AllUnit = 2,
    PriorityActionUnitType_MAX = 3,
}

---@enum ProceduralMapType
ProceduralMapType = {
    PROCEDURAL_DUNGEON = 0,
    PROCEDURAL_WILDERNESS_LINEAR = 1,
    PROCEDURAL_DEMO_MAP = 2,
    PROCEDURAL_MAX = 3,
}

---@enum ProjectileAbilityType
ProjectileAbilityType = {
    Default = 0,
    DynamicScale = 2,
    LaserBullet = 4,
    ProceduralEnvInteract = 8,
    BulletMatMerge = 16,
    DestructibleBullet = 32,
    ThrowUpDeadUnit = 64,
    WindBrokenAudio = 128,
    ProjectileAbilityType_MAX = 129,
}

---@enum ProjectileBaseType
ProjectileBaseType = {
    None = 0,
    ProjectileSpawner = 1,
    EffectCaster = 2,
    EffectTarget = 3,
    CurTarget_ProjectileSpawner = 4,
    UsePointSetCached = 5,
    UseEffectPosition = 6,
    UseSkillBaseTarget = 7,
    SceneItemCached = 8,
    EffectRootCaster = 9,
    UseEQSPoint = 10,
    MutilTarget = 11,
    LocalPlayer = 12,
    ProjectileBaseType_MAX = 13,
}

---@enum ProjectileBornDirType
ProjectileBornDirType = {
    None = 0,
    UseSlotDir = 1,
    LookAtTargetPos = 2,
    XYLineFromOwner = 3,
    UseEffectNormal = 4,
    BaseActorRot = 5,
    UsePointSetCached = 6,
    UseEffectCasterRot = 7,
    LineFromSpawner = 8,
    ProjectileBornDirType_MAX = 9,
}

---@enum ProjectileDisableAbilityType
ProjectileDisableAbilityType = {
    Default = 0,
    SweepCheck = 2,
    Audio = 4,
    ProjectileDisableAbilityType_MAX = 5,
}

---@enum ProjectilePosOffsetSpace
ProjectilePosOffsetSpace = {
    WorldSpace = 0,
    BaseActorLocalSpace = 1,
    SocketLocalSpace = 2,
    ProjectilePosOffsetSpace_MAX = 3,
}

---@enum ProjectilePosOffsetType
ProjectilePosOffsetType = {
    None = 0,
    Normal = 1,
    RangeOffset = 2,
    RandomOffset = 3,
    ProjectilePosOffsetType_MAX = 4,
}

---@enum ProjectileSpawnerType
ProjectileSpawnerType = {
    EffectCaster = 0,
    EffectTarget = 1,
    EffectRootCaster = 2,
    ProjectileSpawnerType_MAX = 3,
}

---@enum ProjectileSpecificFlags
ProjectileSpecificFlags = {
    None = 0,
    Flame = 2,
    Poison = 4,
    WeakGuardianCircle = 8,
    ProjectileSpecificFlags_MAX = 9,
}

---@enum ProjectileType
ProjectileType = {
    None = 0,
    Bullet = 1,
    MagicField = 2,
    ProjectileType_MAX = 3,
}

---@enum QueryGameStateCondition
QueryGameStateCondition = {
    None = 0,
    HasArchive = 1,
    IsDebug = 2,
    NoArchive = 3,
    NotInDebug = 4,
    SeamlessStartNewGame = 5,
    GenericStartNewGame = 6,
    QueryGameStateCondition_MAX = 7,
}

---@enum QuestActorType
QuestActorType = {
    None = 0,
    Overlap = 1,
    DynamicObstacle = 2,
    Spawn = 3,
    Checker = 4,
    CovertTimer = 5,
    HLMQuest = 6,
    PlayerChecker = 7,
    SpawnWaves = 8,
    BirthDecideArea = 9,
    QuestActorType_MAX = 10,
}

---@enum RangePointSetType
RangePointSetType = {
    CircleRandom = 0,
    DonutRandom = 1,
    RangePointSetType_MAX = 2,
}

---@enum RebirthType
RebirthType = {
    RebirthPoint = 0,
    Quick = 1,
    SelfRescue = 2,
    EnumMax = 3,
    RebirthType_MAX = 4,
}

---@enum RenderTargetType
RenderTargetType = {
    None = 0,
    BeAttacked = 1,
    TTTB = 2,
    Shelter = 3,
    RenderTargetType_MAX = 4,
}

---@enum RequestTestResult
RequestTestResult = {
    FeatureNotFound = 0,
    NoNeedToTest = 1,
    SelectFaild = 2,
    SelectSuccess = 3,
    RequestTestResult_MAX = 4,
}

---@enum ResetActorReason
ResetActorReason = {
    None = 0,
    Rebirth = 1,
    InteractRebirthPoint = 2,
    NewSpawn = 3,
    LevelStreaming = 4,
    MaxHeightOffset = 5,
    ReturnHome = 6,
    GameLevelPass = 7,
    ResetActorReason_MAX = 8,
}

---@enum ResetSpringArmRotationWay
ResetSpringArmRotationWay = {
    None = 0,
    Reset2PlayerRotation = 1,
    Reset2NearestRotation = 2,
    UseCustomRotation = 3,
    ResetSpringArmRotationWay_MAX = 4,
}

---@enum RoleDataType
RoleDataType = {
    None = 0,
    ConsumedItem = 1,
    OwningItem = 2,
    InteractionRecord = 3,
    TaskStage = 4,
    OwningHulu = 5,
    Collection = 6,
    RoleDataType_MAX = 7,
}

---@enum RotTypeInLargeAngle
RotTypeInLargeAngle = {
    None = 0,
    AMMatryoshka = 1,
    AMAdditive = 2,
    RotTypeInLargeAngle_MAX = 3,
}

---@enum RotTypeInSmallAngle
RotTypeInSmallAngle = {
    None = 0,
    SimpleRotate = 1,
    RotTypeInSmallAngle_MAX = 2,
}

---@enum RotateDirection
RotateDirection = {
    Auto = 0,
    Clockwise = 1,
    Counterclockwise = 2,
    RotateDirection_MAX = 3,
}

---@enum RotationBaseDirection
RotationBaseDirection = {
    WorldSpaceXAxis = 0,
    LineToTarget = 1,
    RotationBaseDirection_MAX = 2,
}

---@enum SGI_Global
SGI_Global = {
    WaitGameStart = 0,
    MainMenu = 1,
    InBattleWaitingStartNewGame = 2,
    WXLogin = 3,
    WaittingSelectLevel820Demo = 4,
    InBattleStandAlone = 5,
    InBattleParty = 6,
    InBattleOnLineClient = 7,
    InBattleOnLineLS = 8,
    InBattleOnLineDS = 9,
    OpenMainMenuLevel = 10,
    SubG_GI_Loading_StartUp = 11,
    SubG_GI_Loading_StartNewGame = 12,
    SubG_GI_Loading_Teleport = 13,
    SubG_GI_Loading_GameLevelPass = 14,
    SubG_GI_Loading_ToiletStandAlone = 15,
    SubG_GI_Loading_ToiletListenServer = 16,
    SubG_GI_Loading_ToiletDedicateServer = 17,
    SubG_GI_Loading_ToiletClient = 18,
    SubG_GI_Loading_UnKnowLevelTravel = 19,
    SubG_GI_Loading_BackToMainMenu = 20,
    SubG_GI_Loading_InitWXLogin = 21,
    SubG_GI_Loading_PostWXLoginFinish = 22,
    SubG_GI_Loading_ReplayBattle = 23,
    SubG_GI_Loading_HandleDisConnect = 24,
    SubG_GI_Loading_BackToStandAlone = 25,
    SubG_GI_Loading_StartNewGamePlus = 26,
    SubG_GI_Loading_SaveArchiveAndWaitFinish = 27,
    SubG_GI_Loading_820DemoStartUp = 28,
    SubG_GI_Loading_820DemoReSetGameData = 29,
    SubG_GI_Loading_PreEnterMainMenu = 30,
    SubG_GI_Loading_TravelLevel = 31,
    SubG_GI_Loading_SetConfigAndPrecompilePSO = 32,
    SubG_GI_Loading_TravelToNextChapter = 33,
    SubG_GI_Loading_PreviewSequence = 34,
    SubG_GI_Loading_ServerLogin = 35,
    SubG_GI_Loading_PartyRoomServer = 36,
    SubG_GI_Loading_PartyRoomClient = 37,
    AsClientInGame = 38,
    AsListenServerInGame = 39,
    SubG_GI_Global_WXLogin = 40,
    SubG_GI_Global_BenchMark = 41,
    InBenchMark = 42,
    SubG_GI_Loading_CheckGSSdkServerConfig = 43,
    SGI_MAX = 44,
}

---@enum SGI_Loading
SGI_Loading = {
    GSGShowWXlogin = 0,
    WaitMatchStart = 1,
    FillIsInToilet = 2,
    LoadCharacterViewLevel = 3,
    LoadChapterViewLevel = 4,
    InitDispLibWorld = 5,
    ECSWorldBeginPlay = 6,
    GSGBtlOnBattleStart = 7,
    CreateNewRoleData = 8,
    GSGEnterBattleLevel = 9,
    ServerBattleReady = 10,
    GSGShowBattleUI = 11,
    GSGShowLoginUI = 12,
    GSGRecoverMuseum = 13,
    LoadingUIFadeAway = 14,
    LoadingUIFadeIn = 15,
    WaitReplayPlayerSpawn = 16,
    ShowReplayUI = 17,
    UnlockScopeReplayScrubComplete = 18,
    WaitTick = 19,
    LoginByRoleData = 20,
    WaitGSLoginSuccess = 21,
    PlayerDataInitPreEnterLevel = 22,
    GSGEnterLevel = 23,
    GSGExitLevel = 24,
    ECSWorldReset = 25,
    PauseGame = 26,
    ResumeGame = 27,
    InitNewArchiveData = 28,
    LoadingUIWaitUserInput = 29,
    LoadingUILinearTime = 30,
    ReadLatestArchive = 31,
    FillLoginRoleData = 32,
    OpenLevelByName = 33,
    Reset820DemoGameData = 34,
    ResetGameInstanceData = 35,
    CacheArchiveDataForClient = 36,
    OpenLevelStartUp = 37,
    OpenLevelDefaultBattle = 38,
    OpenLevelByIdInContext = 39,
    GSGOnBattleStart = 40,
    GSGOnBattleDestroy = 41,
    GSGBtlOnBattleDestroy = 42,
    MarkNewGameplusReady = 43,
    StartNewGamePlus = 44,
    WaitPlayerCameraBlend = 45,
    WaitLevelStreamingLoad = 46,
    UnrealTravelToServer = 47,
    WaitLocalPlayerFillLoginOption = 48,
    WaitLocalPlayerStartPlay = 49,
    InitLocalPlayerContainer = 50,
    WaitPostLoadMap = 51,
    WaitPostLoadMapClient = 52,
    FillLocalBPCRoleData = 53,
    WaitFirstPlayerLogin = 54,
    WaitAllAssetLoadFinsh = 55,
    WaitImportantAssetLoadFinsh = 56,
    WaitCheck820DemoGameVersion = 57,
    ResetNewGameplusArchive = 58,
    WaitStartGamePsoPrecompileFinish = 59,
    FirstStartGameSettings = 60,
    ShowAgreementPolicyInStartGame = 61,
    ShowLogoInStartGame = 62,
    ShowGameDisclaimerInStartGame = 63,
    ShowArchiveMarkInStartGame = 64,
    MarkFirstStartGameFlag = 65,
    CheckGSSdkServerConfig = 66,
    MarkCanFinishLoopMovie = 67,
    ShowHealthyGamingAdviceInStartGame = 68,
    TeleportTemplateBegin = 69,
    TeleportTemplateEnd = 70,
    PlayerTeleportToTemplatetargetPos = 71,
    LoadingUIBeginFadeAway = 72,
    SubG_GI_Loading_BattleLevelTravel = 73,
    SubG_GI_Loading_ClientEnvInit = 74,
    SubG_GI_Loading_HideLoadingUI = 75,
    SubG_GI_Loading_GSLogin = 76,
    SubG_GI_Loading_ReStartGSLogin = 77,
    SubG_GI_Loading_SaveArchiveAndWaitFinish = 78,
    RequestTemplateTravelLevelBegin = 79,
    RequestTemplateTravelLevelEnd = 80,
    RequestTemplatePreSaveArchive = 81,
    RequestTemplatePostSaveArchiveFinish = 82,
    RequestTemplatePreLeaveLevel = 83,
    SubG_GI_Loading_PostLeaveLevel = 84,
    RequestTemplateOpenLevel = 85,
    SubG_GI_Loading_PreEnterLevel = 86,
    RequestTemplatePostEnterLevelFinish = 87,
    RequestTemplatePostGSLoginFinish = 88,
    LockSaveArchiveByTravelLevel = 89,
    ReleaseSaveArchiveByTravelLevel = 90,
    SubG_GI_Loading_ResetGameInstanceDataAndSaveArchive = 91,
    RequestTemplateLoadArchiveData = 92,
    RequestTemplateCreateArchiveData = 93,
    RequestTemplatePerformActionsFromArchive = 94,
    SubG_GI_Loading_HandleArchiveInTravelLevel = 95,
    CheckArchiveDataIsValid = 96,
    SaveArchiveInTravelLevel = 97,
    OpenLoadingScreen = 98,
    PrepareFadeAway = 99,
    RequestFadeAway = 100,
    CloseLoadingScreen = 101,
    SpawnPlayerPawnWithOutECSBeginPlay = 102,
    TriggerTeleportAndWaitFinish = 103,
    PausePsoCachePrecompile = 104,
    ResumePsoCachePrecompile = 105,
    WaitPsoCachePrecompileFinish = 106,
    AdjustPSOCachePrecompileBatch = 107,
    SetPSOCacheUsageMask = 108,
    PreLogin = 109,
    PostLogin = 110,
    WaitGamePlayerInit = 111,
    SpawnCharacterForClient = 112,
    InitClientPlayerContainer = 113,
    ChangeGameDefaultMap = 114,
    CheckGSSdkUserConfig = 115,
    EngineHandleDisconnect = 116,
    ShowMessageBoxAndWaitConfirm = 117,
    TriggerBackToStandAlone = 118,
    NextChapterReqAndArchive = 119,
    GMRecordRebirthPos = 120,
    NetConectionFailurePreprocess = 121,
    InitCollectionSpawnActorState = 122,
    SaveArchiveAndWaitFinish = 123,
    PostSeamlessLevelTravel = 124,
    LoadCommLevel = 125,
    QuitGame = 126,
    WaitUntilGameStateInit = 127,
    PlayGoDownloadIncompleteImpl = 128,
    SGI_MAX = 129,
}

---@enum SPAWN_BASE_LOCATION
SPAWN_BASE_LOCATION = {
    BASE_ON_DEFAULT = 0,
    BASE_ON_SPECIFIC_WAVE_DEAD = 1,
    BASE_ON_PLAYER = 2,
    BASE_ON_MAX = 3,
}

---@enum SPAWN_CONDITION
SPAWN_CONDITION = {
    SPAWN_ON_DEFALUT = 0,
    SPAWN_ON_ALL_DEAD = 1,
    SPAWN_ON_DEAD_PERCENTAGE = 2,
    SPAWN_ON_RANDOM = 3,
    SPAWN_ON_MAX = 4,
}

---@enum SPAWN_METHOD
SPAWN_METHOD = {
    SPAWN_ON_START = 0,
    SPAWN_ON_WAVE = 1,
    SPAWN_ON_TRIGGER_RANGE = 2,
    SPAWN_ON_MAX = 3,
}

---@enum SPS_Transaction
SPS_Transaction = {
    TransactionTask = 0,
    SPS_MAX = 1,
}

---@enum SceneInteractorType
SceneInteractorType = {
    NONE = 0,
    HALF_CIRCLE = 1,
    CIRCLE = 2,
    MOVING_RECT = 3,
    SceneInteractorType_MAX = 4,
}

---@enum SceneLocationType
SceneLocationType = {
    LandingPoint = 0,
    SceneLocationType_MAX = 1,
}

---@enum SceneObjControllerType
SceneObjControllerType = {
    Base = 0,
    CharacterActiveState = 1,
    TriggerState = 2,
    ActorCallState = 3,
    TriggerBox = 4,
    RebirthPointActiveState = 5,
    DynamicObstacleState = 6,
    SceneObjControllerType_MAX = 7,
}

---@enum SceneObjTransitionEvent
SceneObjTransitionEvent = {
    OnSpawn = 0,
    Eliminate = 1,
    OnReset = 2,
    NextState = 3,
    JumpToState0 = 4,
    JumpToState1 = 5,
    JumpToState2 = 6,
    JumpToState3 = 7,
    JumpToState4 = 8,
    JumpToState5 = 9,
    JumpToState6 = 10,
    SceneObjTransitionEvent_MAX = 11,
}

---@enum SceneObjTransitionState
SceneObjTransitionState = {
    State0 = 0,
    State1 = 1,
    State2 = 2,
    State3 = 3,
    State4 = 4,
    State5 = 5,
    State6 = 6,
    Eliminated = 7,
    SceneObjTransitionState_MAX = 8,
}

---@enum ScrollConsumeType
ScrollConsumeType = {
    Normal = 0,
    NotConsumed = 1,
    CanScroll = 2,
    ScrollConsumeType_MAX = 3,
}

---@enum SelectTargetTypeFilter
SelectTargetTypeFilter = {
    None = 0,
    Character = 1,
    Bullet = 2,
    MagicField = 4,
    DestructibleActor = 8,
    SelectTargetTypeFilter_MAX = 9,
}

---@enum SequenceBlendInMatchPositionType
SequenceBlendInMatchPositionType = {
    None = 0,
    OnePoint = 1,
    TwoPoint = 2,
    Ori2PointA = 3,
    SequenceBlendInMatchPositionType_MAX = 4,
}

---@enum SequencePhase
SequencePhase = {
    None = 0,
    Started = 1,
    Finished = 2,
    SequencePhase_MAX = 3,
}

---@enum ServantSearchTargetType
ServantSearchTargetType = {
    None = 0,
    CatchPlayer = 1,
    SyncMaster = 2,
    ByPerception = 3,
    SyncSummoner = 4,
    ServantSearchTargetType_MAX = 5,
}

---@enum ServantType
ServantType = {
    None = 0,
    Normal = 1,
    Dummy = 2,
    Clone = 3,
    PhantomRush = 4,
    MonsterSpawn = 5,
    NeutralAnimSpawn = 6,
    ServantType_MAX = 7,
}

---@enum SkillCameraRotationType
SkillCameraRotationType = {
    UseUnitRotation = 0,
    UseControllerRotation = 1,
    SkillCameraRotationType_MAX = 2,
}

---@enum SkillDirection
SkillDirection = {
    None = 0,
    Forward = 1,
    Right = 2,
    Backward = 3,
    Left = 4,
    SkillDirection_MAX = 5,
}

---@enum SkillIDSource
SkillIDSource = {
    Custom = 0,
    FromSceneItem = 1,
    SkillIDSource_MAX = 2,
}

---@enum SlowIKType
SlowIKType = {
    None = 0,
    RightHand_WithWeaponR = 1,
    LeftHand_WithWeaponR = 2,
    LeftHand_WithWeaponL = 3,
    RightHand_WithWeaponL = 4,
    DoubleHand_WithWeaponR = 5,
    DoubleHand_WithWeaponL = 6,
    SlowIKType_MAX = 7,
}

---@enum SocketMatchTamerType
SocketMatchTamerType = {
    Prefix = 0,
    Full = 1,
    SocketMatchTamerType_MAX = 2,
}

---@enum SpawnPointType
SpawnPointType = {
    UseSpawnPoints = 0,
    UseEQS = 1,
    UseLocalSpaceOffset = 2,
    SpawnPointType_MAX = 3,
}

---@enum SpawnRule
SpawnRule = {
    Random = 0,
    RandomLeast = 1,
    First = 2,
    SpawnRule_MAX = 3,
}

---@enum SpawnType
SpawnType = {
    Weapon = 0,
    Character = 1,
    SpawnType_MAX = 2,
}

---@enum SpawnWaveLocalSpaceType
SpawnWaveLocalSpaceType = {
    LocalPlayer = 0,
    LocalController = 1,
    SpawnWaveLocalSpaceType_MAX = 2,
}

---@enum SpawnWaveStartConditionType
SpawnWaveStartConditionType = {
    Auto = 0,
    PreviousClear = 1,
    TimeAfterPrevious = 2,
    TimeAfterPreviousClear = 3,
    GlobleCDFinished = 4,
    SpawnWaveStartConditionType_MAX = 5,
}

---@enum SpawnWaveType
SpawnWaveType = {
    SpawnSequence = 0,
    SpawnInfinite = 1,
    SpawnWaveType_MAX = 2,
}

---@enum SpawnerManagePolice
SpawnerManagePolice = {
    SameAsPrevious = 0,
    Auto = 1,
    SameAsBattle = 2,
    OnlyBeginSameAsBattle = 3,
    OnlyEndSameAsBattle = 4,
    Disable = 5,
    BeginLikeStateEndLikeBattle = 6,
    SpawnerManagePolice_MAX = 7,
}

---@enum SpawnerState
SpawnerState = {
    Disabled = 0,
    Enabled = 1,
    Spawned = 2,
    SpawnerState_MAX = 3,
}

---@enum SpecialMovementMode
SpecialMovementMode = {
    GroundMove = 0,
    AirMove = 1,
    GlideMove = 2,
    ParkourMove = 3,
    WallMove = 4,
    FlyMove = 5,
    SplineMove = 6,
    SpecialMovementMode_MAX = 7,
}

---@enum SpeedInterpMode
SpeedInterpMode = {
    ByPercentage = 0,
    ByValue = 1,
    SpeedInterpMode_MAX = 2,
}

---@enum SpiderNavPositionType
SpiderNavPositionType = {
    Ground = 0,
    Wall = 1,
    SpiderNavPositionType_MAX = 2,
}

---@enum SplineFlyUnitType
SplineFlyUnitType = {
    Monster = 0,
    Player = 1,
    TransitionPlayer = 2,
    SplineFlyUnitType_MAX = 3,
}

---@enum StageStatus
StageStatus = {
    Default = 0,
    Activated = 1,
    Finished = 2,
    StageStatus_MAX = 3,
}

---@enum StanceType_Combo
StanceType_Combo = {
    Heavy = 0,
    PROP = 1,
    POKE = 2,
    StanceType_MAX = 3,
}

---@enum StandRotateType
StandRotateType = {
    Left90 = 0,
    Right90 = 1,
    Left180 = 2,
    Right180 = 3,
    StandRotateType_MAX = 4,
}

---@enum StartJumpSpdState
StartJumpSpdState = {
    StartJumpSpdState_Zero = 0,
    StartJumpSpdState_Normal = 1,
    StartJumpSpdState_Fast = 2,
    StartJumpSpdState_MAX = 3,
}

---@enum State_MM
State_MM = {
    None = 0,
    Lock = 1,
    Free = 2,
    FreeWalk = 3,
    FreeRun = 4,
    FreeSprint = 5,
    LockWalk = 6,
    LockRun = 7,
    LockSprint = 8,
    FrozenMove = 9,
    MuddyMove = 10,
    WindyMove = 11,
    SpiderSilkyMove = 12,
    State_MAX = 13,
}

---@enum StickLevelShowType
StickLevelShowType = {
    Normal = 0,
    InDaSheng = 1,
    Trans = 2,
    StickLevelShowType_MAX = 3,
}

---@enum SummonBehaviorState
SummonBehaviorState = {
    Default = 0,
    Idle = 1,
    Follow = 2,
    EnumMax = 3,
    SummonBehaviorState_MAX = 4,
}

---@enum SummonType
SummonType = {
    Normal = 0,
    PhantomRush = 1,
    Hatch = 2,
    MonsterSpawn = 3,
    NeutralAnimSpawn = 4,
    SummonType_MAX = 5,
}

---@enum SurfaceTypeOverrideMethod
SurfaceTypeOverrideMethod = {
    None = 0,
    Replace = 1,
    Generate = 2,
    SurfaceTypeOverrideMethod_MAX = 3,
}

---@enum SwitchBattleFSMState
SwitchBattleFSMState = {
    Attack = 0,
    Wander = 1,
    SwitchBattleFSMState_MAX = 2,
}

---@enum SwitchHeroReason
SwitchHeroReason = {
    Manual = 0,
    Dead = 1,
    SwitchHeroReason_MAX = 2,
}

---@enum TWVectorUseType
TWVectorUseType = {
    UsePredefinedVectorSlot0 = 0,
    UsePredefinedVectorSlot1 = 1,
    UsePredefinedVectorSlot2 = 2,
    UsePredefinedVectorSlot3 = 3,
    UseVectorBase = 4,
    TWVectorUseType_MAX = 5,
}

---@enum TalentState
TalentState = {
    NotLearn = 0,
    HasLearn = 1,
    MaxLearn = 2,
    TalentState_MAX = 3,
}

---@enum TamerStrategyArea
TamerStrategyArea = {
    None = 0,
    SuspendedSculptures = 1,
    Dungeon = 2,
    TamerStrategyArea_MAX = 3,
}

---@enum TargetActionType
TargetActionType = {
    WakeUp = 0,
    TriggerEffectByID = 1,
    AddBuffByID = 2,
    TargetActionType_MAX = 3,
}

---@enum TargetLevelNetType
TargetLevelNetType = {
    MainMenu = 0,
    StandAlone = 1,
    ListenServer = 2,
    Client = 3,
    Other = 4,
    TargetLevelNetType_MAX = 5,
}

---@enum TargetSourceType
TargetSourceType = {
    None = 0,
    CameraLockUpdate = 1,
    SwitchTarget_TransUnit = 2,
    SwitchTarget_PhantomRush = 3,
    Target_AIPerception = 4,
    Target_ByTaunter = 5,
    Target_ByHatred = 6,
    Target_AwakePartner = 7,
    Target_SelectByEQS = 8,
    Target_CQGAssignTarget = 9,
    Target_SeqAssignTarget = 10,
    Target_SwitchTaget = 11,
    Target_RangeSearch = 12,
    Target_AutoTest = 13,
    Target_CPGAssignTarget = 14,
    Target_CMGAssignTarget = 15,
    Target_BattleTriggerBoxAssignTarget = 16,
    Target_ForceFightAssignTarget = 17,
    Target_ActionBoxAssignTarget = 18,
    Target_TeamBoxAssignTarget = 19,
    Target_AnimSyncAssignTarget = 20,
    Target_AssociaAssignTarget = 21,
    Target_BirthCatchPlayer = 22,
    Target_BirthCatchMasterTarget = 23,
    Target_BirthCatchSummonerTarget = 24,
    Target_AssignPlayerAsTarget = 25,
    Target_MonsterTransAssignTarget = 26,
    Target_BeAttackedAssignAttackerAsTarget = 27,
    Target_SummonAssignMasterTarget = 28,
    Target_FindByPlayerLockTarget = 29,
    Target_FindByHostileToPlayer = 30,
    Target_FindByMasterLock = 31,
    Target_FamilyAssignTarget = 32,
    Target_MagicFieldSetOverlapActorAsMasterTarget = 33,
    Target_ForceCameraLock = 34,
    Target_AIStrongPerception = 35,
    AO_AORangeFind = 36,
    AO_SetByTarget = 37,
    Combo_NormalUse = 38,
    Combo_Update = 39,
    SkillBase_NormalUse = 40,
    SkillBase_SetByCombo = 41,
    SkillBase_SetByAI = 42,
    Target_AutoMoveTo = 43,
    TargetSourceType_MAX = 44,
}

---@enum TaskCollectionState
TaskCollectionState = {
    Default = 0,
    Activated = 1,
    Finished = 2,
    TaskCollectionState_MAX = 3,
}

---@enum TaskQueryCompoundConditionType
TaskQueryCompoundConditionType = {
    None = 0,
    QueryTaskStageState = 1,
    QueryInteractionRecord = 2,
    QueryActorState = 3,
    QueryOwningItem = 4,
    TaskQueryCompoundConditionType_MAX = 5,
}

---@enum TaskStageConditionType
TaskStageConditionType = {
    Actived = 0,
    Finsh = 1,
    TaskStageConditionType_MAX = 2,
}

---@enum TaskStageState
TaskStageState = {
    Default = 0,
    Activated = 1,
    Finished = 2,
}

---@enum TaskStageStateType
TaskStageStateType = {
    NoActive = 0,
    Actived = 1,
    Finsh = 2,
    TaskStageStateType_MAX = 3,
}

---@enum TeleportLocationType
TeleportLocationType = {
    None = 0,
    BossTraceCenter = 1,
    BossTracePointRandom = 2,
    EnumMax = 3,
    TeleportLocationType_MAX = 4,
}

---@enum TeleportPointType
TeleportPointType = {
    CachedInteractItem = 0,
    TeleportPointType_MAX = 1,
}

---@enum TeleportReason
TeleportReason = {
    None = 0,
    Rebirth = 1,
    RebirthPointManual = 2,
    TeleportReason_MAX = 3,
}

---@enum TeleportTypeV2
TeleportTypeV2 = {
    SimpleLevelIdAndTransform = 0,
    RebirthPoint = 1,
    TeleportNamedPoint = 2,
    Dream = 3,
    NextChapter = 4,
    RebirthPointTeleportOnly = 5,
    PrologueCompleted = 6,
    TeleportTypeV2_MAX = 7,
}

---@enum TextColorType
TextColorType = {
    None = 0,
    Normal = 1,
    Actived = 2,
    Disable = 3,
    TextColorType_MAX = 4,
}

---@enum TileItemScene
TileItemScene = {
    None = 0,
    EquipItem = 1,
    GearItem = 2,
    RZDItem = 3,
    ShopItem = 4,
    ShopEquipItem = 5,
    StrengthItem = 6,
    StrengthRZDItem = 7,
    TileItemScene_MAX = 8,
}

---@enum TouchIKType
TouchIKType = {
    LeftHand = 0,
    RightHand = 1,
    LeftFoot = 2,
    RightFoot = 3,
    Head = 4,
    Tail = 5,
    Weapon = 6,
    EnumMax = 7,
    TouchIKType_MAX = 8,
}

---@enum TraceSpawnType
TraceSpawnType = {
    None = 0,
    ByTeleportIndex = 1,
    EnumMax = 2,
    TraceSpawnType_MAX = 3,
}

---@enum TransMusicConfig
TransMusicConfig = {
    ByQuality = 0,
    Enable = 1,
    Disable = 2,
    TransMusicConfig_MAX = 3,
}

---@enum TransactionAbortReason
TransactionAbortReason = {
    Unknow = 0,
    PlayerLogOut = 1,
    TransactionAbortReason_MAX = 2,
}

---@enum TransactionState
TransactionState = {
    Starting = 0,
    Runing = 1,
    Aborted = 2,
    Finished = 3,
    TransactionState_MAX = 4,
}

---@enum TransactionTaskState
TransactionTaskState = {
    Init = 0,
    Runing = 1,
    Aborted = 2,
    Finished = 3,
    TransactionTaskState_MAX = 4,
}

---@enum TransactionTaskType
TransactionTaskType = {
    Interact_RequestInteractObjLock = 0,
    Interact_TriggerPreInteract = 1,
    Interact_Input = 2,
    Interact_MatchPos = 3,
    Interact_PlaySound = 4,
    Interact_HandleInteractCamera = 5,
    Interact_ProcessActionLock = 6,
    Interact_DoInteractActionAndWait = 7,
    Interact_TriggerBeInteract = 8,
    Interact_ProcessActionUnLock = 9,
    Interact_ResetCamera = 10,
    Interact_RequestInteractObjUnLock = 11,
    Interact_MAX = 12,
}

---@enum TransactionType
TransactionType = {
    Interact = 0,
    InteractAction = 1,
    TransactionType_MAX = 2,
}

---@enum TransformBySplineRotateType
TransformBySplineRotateType = {
    RotateToSplineTangentByTargetSide = 0,
    RotateToSplineTangentByCurSide = 1,
    RotateToSplineTangent = 2,
    RotateToTarget = 3,
    EnumMax = 4,
    TransformBySplineRotateType_MAX = 5,
}

---@enum TransitionConditionType_Battle
TransitionConditionType_Battle = {
    None = 0,
    UnitsDead = 1,
    WaveEnd = 2,
    HasBuff = 3,
    KillOrder = 4,
    UnitsTransStage = 5,
    UnitsAlive = 6,
    GroupUnitDead = 7,
    Countdown = 8,
    NotInOverlapBox = 9,
    InOverlapBox = 10,
    UIBattleFinish = 11,
    PlayerAlive = 12,
    PlayerDead = 13,
    TransitionConditionType_MAX = 14,
}

---@enum TransitionConditionType_Group
TransitionConditionType_Group = {
    None = 0,
    EnterOverlap = 1,
    InteractorEnd = 2,
    InteractorInOverlap = 3,
    GameStateCondition = 4,
    InteractorTimeOver = 5,
    UnitsDead = 6,
    WaveEnd = 7,
    HasBuff = 8,
    KillOrder = 9,
    SequencePlayed = 10,
    TaskStage = 11,
    UnitsAlive = 12,
    CircusInteractorEnd = 13,
    CircusEnterOverlap = 14,
    NotInOverlapBox = 15,
    InOverlapBox = 16,
    UIBattleFinish = 17,
    TransitionConditionType_MAX = 18,
}

---@enum TransitionConditionType_Guide
TransitionConditionType_Guide = {
    None = 0,
    EnterOverlap = 1,
    InAbnormalState = 2,
    InteractRebirthPoint = 3,
    PlayerDead = 4,
    PlayerRebirth = 5,
    UnitDead = 6,
    GainItem = 7,
    PlayerAttr = 8,
    UnitActive = 9,
    CloseToMonster = 10,
    TaskStage = 11,
    CurrentMap = 12,
    NotInOverlapBox = 13,
    InOverlapBox = 14,
    NotPlayingSeq = 15,
    LearnTalent = 16,
    OpenUIPage = 17,
    DropUIConfirm = 18,
    FinishGuideGroup = 19,
    ObserveSequence = 20,
    OwningItem = 21,
    TransitionConditionType_MAX = 22,
}

---@enum TransitionConditionType_Idle
TransitionConditionType_Idle = {
    None = 0,
    EnterOverlap = 1,
    InteractorEnd = 2,
    InteractorInOverlap = 3,
    GameStateCondition = 4,
    ActionsAllFinish = 5,
    InteractorTimeOver = 6,
    CheckTimeInOverlap = 7,
    CheckTimeOutOverlap = 8,
    TaskStage = 9,
    ConsumedItem = 10,
    OwningItem = 11,
    InteractionRecord = 12,
    InteractionEnd = 13,
    UnitActive = 14,
    NpcActionFinished = 15,
    NPCReach = 16,
    AiConversationChainEnd = 17,
    UnownedEnoughItem = 18,
    UnitInActive = 19,
    NotInOverlapBox = 20,
    InOverlapBox = 21,
    PlayerCloudMove = 22,
    PlayerTransAsFox = 23,
    TransitionConditionType_MAX = 24,
}

---@enum TransitionConditionType_State
TransitionConditionType_State = {
    None = 0,
    EnterOverlap = 1,
    InteractorEnd = 2,
    InteractorTimeOver = 3,
    UnitsDead = 4,
    WaveEnd = 5,
    HasBuff = 6,
    SequencePlayed = 7,
    TaskStage = 8,
    GamePlayCount = 9,
    CircusInteractorEnd = 10,
    CircusEnterOverlap = 11,
    NotInOverlapBox = 12,
    InOverlapBox = 13,
    TransitionConditionType_MAX = 14,
}

---@enum TreeImposterSceneShotName
TreeImposterSceneShotName = {
    BaseColor = 0,
    NormalWS = 1,
    Specular = 2,
    Roughness = 3,
    OpacityMask = 4,
    TreeImposterSceneShotName_MAX = 5,
}

---@enum TriggerEventReturnType
TriggerEventReturnType = {
    NotTriggered = 0,
    TriggerSucceeded = 1,
    TriggerFailed = 2,
    TriggerEventReturnType_MAX = 3,
}

---@enum TriggerType
TriggerType = {
    None = 0,
    Interact = 1,
    Overlap = 2,
    CharacterState = 3,
    CharacterAttr = 4,
    CircleRangeCharacterDie = 5,
}

---@enum TriggerUnitFilter
TriggerUnitFilter = {
    WuKongOnly = 0,
    WuKongTeam = 1,
    SpecifiedResID = 2,
    All = 3,
    TriggerUnitFilter_MAX = 4,
}

---@enum TurnSkillType
TurnSkillType = {
    LeftSmall = 0,
    RightSmall = 1,
    LeftBig = 2,
    RightBig = 3,
    TurnSkillType_MAX = 4,
}

---@enum Type_CheckCompProfileName_Bullet
Type_CheckCompProfileName_Bullet = {
    NormalBullet = 0,
    Type_CheckCompProfileName_MAX = 1,
}

---@enum Type_CheckCompProfileName_MagicField
Type_CheckCompProfileName_MagicField = {
    NormalMagicField = 0,
    JustCheckPhysicsBody = 1,
    Type_CheckCompProfileName_MAX = 2,
}

---@enum UITipsMode
UITipsMode = {
    Upper = 0,
    Under = 1,
    Left = 2,
    Right = 3,
    UITipsMode_MAX = 4,
}

---@enum UnitCompNeedLevel
UnitCompNeedLevel = {
    Unused = 0,
    DebugAndTest = 1,
    OnlyTest = 2,
    OnlyDebug = 3,
    Alter = 4,
    Need = 5,
    UnitCompNeedLevel_MAX = 6,
}

---@enum UnitDynamicObstaclePerformAMType
UnitDynamicObstaclePerformAMType = {
    OnlyFront = 0,
    FrontAndBehind = 1,
    FourDir = 2,
    UnitDynamicObstaclePerformAMType_MAX = 3,
}

---@enum UnitGuidType
UnitGuidType = {
    Random = 0,
    Fixed = 1,
    UnitGuidType_MAX = 2,
}

---@enum UnitManagePolice
UnitManagePolice = {
    SameAsPrevious = 0,
    Status = 1,
    StatusWithoutHP = 2,
    Spawn = 3,
    Destroy = 4,
    UnitManagePolice_MAX = 5,
}

---@enum UnitTagType
UnitTagType = {
    NormalMonster = 0,
    SmallMonster = 1,
    Boss = 2,
    ClonedWukong = 3,
    Wukong = 4,
    TransitionPlayer = 5,
    JSDS = 6,
    YangJian = 7,
    UnitTagType_MAX = 8,
}

---@enum ValueCompareOperationType
ValueCompareOperationType = {
    EqualTo = 0,
    NotEqualTo = 1,
    LessThan = 2,
    LessThanOrEqualTo = 3,
    GreaterThan = 4,
    GreaterThanOrEqualTo = 5,
    ValueCompareOperationType_MAX = 6,
}

---@enum ValueCompareOperations
ValueCompareOperations = {
    EqualTo = 0,
    NotEqualTo = 1,
    LessThan = 2,
    LessThanOrEqualTo = 3,
    GreaterThan = 4,
    GreaterThanOrEqualTo = 5,
    LessThanPercentage = 6,
    LessThanOrEqualToPercentage = 7,
    GreaterThanPercentage = 8,
    GreaterThanOrEqualToPercentage = 9,
    ValueCompareOperations_MAX = 10,
}

---@enum ValueCompareType
ValueCompareType = {
    IsEqualTo = 0,
    IsNotEqualTo = 1,
    IsLessThan = 2,
    IsLessThanOrEqualTo = 3,
    IsGreaterThan = 4,
    IsGreaterThanOrEqualTo = 5,
    ValueCompareType_MAX = 6,
}

---@enum WarnState
WarnState = {
    None = 0,
    Danger = 1,
    Safe = 2,
    EnumMax = 3,
    WarnState_MAX = 4,
}

---@enum WarnStateBlock
WarnStateBlock = {
    UnBlock = 0,
    BlockOnce = 1,
    BlockState = 2,
    BlockAll = 3,
    EnumMax = 4,
    WarnStateBlock_MAX = 5,
}

---@enum WaveStopActionType
WaveStopActionType = {
    DestroyAllSpawnedUnits = 0,
    SpawnedUnitsReturnHome = 1,
    WaveStopActionType_MAX = 2,
}

---@enum WidgetUIStat
WidgetUIStat = {
    None = 0,
    Empty = 1,
    NorReady = 2,
    NorInCD = 3,
    LockReady = 4,
    LockInCD = 5,
    Actived = 6,
    WidgetUIStat_MAX = 7,
}

---@enum ZatoichiSkillSourceType
ZatoichiSkillSourceType = {
    None = 0,
    UseWithSkillCategory = 1,
    UseWithGroupAI = 2,
    UseWithSurpriseSkilll = 3,
    UseWithAvoidObstacle = 4,
    UseWithStalemateSkill = 5,
    ZatoichiSkillSourceType_MAX = 6,
}

