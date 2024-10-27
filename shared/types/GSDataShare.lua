---@meta

---@class UGSDataShareAPI : UBlueprintFunctionLibrary
UGSDataShareAPI = {}

---@return int32
function UGSDataShareAPI:BPReloadData() end
---@return int32
function UGSDataShareAPI:BPInitLoadData() end
---@return int32
function UGSDataShareAPI:BPCheckDataValid() end


---@class UGSDataShareAPIHelper : UBlueprintFunctionLibrary
UGSDataShareAPIHelper = {}

---@param AssetPath FString
---@return boolean
function UGSDataShareAPIHelper:IsAssetExist(AssetPath) end


