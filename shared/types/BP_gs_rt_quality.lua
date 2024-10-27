---@meta

---@class ABP_gs_rt_quality_C : ABP_RT_Quality_Parameters_C
---@field UberGraphFrame FPointerToUberGraphFrame
ABP_gs_rt_quality_C = {}

---@return boolean
function ABP_gs_rt_quality_C:IsDLSSRREnabled() end
---@return uint8
function ABP_gs_rt_quality_C:GetRTXQuality() end
---@return boolean
function ABP_gs_rt_quality_C:IsRTXEnabled() end
function ABP_gs_rt_quality_C:ForceUpdateRTX() end
---@param Quality uint8
function ABP_gs_rt_quality_C:SetRTXQuality(Quality) end
---@param bInEnable boolean
function ABP_gs_rt_quality_C:SetRTXEnabled(bInEnable) end
---@param bEnable boolean
function ABP_gs_rt_quality_C:SetDlssRREnable(bEnable) end
---@param EntryPoint int32
function ABP_gs_rt_quality_C:ExecuteUbergraph_BP_gs_rt_quality(EntryPoint) end


