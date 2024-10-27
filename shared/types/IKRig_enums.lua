---@enum EIKRigGoalSpace
EIKRigGoalSpace = {
    Component = 0,
    Additive = 1,
    World = 2,
    EIKRigGoalSpace_MAX = 3,
}

---@enum EIKRigGoalTransformSource
EIKRigGoalTransformSource = {
    Manual = 0,
    Bone = 1,
    ActorComponent = 2,
    EIKRigGoalTransformSource_MAX = 3,
}

---@enum ERetargetRotationMode
ERetargetRotationMode = {
    Interpolated = 0,
    OneToOne = 1,
    OneToOneReversed = 2,
    None = 3,
    ERetargetRotationMode_MAX = 4,
}

---@enum ERetargetTranslationMode
ERetargetTranslationMode = {
    None = 0,
    GloballyScaled = 1,
    Absolute = 2,
    ERetargetTranslationMode_MAX = 3,
}

