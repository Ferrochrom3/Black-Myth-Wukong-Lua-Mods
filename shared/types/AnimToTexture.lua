---@meta

---@class FAnimInfo
---@field NumFrames int32
---@field AnimStart int32
---@field bLooping boolean
FAnimInfo = {}



---@class FAnimSequenceInfo
---@field bEnabled boolean
---@field AnimSequence UAnimSequence
---@field bLooping boolean
---@field bUseCustomRange boolean
---@field StartFrame int32
---@field EndFrame int32
FAnimSequenceInfo = {}



---@class FAnimToTextureAnimState
---@field StartFrame float
---@field NumFrames float
---@field PlayRate float
---@field bLooping float
---@field GlobalStartTime float
FAnimToTextureAnimState = {}



---@class FAnimToTextureAnimationSyncData
FAnimToTextureAnimationSyncData = {}


---@class FAnimToTextureInstanceData
---@field PlaybackData TArray<FAnimToTextureInstancePlaybackData>
---@field StaticMeshInstanceData TArray<FInstancedStaticMeshInstanceData>
FAnimToTextureInstanceData = {}



---@class FAnimToTextureInstancePlaybackData
---@field CurrentState FAnimToTextureAnimState
FAnimToTextureInstancePlaybackData = {}



---@class UAnimToTextureDataAsset : UPrimaryDataAsset
---@field SkeletalMesh TSoftObjectPtr<USkeletalMesh>
---@field SkeletalLODIndex int32
---@field StaticMesh TSoftObjectPtr<UStaticMesh>
---@field StaticLODIndex int32
---@field UVChannel int32
---@field MaxHeight int32
---@field MaxWidth int32
---@field bEnforcePowerOfTwo boolean
---@field Precision EAnimToTexturePrecision
---@field Mode EAnimToTextureMode
---@field VertexPositionTexture TSoftObjectPtr<UTexture2D>
---@field VertexNormalTexture TSoftObjectPtr<UTexture2D>
---@field BonePositionTexture TSoftObjectPtr<UTexture2D>
---@field BoneRotationTexture TSoftObjectPtr<UTexture2D>
---@field BoneWeightTexture TSoftObjectPtr<UTexture2D>
---@field AttachToSocket FName
---@field SampleRate float
---@field AnimSequences TArray<FAnimSequenceInfo>
---@field NumFrames int32
---@field VertexRowsPerFrame int32
---@field VertexMinBBox FVector
---@field VertexSizeBBox FVector
---@field BoneWeightRowsPerFrame int32
---@field BoneRowsPerFrame int32
---@field BoneMinBBox FVector
---@field BoneSizeBBox FVector
---@field Animations TArray<FAnimInfo>
UAnimToTextureDataAsset = {}

function UAnimToTextureDataAsset:ResetInfo() end
---@param Sequence UAnimSequence
---@return int32
function UAnimToTextureDataAsset:GetIndexFromAnimSequence(Sequence) end
---@return UStaticMesh
function UAnimToTextureDataAsset:BP_GetStaticMesh() end
---@return USkeletalMesh
function UAnimToTextureDataAsset:BP_GetSkeletalMesh() end
---@return UTexture2D
function UAnimToTextureDataAsset:BP_GetBoneWeightTexture() end
---@return UTexture2D
function UAnimToTextureDataAsset:BP_GetBoneRotationTexture() end
---@return UTexture2D
function UAnimToTextureDataAsset:BP_GetBonePositionTexture() end


---@class UAnimToTextureInstancePlaybackLibrary : UBlueprintFunctionLibrary
UAnimToTextureInstancePlaybackLibrary = {}

---@param InstanceData FAnimToTextureInstanceData
---@param InstanceIndex int32
---@param PlaybackData FAnimToTextureInstancePlaybackData
---@param Transform FTransform
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:UpdateInstanceData(InstanceData, InstanceIndex, PlaybackData, Transform) end
---@param InstancedMeshComponent UInstancedStaticMeshComponent
---@param InstanceData FAnimToTextureInstanceData
---@param NumInstances int32
function UAnimToTextureInstancePlaybackLibrary:SetupInstancedMeshComponent(InstancedMeshComponent, InstanceData, NumInstances) end
---@param InstanceData FAnimToTextureInstanceData
---@param InstanceIndex int32
---@param InstanceTransform FTransform
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:GetInstanceTransform(InstanceData, InstanceIndex, InstanceTransform) end
---@param InstanceData FAnimToTextureInstanceData
---@param InstanceIndex int32
---@param InstancePlaybackData FAnimToTextureInstancePlaybackData
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:GetInstancePlaybackData(InstanceData, InstanceIndex, InstancePlaybackData) end
---@param InstancedMeshComponent UInstancedStaticMeshComponent
---@param InstanceData FAnimToTextureInstanceData
function UAnimToTextureInstancePlaybackLibrary:BatchUpdateInstancedMeshComponent(InstancedMeshComponent, InstanceData) end
---@param DataAsset UAnimToTextureDataAsset
---@param StateIndex int32
---@param AnimState FAnimToTextureAnimState
---@return boolean
function UAnimToTextureInstancePlaybackLibrary:AnimStateFromDataAsset(DataAsset, StateIndex, AnimState) end
---@param InstanceData FAnimToTextureInstanceData
---@param Count int32
function UAnimToTextureInstancePlaybackLibrary:AllocateInstanceData(InstanceData, Count) end


---@class UEvaluateSequenceAnimInstance : UAnimInstance
---@field SequenceToEvaluate UAnimSequence
---@field TimeToEvaluate float
UEvaluateSequenceAnimInstance = {}



