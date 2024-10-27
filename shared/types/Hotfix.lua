---@meta

---@class UOnlineHotfixManager : UObject
---@field OSSName FString
---@field HotfixManagerClassName FString
---@field DebugPrefix FString
---@field AssetsHotfixedFromIniFiles TArray<UObject>
UOnlineHotfixManager = {}

function UOnlineHotfixManager:StartHotfixProcess() end


---@class UUpdateManager : UObject
---@field HotfixCheckCompleteDelay float
---@field UpdateCheckCompleteDelay float
---@field HotfixAvailabilityCheckCompleteDelay float
---@field UpdateCheckAvailabilityCompleteDelay float
---@field AppSuspendedUpdateCheckTimeSeconds int32
---@field bPlatformEnvironmentDetected boolean
---@field bInitialUpdateFinished boolean
---@field bCheckHotfixAvailabilityOnly boolean
---@field CurrentUpdateState EUpdateState
---@field WorstNumFilesPendingLoadViewed int32
---@field LastHotfixResult EHotfixResult
---@field LastUpdateCheck FDateTime
---@field LastCompletionResult EUpdateCompletionStatus
---@field UpdateStateEnum UEnum
---@field UpdateCompletionEnum UEnum
UUpdateManager = {}



