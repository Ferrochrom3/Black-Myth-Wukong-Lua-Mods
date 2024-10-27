---@meta

---@class FSkeletalMeshMergeParams
---@field MeshSectionMappings TArray<FSkelMeshMergeSectionMapping>
---@field UVTransformsPerMesh TArray<FSkelMeshMergeMeshUVTransforms>
---@field MeshesToMerge TArray<USkeletalMesh>
---@field StripTopLODS int32
---@field bNeedsCpuAccess boolean
---@field bSkeletonBefore boolean
---@field Skeleton USkeleton
FSkeletalMeshMergeParams = {}



---@class FSkeletonMergeParams
---@field SkeletonsToMerge TArray<USkeleton>
---@field bMergeSockets boolean
---@field bMergeVirtualBones boolean
---@field bMergeCurveNames boolean
---@field bMergeBlendProfiles boolean
---@field bMergeAnimSlotGroups boolean
FSkeletonMergeParams = {}



---@class USkeletalMergingLibrary : UBlueprintFunctionLibrary
USkeletalMergingLibrary = {}

---@param Params FSkeletonMergeParams
---@return USkeleton
function USkeletalMergingLibrary:MergeSkeletons(Params) end
---@param Params FSkeletalMeshMergeParams
---@return USkeletalMesh
function USkeletalMergingLibrary:MergeMeshes(Params) end


