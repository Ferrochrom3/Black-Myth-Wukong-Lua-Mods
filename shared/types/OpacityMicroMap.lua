---@meta

---@class FOpacityMicromapUsageCount
---@field Count uint32
---@field SubdivisionLevel uint32
---@field Format uint32
FOpacityMicromapUsageCount = {}



---@class UOMMBlueprintLibrary : UBlueprintFunctionLibrary
UOMMBlueprintLibrary = {}

---@param StaticMesh UStaticMesh
function UOMMBlueprintLibrary:RemoveOMMUserData(StaticMesh) end
---@param WorldContextObject UObject
---@return boolean
function UOMMBlueprintLibrary:IsThisDeviceSupportOMM(WorldContextObject) end
---@param WorldContextObject UObject
---@return float
function UOMMBlueprintLibrary:CalculateCurrentWorldOMMTotalDataSize(WorldContextObject) end
---@param WorldContextObject UObject
function UOMMBlueprintLibrary:BuildAllStaticMesh(WorldContextObject) end


---@class UOpacityMicroMapAsset : UAssetUserData
---@field Collection UOpacityMicroMapCollection
UOpacityMicroMapAsset = {}



---@class UOpacityMicroMapCollection : UObject
---@field Collection TMap<uint64, UOpacityMicroMapData>
UOpacityMicroMapCollection = {}



---@class UOpacityMicroMapData : UObject
---@field ArrayData TArray<uint8>
---@field DescArrayData TArray<uint8>
---@field DescArrayHistogram TArray<FOpacityMicromapUsageCount>
---@field IndexBuffer TArray<uint8>
---@field Is16BitIndexBuffer boolean
---@field IndexHistogram TArray<FOpacityMicromapUsageCount>
---@field VersionHash uint8
UOpacityMicroMapData = {}



