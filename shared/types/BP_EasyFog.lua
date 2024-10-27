---@meta

---@class ABP_EasyFog_C : AActor
---@field FogCard UStaticMeshComponent
---@field DefaultSceneRoot USceneComponent
---@field ['Pathtracer Toggle'] boolean
---@field ['Base Color Map'] UTexture
---@field ['Opacity Map'] UTexture
---@field ['Normal Map'] UTexture
---@field ['Fog Material Instance'] UMaterialInstanceDynamic
---@field ['Base Color Tint'] FLinearColor
---@field BaseColorContrast float
---@field ['Base Color Intensity'] float
---@field ['Emissive Intensity'] float
---@field ['Normal Map Intensity'] float
---@field ['Fog Density'] float
---@field ['Geometry Fading Distance'] float
---@field ['Camera Fading Distance'] float
---@field ['Wind : Yes/No'] float
---@field ['Wind Speed Y'] float
---@field ['Wind Speed X'] float
---@field ['Wind Noise Tiling'] float
---@field ['Wind Noise Contrast'] float
---@field ['View Angle Fade'] float
---@field ['Cast Shadow?'] boolean
---@field SourceMaterial UMaterialInterface
---@field PathtracerMaterial UMaterialInterface
ABP_EasyFog_C = {}

function ABP_EasyFog_C:UserConstructionScript() end


