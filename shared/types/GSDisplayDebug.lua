---@meta

---@class FGSDebugInfo
---@field DebugLine FString
---@field DebugColor FColor
FGSDebugInfo = {}



---@class UGSDisplayDebugObserver : UObject
UGSDisplayDebugObserver = {}

---@param Observer UGSDisplayDebugObserver
---@param IsRegister boolean
function UGSDisplayDebugObserver:Register(Observer, IsRegister) end
---@return TArray<FName>
function UGSDisplayDebugObserver:GetDisplayDebugNames() end
---@param Name FName
---@param DebugInfos TArray<FGSDebugInfo>
function UGSDisplayDebugObserver:FetchDebugInfo(Name, DebugInfos) end


