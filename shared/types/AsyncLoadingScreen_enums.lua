---@enum EGSLoadingScreenState
EGSLoadingScreenState = {
    Idle = 0,
    SlateThreadUpdating = 1,
    GameThreadWaitingMovieFinish = 2,
    MainThreadUpdating = 3,
    EGSLoadingScreenState_MAX = 4,
}

---@enum EGSLoadingScreenType
EGSLoadingScreenType = {
    Unknown = 0,
    LoadProgOnly = 1,
    Full = 2,
    FullBlack = 3,
    FullWhite = 4,
    Chapter = 5,
    EGSLoadingScreenType_MAX = 6,
}

