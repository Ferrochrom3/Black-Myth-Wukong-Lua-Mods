---@meta

---@class UAnimBoneCompressionCodec_ACL : UAnimBoneCompressionCodec_ACLBase
---@field SafetyFallbackCodec UAnimBoneCompressionCodec
UAnimBoneCompressionCodec_ACL = {}



---@class UAnimBoneCompressionCodec_ACLBase : UAnimBoneCompressionCodec
UAnimBoneCompressionCodec_ACLBase = {}


---@class UAnimBoneCompressionCodec_ACLCustom : UAnimBoneCompressionCodec_ACLBase
UAnimBoneCompressionCodec_ACLCustom = {}


---@class UAnimBoneCompressionCodec_ACLDatabase : UAnimBoneCompressionCodec_ACLBase
---@field DatabaseAsset UAnimationCompressionLibraryDatabase
UAnimBoneCompressionCodec_ACLDatabase = {}



---@class UAnimBoneCompressionCodec_ACLSafe : UAnimBoneCompressionCodec_ACLBase
UAnimBoneCompressionCodec_ACLSafe = {}


---@class UAnimCurveCompressionCodec_ACL : UAnimCurveCompressionCodec
UAnimCurveCompressionCodec_ACL = {}


---@class UAnimationCompressionLibraryDatabase : UObject
---@field CookedCompressedBytes TArray<uint8>
---@field CookedAnimSequenceMappings TArray<uint64>
---@field MaxStreamRequestSizeKB uint32
UAnimationCompressionLibraryDatabase = {}

---@param WorldContextObject UObject
---@param LatentInfo FLatentActionInfo
---@param DatabaseAsset UAnimationCompressionLibraryDatabase
---@param Result ACLVisualFidelityChangeResult
---@param VisualFidelity ACLVisualFidelity
function UAnimationCompressionLibraryDatabase:SetVisualFidelity(WorldContextObject, LatentInfo, DatabaseAsset, Result, VisualFidelity) end
---@param DatabaseAsset UAnimationCompressionLibraryDatabase
---@return ACLVisualFidelity
function UAnimationCompressionLibraryDatabase:GetVisualFidelity(DatabaseAsset) end


