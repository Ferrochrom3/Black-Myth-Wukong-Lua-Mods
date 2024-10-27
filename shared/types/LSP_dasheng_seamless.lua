---@meta

---@class ALSP_dasheng_seamless_C : ABGUPerformerActorCS
---@field UberGraphFrame FPointerToUberGraphFrame
---@field StaticMesh UStaticMeshComponent
---@field TressFX_upwear UTressFXComponent
---@field TressFX_arm UTressFXComponent
---@field TressFX_foot UTressFXComponent
---@field TressFX_head UTressFXComponent
---@field bodypart_head USkeletalMeshComponent
---@field bodypart_arm USkeletalMeshComponent
---@field bodypart_foot USkeletalMeshComponent
---@field bodypart_upwear USkeletalMeshComponent
---@field bodypart_weapon USkeletalMeshComponent
---@field bodypart_weiba USkeletalMeshComponent
---@field bodypart_hulu USkeletalMeshComponent
---@field Time double
ALSP_dasheng_seamless_C = {}

---@param _Part USkeletalMeshComponent
---@param InTime double
function ALSP_dasheng_seamless_C:SetEvaluationTime_Head(_Part, InTime) end
---@param _Part USkeletalMeshComponent
---@param InTime double
function ALSP_dasheng_seamless_C:SetEvaluationTime(_Part, InTime) end
---@param DeltaSeconds float
function ALSP_dasheng_seamless_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ALSP_dasheng_seamless_C:ExecuteUbergraph_LSP_dasheng_seamless(EntryPoint) end


