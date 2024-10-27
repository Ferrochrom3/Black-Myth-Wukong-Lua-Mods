---@meta

---@class UXeSSBlueprintLibrary : UBlueprintFunctionLibrary
UXeSSBlueprintLibrary = {}

---@param QualityMode EXeSSQualityMode
function UXeSSBlueprintLibrary:SetXeSSQualityMode(QualityMode) end
---@param Percentage float
---@return boolean
function UXeSSBlueprintLibrary:SetXeSSPercentage(Percentage) end
---@return boolean
function UXeSSBlueprintLibrary:IsXeSSSupported() end
---@param QualityMode EXeSSQualityMode
---@param ScreenPercentage float
---@return boolean
function UXeSSBlueprintLibrary:GetXeSSQualityModeInformation(QualityMode, ScreenPercentage) end
---@return EXeSSQualityMode
function UXeSSBlueprintLibrary:GetXeSSQualityMode() end
---@return TArray<EXeSSQualityMode>
function UXeSSBlueprintLibrary:GetSupportedXeSSQualityModes() end
---@return float
function UXeSSBlueprintLibrary:GetSupportedXeSSMinResolutionPercentage() end
---@return float
function UXeSSBlueprintLibrary:GetSupportedXeSSMaxResolutionPercentage() end
---@param ScreenResolution FIntPoint
---@return EXeSSQualityMode
function UXeSSBlueprintLibrary:GetDefaultXeSSQualityMode(ScreenResolution) end


