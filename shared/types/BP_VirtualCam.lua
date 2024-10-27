---@meta

---@class ABP_VirtualCam_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
ABP_VirtualCam_C = {}

---@param DeltaSeconds float
function ABP_VirtualCam_C:ReceiveTick(DeltaSeconds) end
---@param EntryPoint int32
function ABP_VirtualCam_C:ExecuteUbergraph_BP_VirtualCam(EntryPoint) end


