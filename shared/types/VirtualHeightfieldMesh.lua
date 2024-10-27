---@meta

---@class AVirtualHeightfieldMesh : AActor
---@field VirtualHeightfieldMeshComponent UVirtualHeightfieldMeshComponent
AVirtualHeightfieldMesh = {}



---@class UHeightfieldMinMaxTexture : UObject
---@field Texture UTexture2D
---@field LodBiasTexture UTexture2D
---@field LodBiasMinMaxTexture UTexture2D
---@field MaxCPULevels int32
---@field TextureData TArray<FVector2D>
---@field TextureDataSize FIntPoint
---@field TextureDataMips TArray<int32>
UHeightfieldMinMaxTexture = {}



---@class UMaterialExpressionHeightfieldMinMaxTexture : UMaterialExpression
---@field MinMaxTexture UHeightfieldMinMaxTexture
UMaterialExpressionHeightfieldMinMaxTexture = {}



---@class UVirtualHeightfieldMeshComponent : UPrimitiveComponent
---@field VirtualTexture TSoftObjectPtr<ARuntimeVirtualTextureVolume>
---@field VirtualTextureRef ARuntimeVirtualTextureVolume
---@field VirtualTextureThumbnail UObject
---@field bCopyBoundsButton boolean
---@field MinMaxTexture UHeightfieldMinMaxTexture
---@field NumMinMaxTextureBuildLevels int32
---@field bBuildMinMaxTextureButton boolean
---@field DynamicLodBiasTexture TSoftObjectPtr<UTextureRenderTarget2D>
---@field DynamicLodBiasSize FVector3f
---@field DynamicLodBiasCenter FVector3f
---@field Material UMaterialInterface
---@field Lod0ScreenSize float
---@field Lod0Distribution float
---@field LodDistribution float
---@field LodBiasScale float
---@field NumForceLoadLods int32
---@field NumOcclusionLods int32
---@field bHiddenInEditor boolean
UVirtualHeightfieldMeshComponent = {}

---@param BiasSize FVector3f
function UVirtualHeightfieldMeshComponent:SetDynamicLodBiasSize(BiasSize) end
---@param position FVector3f
function UVirtualHeightfieldMeshComponent:SetDynamicLodBiasCenter(position) end
---@param InOutHidePrimitivesInEditor boolean
---@param InOutHidePrimitivesInGame boolean
function UVirtualHeightfieldMeshComponent:GatherHideFlags(InOutHidePrimitivesInEditor, InOutHidePrimitivesInGame) end


