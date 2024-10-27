---@meta

---@class UGSGameSettings : UObject
---@field AvailableMapList TArray<FString>
UGSGameSettings = {}

function UGSGameSettings:RefreshAvailableMapList() end


---@class UGSGameUserSettings : UGameUserSettings
---@field GSDesiredScreenHeight int32
---@field bEnableStartupSettings boolean
---@field StartLevelName FString
---@field StartCommandList TArray<FString>
---@field GMCommandList TMap<uint8, FString>
---@field bNeverShowStartupUI boolean
---@field MainMonitorID FString
---@field UISettingData TMap<FString, FString>
---@field UISettingCustomData TMap<FString, FString>
---@field SettingpbTag int32
---@field PrivacyAgreement int32
---@field AgreementReaded int32
---@field FirstSettingFinish boolean
---@field ArchiveMarkFinish boolean
---@field CrashReportAgreement int32
---@field ShowCrashReportUI int32
UGSGameUserSettings = {}



