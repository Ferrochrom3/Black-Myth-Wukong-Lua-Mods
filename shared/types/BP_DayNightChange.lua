---@meta

---@class ABP_DayNightChange_C : ABGUEditorTickableActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SM_Sky_Sphere UStaticMeshComponent
---@field SunLight UDirectionalLightComponent
---@field MoonLight UDirectionalLightComponent
---@field VerticleRotation USceneComponent
---@field HorizonRotation USceneComponent
---@field SkyAtmosphere USkyAtmosphereComponent
---@field ExponentialHeightFog UExponentialHeightFogComponent
---@field ReflectionSphere UStaticMeshComponent
---@field ClaySphere UStaticMeshComponent
---@field SkyLight USkyLightComponent
---@field DefaultSceneRoot USceneComponent
---@field Time double
---@field ['Ref Dir Light'] TSoftObjectPtr<ADirectionalLight>
---@field SkyLight_Intensity_Curve UCurveFloat
---@field SkyLight_Color_Curve UCurveLinearColor
---@field ['Total Intensity'] double
---@field ['Actors to Shake'] TArray<TSoftObjectPtr<AActor>>
---@field ['Stored Actor Scales'] TArray<FVector>
---@field vis boolean
ABP_DayNightChange_C = {}

function ABP_DayNightChange_C:AtmoControll() end
function ABP_DayNightChange_C:VisControll() end
ABP_DayNightChange_C['Add sels to Actors to Shake'] = function() end
---@param Actors TArray<TSoftObjectPtr<AActor>>
ABP_DayNightChange_C['Shake Control'] = function(Actors) end
ABP_DayNightChange_C['Adopt Sun Parameters'] = function() end
function ABP_DayNightChange_C:SkyControl() end
function ABP_DayNightChange_C:ViewSphere() end
---@param Time double
function ABP_DayNightChange_C:MoonControl(Time) end
---@param Time double
function ABP_DayNightChange_C:SunControl(Time) end
---@param Time double
function ABP_DayNightChange_C:TimeFlow(Time) end
function ABP_DayNightChange_C:UserConstructionScript() end
---@param DeltaSeconds float
function ABP_DayNightChange_C:ReceiveTick(DeltaSeconds) end
function ABP_DayNightChange_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_DayNightChange_C:ExecuteUbergraph_BP_DayNightChange(EntryPoint) end


