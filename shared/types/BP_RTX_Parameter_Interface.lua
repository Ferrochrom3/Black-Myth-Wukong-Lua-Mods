---@meta

---@class IBP_RTX_Parameter_Interface_C : IInterface
IBP_RTX_Parameter_Interface_C = {}

---@param Enable_DLSSD boolean
function IBP_RTX_Parameter_Interface_C:Enable_DLSS_RR(Enable_DLSSD) end
---@param AA_Method FString
---@param DLSS_Quality FString
---@param Enable_Override_From_UI boolean
function IBP_RTX_Parameter_Interface_C:RTX_Switch_DLSS_From_UI(AA_Method, DLSS_Quality, Enable_Override_From_UI) end
---@param RTX_Preset Enum_RT_Quality_Preset::Type
function IBP_RTX_Parameter_Interface_C:RTX_Switch_Preset_From_UI(RTX_Preset) end
function IBP_RTX_Parameter_Interface_C:RTX_Force_Override() end


