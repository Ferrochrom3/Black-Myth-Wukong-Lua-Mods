---@enum UStreamlineDLSSGMode
UStreamlineDLSSGMode = {
    Off = 0,
    On = 1,
    Auto = 2,
    UStreamlineDLSSGMode_MAX = 3,
}

---@enum UStreamlineFeature
UStreamlineFeature = {
    DLSSG = 0,
    Reflex = 1,
    Count = 2,
    UStreamlineFeature_MAX = 3,
}

---@enum UStreamlineFeatureRequirementsFlags
UStreamlineFeatureRequirementsFlags = {
    None = 0,
    D3D11Supported = 1,
    D3D12Supported = 2,
    VulkanSupported = 4,
    VSyncOffRequired = 8,
    HardwareSchedulingRequired = 16,
    UStreamlineFeatureRequirementsFlags_MAX = 17,
}

---@enum UStreamlineFeatureSupport
UStreamlineFeatureSupport = {
    Supported = 0,
    NotSupported = 1,
    NotSupportedIncompatibleHardware = 2,
    NotSupportedDriverOutOfDate = 3,
    NotSupportedOperatingSystemOutOfDate = 4,
    NotSupportedHardewareSchedulingDisabled = 5,
    NotSupportedByRHI = 6,
    NotSupportedByPlatformAtBuildTime = 7,
    NotSupportedIncompatibleAPICaptureToolActive = 8,
    UStreamlineFeatureSupport_MAX = 9,
}

---@enum UStreamlineReflexMode
UStreamlineReflexMode = {
    Disabled = 0,
    Enabled = 1,
    EnabledPlusBoost = 3,
    UStreamlineReflexMode_MAX = 4,
}

