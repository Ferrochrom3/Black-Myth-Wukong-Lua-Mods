---@meta

---@class FStreamlineFeatureRequirements
---@field Support UStreamlineFeatureSupport
---@field Requirements UStreamlineFeatureRequirementsFlags
---@field RequiredOperatingSystemVersion FStreamlineVersion
---@field DetectedOperatingSystemVersion FStreamlineVersion
---@field RequiredDriverVersion FStreamlineVersion
---@field DetectedDriverVersion FStreamlineVersion
FStreamlineFeatureRequirements = {}



---@class FStreamlineVersion
---@field Major int32
---@field Minor int32
---@field Build int32
FStreamlineVersion = {}



---@class UStreamlineLibrary : UBlueprintFunctionLibrary
UStreamlineLibrary = {}

---@param Feature UStreamlineFeature
---@return UStreamlineFeatureSupport
function UStreamlineLibrary:QueryStreamlineFeatureSupport(Feature) end
---@param Feature UStreamlineFeature
---@return boolean
function UStreamlineLibrary:IsStreamlineFeatureSupported(Feature) end
---@param Feature UStreamlineFeature
---@return FStreamlineFeatureRequirements
function UStreamlineLibrary:GetStreamlineFeatureInformation(Feature) end
---@param Requirements UStreamlineFeatureRequirementsFlags
---@param D3D11Supported boolean
---@param D3D12Supported boolean
---@param VulkanSupported boolean
---@param VSyncOffRequired boolean
---@param HardwareSchedulingRequired boolean
function UStreamlineLibrary:BreakStreamlineFeatureRequirements(Requirements, D3D11Supported, D3D12Supported, VulkanSupported, VSyncOffRequired, HardwareSchedulingRequired) end


---@class UStreamlineLibraryDLSSG : UBlueprintFunctionLibrary
UStreamlineLibraryDLSSG = {}

---@param DLSSGMode UStreamlineDLSSGMode
function UStreamlineLibraryDLSSG:SetDLSSGMode(DLSSGMode) end
---@return UStreamlineFeatureSupport
function UStreamlineLibraryDLSSG:QueryDLSSGSupport() end
---@return boolean
function UStreamlineLibraryDLSSG:IsDLSSGSupported() end
---@param DLSSGMode UStreamlineDLSSGMode
---@return boolean
function UStreamlineLibraryDLSSG:IsDLSSGModeSupported(DLSSGMode) end
---@return TArray<UStreamlineDLSSGMode>
function UStreamlineLibraryDLSSG:GetSupportedDLSSGModes() end
---@return UStreamlineDLSSGMode
function UStreamlineLibraryDLSSG:GetDLSSGMode() end
---@param FrameRateInHertz float
---@param FramesPresented int32
function UStreamlineLibraryDLSSG:GetDLSSGFrameTiming(FrameRateInHertz, FramesPresented) end
---@return UStreamlineDLSSGMode
function UStreamlineLibraryDLSSG:GetDefaultDLSSGMode() end


---@class UStreamlineLibraryReflex : UBlueprintFunctionLibrary
UStreamlineLibraryReflex = {}

---@param Mode UStreamlineReflexMode
function UStreamlineLibraryReflex:SetReflexMode(Mode) end
---@return UStreamlineFeatureSupport
function UStreamlineLibraryReflex:QueryReflexSupport() end
---@return boolean
function UStreamlineLibraryReflex:IsReflexSupported() end
---@return float
function UStreamlineLibraryReflex:GetRenderLatencyInMs() end
---@return UStreamlineReflexMode
function UStreamlineLibraryReflex:GetReflexMode() end
---@return float
function UStreamlineLibraryReflex:GetGameToRenderLatencyInMs() end
---@return float
function UStreamlineLibraryReflex:GetGameLatencyInMs() end
---@return UStreamlineReflexMode
function UStreamlineLibraryReflex:GetDefaultReflexMode() end


