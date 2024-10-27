---@enum EBGWNATType
EBGWNATType = {
    SONY_NAT_TYPE_UNKNOWN = 0,
    SONY_NAT_TYPE_1 = 1,
    SONY_NAT_TYPE_2 = 2,
    SONY_NAT_TYPE_3 = 3,
    STEAM_IS_BEHIND_NAT = 4,
    STEAM_NOT_BEHIND_NAT = 5,
    EOS_NAT_Unknown = 6,
    EOS_NAT_Open = 7,
    EOS_NAT_Moderate = 8,
    EOS_NAT_Strict = 9,
    NotSupport = 10,
    EBGWNATType_MAX = 11,
}

---@enum EConfigIniFileNames
EConfigIniFileNames = {
    GEngineIni = 0,
    GGameIni = 1,
    GGameUserSettingsIni = 2,
    GEditorIni = 3,
    GEditorKeyBindingsIni = 4,
    GEditorLayoutIni = 5,
    GEditorSettingsIni = 6,
    GEditorPerProjectIni = 7,
    GCompatIni = 8,
    GLightmassIni = 9,
    GScalabilityIni = 10,
    GHardwareIni = 11,
    GInputIni = 12,
    GRuntimeOptionsIni = 13,
    GInstallBundleIni = 14,
    GDeviceProfilesIni = 15,
    GSGameVersionIni = 16,
    EConfigIniFileNames_MAX = 17,
}

---@enum EEffectTypeManagerCullMode
EEffectTypeManagerCullMode = {
    Enabled = 0,
    Paused = 1,
    Disabled = 2,
    EEffectTypeManagerCullMode_MAX = 3,
}

---@enum EGSBitmapJustification
EGSBitmapJustification = {
    Left = 0,
    Middle = 1,
    Right = 2,
    EGSBitmapJustification_MAX = 3,
}

---@enum EGSCapturedStatType
EGSCapturedStatType = {
    NONE = 0,
    CYCLE = 1,
    MEMORY = 2,
    NUM = 3,
    EGSCapturedStatType_MAX = 4,
}

---@enum EGSGraphicsMemoryMode
EGSGraphicsMemoryMode = {
    DEDICATED = 0,
    SHARED = 1,
    TOTAL = 2,
    EGSGraphicsMemoryMode_MAX = 3,
}

---@enum EGSNiagaraSysParamType
EGSNiagaraSysParamType = {
    GSNPT_None = 0,
    GSNPT_Float = 1,
    GSNPT_Bool = 2,
    GSNPT_Int = 3,
    GSNPT_Vector = 4,
    GSNPT_LinearColor = 5,
    GSNPT_MAX = 6,
}

---@enum EGSPriorityMode
EGSPriorityMode = {
    QUALITY_PRIOR = 0,
    PERF_PRIOR = 1,
    EGSPriorityMode_MAX = 2,
}

---@enum EGSQualityLevel
EGSQualityLevel = {
    INVALID = 0,
    LOW = 1,
    MEDIUM = 2,
    HIGH = 3,
    EPIC = 4,
    CINE = 5,
    EGSQualityLevel_MAX = 6,
}

---@enum EGSScreenMode
EGSScreenMode = {
    FULL_SCREEN = 0,
    WINDOWED_NO_BORDER = 1,
    WINDOWED = 2,
    EGSScreenMode_MAX = 3,
}

---@enum EGSToggleActorTickEnableType
EGSToggleActorTickEnableType = {
    ActorTick = 0,
    MoveComp = 1,
    SKMeshComp = 2,
    AkComp = 3,
    AIComp = 4,
    INCLUDE_CHILD_ACTOR = 5,
    EGSToggleActorTickEnableType_MAX = 6,
}

---@enum EGSUIConflictNavigationType
EGSUIConflictNavigationType = {
    Gamepad_DPad = 0,
    Gamepad_Left = 1,
    Keyboard = 2,
    EGSUIConflictNavigationType_MAX = 3,
}

---@enum ERRIndicatorType
ERRIndicatorType = {
    Top = 0,
    Bottom = 1,
    Left = 2,
    Right = 3,
    Middle = 4,
    ERRIndicatorType_MAX = 5,
}

---@enum ERotateType
ERotateType = {
    PITCH = 0,
    YAW = 1,
    ROLL = 2,
    ERotateType_MAX = 3,
}

---@enum ESampleType
ESampleType = {
    Nearest = 0,
    Bilinear = 1,
    ESampleType_MAX = 2,
}

---@enum EScalabilityQuality
EScalabilityQuality = {
    INVALID = 0,
    LOW = 1,
    MEDIUM = 2,
    HIGH = 3,
    EPIC = 4,
    CINE = 5,
    EScalabilityQuality_MAX = 6,
}

---@enum EStatUISimulatedGraphicsCard
EStatUISimulatedGraphicsCard = {
    GTX_1050Ti = 0,
    GTX_1660 = 1,
    GTX_1660Ti = 2,
    RTX_2060 = 3,
    RTX_2060S = 4,
    RTX_2070 = 5,
    RTX_2080 = 6,
    RTX_2080Ti = 7,
    RTX_3060 = 8,
    RTX_3070 = 9,
    RTX_3080 = 10,
    RTX_3080Ti = 11,
    RTX_3090 = 12,
    EStatUISimulatedGraphicsCard_MAX = 13,
}

---@enum UGSE_BULKDATA_LOCKMODE
UGSE_BULKDATA_LOCKMODE = {
    LOCK_READ_ONLY = 1,
    LOCK_READ_WRITE = 2,
    LOCK_READ_MAX = 3,
}

