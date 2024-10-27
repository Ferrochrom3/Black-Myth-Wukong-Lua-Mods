---@meta

---@class AAutoMovePerfEditorVisualizer : AActor
---@field BaseImageBrush FSlateBrush
AAutoMovePerfEditorVisualizer = {}

---@param InTileSourceInfoArray TArray<float>
---@param InResolution FVector2D
---@param InTileCount FIntPoint
---@param InIntensityScaleFactor float
---@param InBaseImagePath FString
function AAutoMovePerfEditorVisualizer:DisplayVisualizedPerfInfo(InTileSourceInfoArray, InResolution, InTileCount, InIntensityScaleFactor, InBaseImagePath) end
function AAutoMovePerfEditorVisualizer:ClearVisualizedPerfInfo() end


---@class ABGPPlayerCameraManager : APlayerCameraManager
ABGPPlayerCameraManager = {}

---@param DeltaTime float
function ABGPPlayerCameraManager:UpdateCameraCS(DeltaTime) end
---@param NewViewTarget AActor
---@param TransitionParams FViewTargetTransitionParams
function ABGPPlayerCameraManager:SetViewTargetCS(NewViewTarget, TransitionParams) end
---@param PC APlayerController
---@param OldViewTarget AActor
---@param NewViewTarget AActor
function ABGPPlayerCameraManager:OnViewTargetChangedCS(PC, OldViewTarget, NewViewTarget) end
function ABGPPlayerCameraManager:OnBlendCompleteCS() end
---@return AActor
function ABGPPlayerCameraManager:GetViewTargetCS() end
---@return AActor
function ABGPPlayerCameraManager:GetPendingViewTargetCS() end


---@class ABGPPlayerController : APlayerController
---@field bGSIsLocalPlayerController boolean
---@field PathFollowingComponent UPathFollowingComponent
---@field bIsInTeleport boolean
ABGPPlayerController = {}

---@param NewLocation FVector
function ABGPPlayerController:SetSpawnLocationCS(NewLocation) end
---@param IsShould boolean
function ABGPPlayerController:SetIsShouldPerformFullTickWhenPaused(IsShould) end
function ABGPPlayerController:PostInitializeComponentsCS() end
function ABGPPlayerController:OnRep_PlayerStateCS() end
function ABGPPlayerController:OnRep_PawnCS() end
---@param InPawn APawn
---@param BlendTime float
---@param BlendFunc EViewTargetBlendFunction
---@param BlendExp float
---@param bLockOutgoing boolean
---@param EnableBlendViewTarget boolean
function ABGPPlayerController:OnPossessWithViewTargetBlend(InPawn, BlendTime, BlendFunc, BlendExp, bLockOutgoing, EnableBlendViewTarget) end
function ABGPPlayerController:InitInputSystemCS() end
---@return FVector
function ABGPPlayerController:GetSpawnLocationCS() end
---@param bToEntry boolean
---@param ActorList TArray<AActor>
function ABGPPlayerController:GetSeamlessTravelActorListCS(bToEntry, ActorList) end
---@param out_Location FVector
---@param out_Rotation FRotator
---@return boolean
function ABGPPlayerController:GetPlayerViewPointCS(out_Location, out_Rotation) end
---@return AActor
function ABGPPlayerController:GetPendingViewTarget() end
---@return UNetConnection
function ABGPPlayerController:GetNetConnectionCS() end
---@return boolean
function ABGPPlayerController:GetIsShouldPerformFullTickWhenPaused() end
---@return float
function ABGPPlayerController:GetCameraBlendTimeToGo() end
---@return UObject
function ABGPPlayerController:GetCachedConsoleWorldContext() end
---@return FString
function ABGPPlayerController:GetCachedConsoleCommandCS() end
---@param OutRotation FRotator
function ABGPPlayerController:GetAudioListenerRotationCS(OutRotation) end
---@param OutLocation FVector
---@param OutFrontDir FVector
---@param OutRightDir FVector
function ABGPPlayerController:GetAudioListenerPositionCS(OutLocation, OutFrontDir, OutRightDir) end
---@param Command FString
function ABGPPlayerController:ConsoleCommandCS(Command) end
function ABGPPlayerController:BeginPlayCS() end


---@class ABGPPlayerReverseReplicator : AActor
---@field ECSDataNetSerialization FECSNetSerialization
---@field OwnerBGUChr ABGUCharacter
ABGPPlayerReverseReplicator = {}

---@param BGUOwner ABGUCharacter
function ABGPPlayerReverseReplicator:SetOwnerBGUChr(BGUOwner) end


---@class ABGPPlayerState : APlayerState
---@field ECSDataNetSerialization FECSNetSerialization
---@field BGPDataComp UActorDataContainer
ABGPPlayerState = {}

function ABGPPlayerState:PostInitializeComponentsCS() end
function ABGPPlayerState:BeginPlayCS() end


---@class ABGU3rdCameraBase : AActor
---@field CameraBoom USpringArmComponent
---@field FollowCamera UCameraComponent
ABGU3rdCameraBase = {}



---@class ABGUAIController : AAIController
---@field BlackboardComp UBlackboardComponent
---@field BehaviorComp UBehaviorTreeComponent
---@field AIPerceptionComp UAIPerceptionComponent
ABGUAIController = {}



---@class ABGUAIPlayerController : ABGUAIController
ABGUAIPlayerController = {}


---@class ABGUActorBase : AActor
---@field bBeginPlayFromLevelStreaming boolean
---@field ActorCompContainer UActorCompContainer
---@field EventCollection UBUS_EventCollection
---@field bIsFullyInit boolean
---@field ECSDataNetSerialization FECSNetSerialization
ABGUActorBase = {}

---@param ID int32
function ABGUActorBase:SetTeamID(ID) end
---@param NewRootComponent USceneComponent
function ABGUActorBase:SetRootComponentCS(NewRootComponent) end
---@param ActorComponent UActorComponent
---@param bRelevant boolean
function ABGUActorBase:SetCompCanEverAffectNavigation(ActorComponent, bRelevant) end
function ABGUActorBase:PostInitializeComponentsCS() end
---@param MemberName FString
---@param PropertyName FString
function ABGUActorBase:OnPropertyChanged(MemberName, PropertyName) end
---@param bFinish boolean
function ABGUActorBase:OnPostEditMove(bFinish) end
---@param Transform FTransform
function ABGUActorBase:OnConstructionCS(Transform) end
---@return int32
function ABGUActorBase:GetTeamIDCS() end
---@return int32
function ABGUActorBase:GetTeamID() end
---@return UBUS_EventCollection
function ABGUActorBase:GetBUSEventCollection() end
---@param OutActorGuid FString
---@return boolean
function ABGUActorBase:GetActorGuidCS(OutActorGuid) end
---@param OutActorGuid FString
---@return boolean
function ABGUActorBase:GetActorGuid(OutActorGuid) end
function ABGUActorBase:FullyInit() end
function ABGUActorBase:ForceRefreshDetailView() end
function ABGUActorBase:BeginPlayCS() end
---@param Comp UBaseActorComp
function ABGUActorBase:AttachBaseActorComp(Comp) end
---@param InOffset FVector
---@param bWorldShift boolean
function ABGUActorBase:ApplyWorldOffsetCS(InOffset, bWorldShift) end


---@class ABGUBirthPoint : ANavigationObjectBase
---@field BirthPointID int32
ABGUBirthPoint = {}



---@class ABGUCharacter : ACharacter
---@field ActorCompContainer UActorCompContainer
---@field BGUDataComp UBGUDataComp
---@field EventCollection UBUS_EventCollection
---@field bIsFullyInit boolean
---@field bPreferActorRotToControlRot boolean
---@field ViewRotationYawOffset float
---@field ReplicatedAcceleration FBGUReplicatedAcceleration
---@field GSNetInitFinish boolean
---@field ECSDataNetSerialization FECSNetSerialization
---@field AnimCapsule UCapsuleComponent
---@field AnimMoveComp UBGURootMotionFollowMovementComponent
---@field bBeginPlayFromLevelStreaming boolean
---@field TamerOwner ABGUTamerBase
---@field AIPerceptionStimuliSourceComponent UAIPerceptionStimuliSourceComponent
---@field TeamIDDeprecate int32
---@field BranchPointNotifyStateCache TMap<FString, FUStGSNotifyStateCache>
---@field HostSyncMontage UAnimMontage
---@field HostSyncMontageStartTime float
ABGUCharacter = {}

---@return UAnimMontage
function ABGUCharacter:TryGetHostSyncMontage() end
---@param CompName FName
---@return UActorComponent
function ABGUCharacter:TryGetComponentByName(CompName) end
---@param HasAuthority boolean
function ABGUCharacter:SwitchNetRoleOnly(HasAuthority) end
---@param NewOffset float
function ABGUCharacter:SetViewRotationYawOffset(NewOffset) end
---@param PlayerInputComponent UInputComponent
function ABGUCharacter:SetupPlayerInputComponentCS(PlayerInputComponent) end
---@param ID int32
function ABGUCharacter:SetTeamID(ID) end
---@param NewOwner ABGUTamerBase
function ABGUCharacter:SetTamerOwner(NewOwner) end
---@param bValue boolean
function ABGUCharacter:SetPreferActorRotToControlRot(bValue) end
function ABGUCharacter:PreDestroyFromReplicationCS() end
function ABGUCharacter:PostNetReceiveRoleCS() end
function ABGUCharacter:PostInitializeComponentsCS() end
function ABGUCharacter:OnRep_ReplicatedAcceleration() end
function ABGUCharacter:OnRep_PlayerStateCS() end
---@param NewController AController
function ABGUCharacter:OnPossessedCS(NewController) end
---@param PrevMovementMode EMovementMode
---@param NewMovementMode EMovementMode
---@param PrevCustomMode uint8
---@param NewCustomMode uint8
function ABGUCharacter:OnMovementModeChangedCS(PrevMovementMode, NewMovementMode, PrevCustomMode, NewCustomMode) end
---@param _HostSyncMontage UAnimMontage
---@param _HostSyncMontageStartTime float
function ABGUCharacter:OnGuestSyncMontage(_HostSyncMontage, _HostSyncMontageStartTime) end
---@param Transform FTransform
function ABGUCharacter:OnConstructionCS(Transform) end
---@param Connection UNetConnection
function ABGUCharacter:OnActorChannelOpen(Connection) end
function ABGUCharacter:LeaveGuestSyncMontage() end
---@return boolean
function ABGUCharacter:IsPlayerCharacterCS() end
---@return boolean
function ABGUCharacter:IsInGuestSyncMontage() end
---@param HasAuthority boolean
function ABGUCharacter:GSSwapNetRoleCS(HasAuthority) end
---@return float
function ABGUCharacter:GetViewRotationYawOffset() end
---@return int32
function ABGUCharacter:GetTeamID() end
---@return ABGUTamerBase
function ABGUCharacter:GetTamerOwner() end
---@return float
function ABGUCharacter:GetHostSyncMontageSyncStartTime() end
---@return APlayerController
function ABGUCharacter:GetGSAuthorityPlayerCS() end
---@return UBUS_EventCollection
function ABGUCharacter:GetBUSEventCollection() end
---@param OutActorGuid FString
---@return boolean
function ABGUCharacter:GetActorGuidCS(OutActorGuid) end
---@param OutActorGuid FString
---@return boolean
function ABGUCharacter:GetActorGuid(OutActorGuid) end
function ABGUCharacter:FullyInit() end
function ABGUCharacter:ForceSpawnDefaultControllerCS() end
function ABGUCharacter:CallPostNetInit() end
---@param Comp UBaseActorComp
function ABGUCharacter:AttachBaseActorComp(Comp) end


---@class ABGUEditorTickableActor : AActor
ABGUEditorTickableActor = {}

---@return FVector
function ABGUEditorTickableActor:GetViewportCameraLocation() end


---@class ABGULevelSequenceActor : ALevelSequenceActor
ABGULevelSequenceActor = {}


---@class ABGUPerformerActor : ABGUActorBase
---@field Mesh USkeletalMeshComponent
---@field CapsuleComponent UCapsuleComponent
ABGUPerformerActor = {}

---@param bEnable boolean
function ABGUPerformerActor:SetOptimizeEnabled(bEnable) end


---@class ABGUPlacedEditorUtilityBase : AActor
---@field HelpText FString
ABGUPlacedEditorUtilityBase = {}

---@param CameraLocation FVector
---@param CameraRotation FRotator
function ABGUPlacedEditorUtilityBase:SetLevelViewportCameraInfo(CameraLocation, CameraRotation) end
---@param Actor AActor
---@param bShouldBeSelected boolean
function ABGUPlacedEditorUtilityBase:SetActorSelectionState(Actor, bShouldBeSelected) end
function ABGUPlacedEditorUtilityBase:SelectNothing() end
---@param World UWorld
---@param SessionEnded boolean
---@param CleanupResources boolean
function ABGUPlacedEditorUtilityBase:OnWorldCleanup(World, SessionEnded, CleanupResources) end
---@return TArray<AActor>
function ABGUPlacedEditorUtilityBase:GetSelectionSet() end
---@param CameraLocation FVector
---@param CameraRotation FRotator
---@return boolean
function ABGUPlacedEditorUtilityBase:GetLevelViewportCameraInfo(CameraLocation, CameraRotation) end
---@param PathToActor FString
---@return AActor
function ABGUPlacedEditorUtilityBase:GetActorReference(PathToActor) end
function ABGUPlacedEditorUtilityBase:ClearActorSelectionSet() end


---@class ABGUPlayerStart : APlayerStart
ABGUPlayerStart = {}


---@class ABGUSpiderCharacter : ACharacter
ABGUSpiderCharacter = {}


---@class ABGUTamerBase : AActor
---@field bBeginPlayFromLevelStreaming boolean
---@field SpawnedPlayerState APlayerState
---@field SpawnedTamerGuid FString
---@field TamerType ETamerType
---@field bEnableShowLODMesh boolean
---@field LODMaxDistance int32
---@field Mesh USkeletalMeshComponent
---@field CapsuleComponent UCapsuleComponent
---@field LowLODMesh UStaticMeshComponent
---@field HighLODMeshComponents TSet<USkeletalMeshComponent>
ABGUTamerBase = {}

---@param invisible boolean
function ABGUTamerBase:SetLODMeshVisible(invisible) end
function ABGUTamerBase:PostInitializeComponentsCS() end
---@param MemberName FString
---@param PropertyName FString
function ABGUTamerBase:OnPropertyChanged(MemberName, PropertyName) end
---@param bFisnish boolean
function ABGUTamerBase:OnPostEditMove(bFisnish) end
---@param Transform FTransform
function ABGUTamerBase:OnConstructionCS(Transform) end
---@param OutMeshConfig FTamerHighLODRootMeshConfig
---@return boolean
function ABGUTamerBase:GetHighLODMeshConfig(OutMeshConfig) end
---@param OutActorGuid FString
---@return boolean
function ABGUTamerBase:GetActorGuidCS(OutActorGuid) end
---@param OutActorGuid FString
---@return boolean
function ABGUTamerBase:GetActorGuid(OutActorGuid) end
function ABGUTamerBase:ForceRefreshDetailView() end
function ABGUTamerBase:BeginPlayCS() end
---@param InOffset FVector
---@param bWorldShift boolean
function ABGUTamerBase:ApplyWorldOffsetCS(InOffset, bWorldShift) end


---@class ABGUTeleportPoint : AActor
---@field GSActorLabel FString
ABGUTeleportPoint = {}

---@return FString
function ABGUTeleportPoint:GetGSActorLablel() end


---@class ABGWActorVisibilityVolume : AVolume
---@field AttachedActors TArray<AActor>
---@field IsHide boolean
---@field bDisabled boolean
ABGWActorVisibilityVolume = {}



---@class ABGWCalliopeActor : AActor
---@field Asset TSoftObjectPtr<UCalliopeAsset>
---@field PreloadedAssets TArray<UObject>
ABGWCalliopeActor = {}



---@class ABGWCameraGroupVolume : ABGWVolumeBase
---@field CameraGroupId int32
ABGWCameraGroupVolume = {}



---@class ABGWEnvironmentSurfaceVolume : AVolume
---@field EnvironmentSurfaceEffectID int32
ABGWEnvironmentSurfaceVolume = {}



---@class ABGWGSStreamingSourceActor : AActor
ABGWGSStreamingSourceActor = {}


---@class ABGWGameMode : AGameMode
ABGWGameMode = {}

function ABGWGameMode:StartPlayCS() end
---@param NewPlayer AController
function ABGWGameMode:RestartPlayerCS(NewPlayer) end
function ABGWGameMode:RestartGameCS() end
---@param Options FString
---@param LoginAddress FString
---@param UniqueId FString
---@param ErrorMessage FString
function ABGWGameMode:PreLoginCS(Options, LoginAddress, UniqueId, ErrorMessage) end
function ABGWGameMode:PreInitializeComponentsCS() end
function ABGWGameMode:PostSeamlessTravelCS() end
---@param NewPlayer APlayerController
function ABGWGameMode:PostLoginCS(NewPlayer) end
function ABGWGameMode:PostInitPropertiesCS() end
function ABGWGameMode:PostInitializeComponentsCS() end
---@param Exiting AController
function ABGWGameMode:LoginOutCS(Exiting) end
---@return boolean
function ABGWGameMode:IsMovieRendering() end
---@param MapName FString
---@param Options FString
---@param ErrorMessag FString
function ABGWGameMode:InitGameCS(MapName, Options, ErrorMessag) end
---@param NewPlayer APlayerController
function ABGWGameMode:HandleStartingNewPlayerCS(NewPlayer) end
function ABGWGameMode:HandleMatchIsWaitingToStartCS() end
function ABGWGameMode:HandleMatchHasStartedCS() end
function ABGWGameMode:HandleLeavingMapCS() end
---@param bToTransition boolean
---@param ActorList TArray<AActor>
function ABGWGameMode:GetSeamlessTravelActorListCS(bToTransition, ActorList) end
function ABGWGameMode:BeginPlayCS() end
---@param EndPlayReason EEndPlayReason::Type
function ABGWGameMode:BeginEndPlayCS(EndPlayReason) end


---@class ABGWGameState : AGameState
---@field BGSDataComp UActorDataContainer
---@field ECSDataNetSerialization FECSNetSerialization
ABGWGameState = {}

function ABGWGameState:PostInitializeComponentsCS() end
---@param DeltaTime float
function ABGWGameState:OnTickDispatchEventCS(DeltaTime) end
function ABGWGameState:OnPostTickDispatchEventCS() end
---@return boolean
function ABGWGameState:IsGSEventDebuggerOpenCS() end
function ABGWGameState:HandleMatchIsWaitingToStartCS() end
function ABGWGameState:HandleMatchHasStartedCS() end
function ABGWGameState:HandleMatchHasEndedCS() end
function ABGWGameState:HandleLeavingMapCS() end
function ABGWGameState:HandleBeginPlayCS() end
function ABGWGameState:BeginPlayCS() end


---@class ABGWLevelStreamingStateVolume : AVolume
ABGWLevelStreamingStateVolume = {}


---@class ABGWLevelStreamingVolume : AVolume
---@field StreamingLevelNames TArray<FName>
---@field ForceHideStreamingLevelNames TArray<FName>
---@field bEditorPreVisOnly boolean
---@field bDisabled boolean
---@field bOnStartLoading boolean
---@field StreamingUsage EBGWStreamingVolumeUsage
---@field bWorldCompositionGroup boolean
---@field MinTimeBetweenVolumeUnloadRequests float
ABGWLevelStreamingVolume = {}

---@param bEnable boolean
function ABGWLevelStreamingVolume:SetEnableWorldCompositionGroup(bEnable) end


---@class ABGWMeshActor : AActor
---@field OriginBlueprint TSubclassOf<AActor>
---@field SceneRoot USceneComponent
ABGWMeshActor = {}



---@class ABGWPlayerController : APlayerController
ABGWPlayerController = {}

function ABGWPlayerController:SetupInputComponentCS() end
---@param DeltaTime float
---@param bGamePaused boolean
function ABGWPlayerController:ProcessPlayerInputCS(DeltaTime, bGamePaused) end
function ABGWPlayerController:InitCS() end
---@param MousePosition FVector2D
---@return boolean
function ABGWPlayerController:GetViewportClientMousePosition(MousePosition) end
---@return int32
function ABGWPlayerController:GetPlayerInputTouchesCount() end
---@param Idx int32
---@return FVector
function ABGWPlayerController:GetPlayerInputTouch(Idx) end
---@param ScreenPosition FVector2D
---@param TraceChannel ECollisionChannel
---@param bTraceComplex boolean
---@param HitResult FHitResult
---@return boolean
function ABGWPlayerController:BGWGetHitResultAtScreenPosition(ScreenPosition, TraceChannel, bTraceComplex, HitResult) end
---@param ScreenPosition FVector2D
---@param RayOrigin FVector
---@param RayDirection FVector
---@return boolean
function ABGWPlayerController:BGWDeprojectScreenToWorld(ScreenPosition, RayOrigin, RayDirection) end


---@class ABGWSluaActor : AActor
ABGWSluaActor = {}


---@class ABGWSpatialAudioVolume : ABGWSplinePrismVolume
---@field SurfaceReflectorSet UAkSurfaceReflectorSetComponent
---@field LateReverb UAkLateReverbComponent
---@field Room UAkRoomComponent
ABGWSpatialAudioVolume = {}



---@class ABGWSplinePrismVolume : AVolume
---@field Spline USplineComponent
---@field MidPoint USphereComponent
---@field PrismMidPoint FVector
---@field Height float
---@field bDesc1 boolean
---@field bDesc2 boolean
---@field bDesc3 boolean
ABGWSplinePrismVolume = {}

---@param InPoint FVector
---@param OutDistanceToPoint float
---@param SphereRadius float
---@return boolean
function ABGWSplinePrismVolume:K2_EncompassesPoint(InPoint, OutDistanceToPoint, SphereRadius) end


---@class ABGWStatsCapturer : AActor
---@field TickInterval float
---@field bCaptureSwitch boolean
---@field bCapturingVRAMInfo boolean
---@field StatDataTable UDataTable
---@field StatNameList TArray<FString>
---@field VRAMCategoryList TArray<FString>
---@field DesiredStatsValue TArray<FGSCapturedStatResult>
---@field DesiredVRAMInfo TArray<FGSCapturedStatResult>
ABGWStatsCapturer = {}

---@return TArray<FGSCapturedStatResult>
function ABGWStatsCapturer:GetTotalCapturedPerfInfo() end
---@return int64
function ABGWStatsCapturer:GetStartCycle() end
---@return TArray<FGSCapturedStatResult>
function ABGWStatsCapturer:GetDesiredVRAMInfo() end
---@return TArray<FGSCapturedStatResult>
function ABGWStatsCapturer:GetDesiredStatsValue() end
function ABGWStatsCapturer:ExecuteRHIDumpResMemCmds() end
---@param bTriggerLogListening boolean
---@param InStatDataTable UDataTable
function ABGWStatsCapturer:EnableCapturing_DT(bTriggerLogListening, InStatDataTable) end
---@param bTriggerLogListening boolean
---@param MetricsConfigPathUnderProjDir FString
function ABGWStatsCapturer:EnableCapturing(bTriggerLogListening, MetricsConfigPathUnderProjDir) end
---@param bIsStop boolean
function ABGWStatsCapturer:DisableCapturing(bIsStop) end


---@class ABGWVolumeBase : AVolume
---@field Priority int32
---@field BlendLength int32
---@field BlendTime float
ABGWVolumeBase = {}



---@class ABGWWorldSettings : AWorldSettings
---@field FBGWOnWorldCleanup FBGWWorldSettingsFBGWOnWorldCleanup
ABGWWorldSettings = {}



---@class ABGW_GameInstanceTicker : AActor
---@field Parent UBGWGameInstance
---@field TickGroup int32
ABGW_GameInstanceTicker = {}



---@class ABGW_GameInstanceTickerEvenWhenPaused : AActor
---@field Parent UBGWGameInstance
---@field TickGroup int32
ABGW_GameInstanceTickerEvenWhenPaused = {}



---@class ABWC_DispLibDynamicEnvManager : AActor
---@field MoonPositionCurve UCurveFloat
---@field EnvSystemConf UBWS_DispLibEnvSystemConf
---@field Weather EBGW_DispLibEnvWeather
---@field TimeOfDay float
---@field AutoTimeOfDay boolean
---@field AutoRandormWeather boolean
---@field bEnableDayNightCircle boolean
---@field WindDir FVector2D
---@field FinalEnvSettings FBWC_DispLibEnvSettings
---@field SceneRoot USceneComponent
---@field SunLight UDirectionalLightComponent
---@field MoonLight UDirectionalLightComponent
---@field SkyLight USkyLightComponent
---@field HeightFog UExponentialHeightFogComponent
---@field SkyAtmosphere USkyAtmosphereComponent
---@field SunRoot UArrowComponent
---@field MoonRoot UArrowComponent
---@field WeathFXRoot USceneComponent
---@field WeatherFXActor AActor
ABWC_DispLibDynamicEnvManager = {}

---@param Settings FBWC_DispLibEnvSettings
function ABWC_DispLibDynamicEnvManager:UpdateSunAndMoonAngle(Settings) end
---@param SystemConf UBWS_DispLibEnvSystemConf
function ABWC_DispLibDynamicEnvManager:UpdateEnvSystemConfig(SystemConf) end
---@param Enable boolean
---@param ChangeDuration float
function ABWC_DispLibDynamicEnvManager:SwithToNarrative(Enable, ChangeDuration) end
---@param InWeather EBGW_DispLibEnvWeather
function ABWC_DispLibDynamicEnvManager:SetWeather(InWeather) end
---@param IsNight boolean
---@param CameraLocation FVector
function ABWC_DispLibDynamicEnvManager:SetEnvSettings(IsNight, CameraLocation) end
---@param ViewLocation FVector
---@return EBGW_DispLibEnvWeather
function ABWC_DispLibDynamicEnvManager:RandomWeather(ViewLocation) end
---@param Src FBWC_DispLibEnvSettings
---@param Dest FBWC_DispLibEnvSettings
---@param Weight float
function ABWC_DispLibDynamicEnvManager:OverrideEnvSettings(Src, Dest, Weight) end
---@param CameraLocation FVector
function ABWC_DispLibDynamicEnvManager:OnWeatherChanged(CameraLocation) end
---@param EnvSettings FBWC_DispLibEnvSettings
---@param ViewLocation FVector
---@param InTime float
function ABWC_DispLibDynamicEnvManager:OnTickEnvVolume(EnvSettings, ViewLocation, InTime) end
---@param Weight float
---@param InTime float
---@param Src FBWC_DispLibEnvSettings
function ABWC_DispLibDynamicEnvManager:OnLerpEnvSettings(Weight, InTime, Src) end
---@param IsNight boolean
function ABWC_DispLibDynamicEnvManager:OnApplyEnvSettings(IsNight) end
---@param InWeather EBGW_DispLibEnvWeather
---@param ViewLocation FVector
---@return boolean
function ABWC_DispLibDynamicEnvManager:IsWeatherAvailable(InWeather, ViewLocation) end


---@class ABWC_DispLibEnvVolume : AVolume
---@field Settings TArray<UBWS_DispLibEnvWeatherSetting>
---@field Priority float
---@field BlendRadius float
---@field BlendWeight float
---@field bEnabled boolean
---@field bUnbound boolean
ABWC_DispLibEnvVolume = {}



---@class ABWC_DispLibLocalFogWrapper : AActor
ABWC_DispLibLocalFogWrapper = {}

---@param InSettings FBWC_DispLibEnvSettings
---@param WindDir FVector2D
function ABWC_DispLibLocalFogWrapper:SetLocalFogParameter(InSettings, WindDir) end


---@class AEnvironmentSurfaceEffectMgr : AActor
---@field DefaultEnvironmentSurfaceEffectID int32
---@field WeatherType EWeatherType
---@field RegisteredVolumes TArray<TSoftObjectPtr<ABGWEnvironmentSurfaceVolume>>
---@field DisabledVolumes TArray<TSoftObjectPtr<ABGWEnvironmentSurfaceVolume>>
AEnvironmentSurfaceEffectMgr = {}

---@param InVolume TSoftObjectPtr<ABGWEnvironmentSurfaceVolume>
---@param IsDisableVolume boolean
function AEnvironmentSurfaceEffectMgr:UnregisterVolume(InVolume, IsDisableVolume) end
---@param InVolume TSoftObjectPtr<ABGWEnvironmentSurfaceVolume>
function AEnvironmentSurfaceEffectMgr:RegisterVolume(InVolume) end
---@param Location FVector
---@return ABGWEnvironmentSurfaceVolume
function AEnvironmentSurfaceEffectMgr:GetEnvironmentSurfaceVolumeByLocation(Location) end


---@class AUSharpPerfTestBase : AActor
---@field IntProp int32
---@field FBUE_USharpCallbackPerfTest FUSharpPerfTestBaseFBUE_USharpCallbackPerfTest
AUSharpPerfTestBase = {}

---@param DeltaTime float
function AUSharpPerfTestBase:TickInCS(DeltaTime) end
---@param p1 int32
---@param p2 float
---@param p3 int32
---@param bP4 boolean
---@return float
function AUSharpPerfTestBase:TestFastFuncExport(p1, p2, p3, bP4) end
---@param InVal FUSharpTestStructAsClass
---@return int32
function AUSharpPerfTestBase:StructAsClassGetInt(InVal) end
---@param RawValue int32
---@return FUSharpTestStructAsClass
function AUSharpPerfTestBase:StructAsClassCreate(RawValue) end
---@param AttrID int32
---@param RealNewValue int32
---@param RealOrgValue int32
---@param ExpectChangeValue int32
function AUSharpPerfTestBase:InvokeMultiDelegateNoDyn(AttrID, RealNewValue, RealOrgValue, ExpectChangeValue) end
---@param AttrID int32
---@param RealNewValue int32
---@param RealOrgValue int32
---@param ExpectChangeValue int32
function AUSharpPerfTestBase:InvokeMultiDelegate(AttrID, RealNewValue, RealOrgValue, ExpectChangeValue) end
---@param p1 int32
---@param p2 float
---@param bP3 boolean
---@return int32
function AUSharpPerfTestBase:IntRetTest2(p1, p2, bP3) end
---@param p1 int32
---@param p2 float
---@param bP3 boolean
---@param Out1 int32
---@return int32
function AUSharpPerfTestBase:IntRetTest(p1, p2, bP3, Out1) end
---@param p1 FName
---@param p2 FString
---@param p3 FText
function AUSharpPerfTestBase:EmptyCallableFuncWithParams2(p1, p2, p3) end
---@param p1 int32
---@param p2 float
---@param p3 int32
---@param bP4 boolean
function AUSharpPerfTestBase:EmptyCallableFuncWithParams(p1, p2, p3, bP4) end
function AUSharpPerfTestBase:EmptyCallableFunc() end
---@param p1 int32
---@param p2 float
---@param bP3 boolean
---@return boolean
function AUSharpPerfTestBase:BoolRetTest(p1, p2, bP3) end
function AUSharpPerfTestBase:BeginPlayInCS() end


---@class AUSharpStructPersistentTest : AActor
AUSharpStructPersistentTest = {}


---@class FActorEventReg
---@field EventID int32
---@field Comp UBaseActorComp
FActorEventReg = {}



---@class FActorGuidOption
---@field DisplayName FString
---@field ActorGuid FString
FActorGuidOption = {}



---@class FB1ConnectionAlwaysRelevantNodePair
---@field NetConnection UNetConnection
---@field Node UB1ReplicationGraphNode_AlwaysRelevant_ForConnection
FB1ConnectionAlwaysRelevantNodePair = {}



---@class FBGUReplicatedAcceleration
---@field AccelXYRadians uint8
---@field AccelXYMagnitude uint8
---@field AccelZ int8
FBGUReplicatedAcceleration = {}



---@class FBGU_AIMoverRequest
---@field AllowPartialPath boolean
---@field CanStrafe boolean
---@field ReachTestIncludesAgentRadius boolean
---@field ReachTestIncludesGoalRadius boolean
---@field ProjectGoalLocation boolean
---@field UsePathfinding boolean
---@field AcceptanceRadius float
---@field TargetActor AActor
---@field TargetLocation FVector
FBGU_AIMoverRequest = {}



---@class FBGWLevelStreamingVolumeArr
---@field VolumeArr TArray<ABGWLevelStreamingVolume>
FBGWLevelStreamingVolumeArr = {}



---@class FBGWOnlineAchievementDesc
---@field Title FText
---@field LockedDesc FText
---@field UnlockedDesc FText
---@field bIsHidden boolean
---@field UnlockTime FDateTime
FBGWOnlineAchievementDesc = {}



---@class FBGWOnlineAchievementTag
---@field ID FString
---@field Progress double
FBGWOnlineAchievementTag = {}



---@class FBGWOnlineFriendInfo
---@field SessionId FString
---@field DisplayName FString
---@field RealName FString
---@field bIsOnline boolean
---@field bIsPlaying boolean
---@field bIsPlayingThisGame boolean
---@field bIsJoinable boolean
---@field bHasVoiceSupport boolean
---@field Status EFriendsStateType
FBGWOnlineFriendInfo = {}



---@class FBGWOnlineSessionContext
---@field SearchResults TArray<FBGWSessionSearchResult>
FBGWOnlineSessionContext = {}



---@class FBGWSessionSearchResult
---@field OwningUserId FString
---@field SessionId FString
---@field OwningUserName FString
---@field MaxPlayerCount int32
---@field AvaiablePlayercount int32
FBGWSessionSearchResult = {}



---@class FBGWVisibleLevelStreamingSettings
FBGWVisibleLevelStreamingSettings = {}


---@class FBUAnimSettingsLocomotionEx
---@field bUpperBodyOnly boolean
---@field bUseExAnim boolean
---@field AnimSeqIdle UAnimSequence
---@field AnimSeqEnter UAnimSequence
---@field AnimSeqExit UAnimSequence
---@field AnimSeqMoveFwd UAnimSequence
---@field AnimSeqMoveBwd UAnimSequence
---@field AnimSeqMoveLeft UAnimSequence
---@field AnimSeqMoveRight UAnimSequence
FBUAnimSettingsLocomotionEx = {}



---@class FBWC_DispLibEnvSettings
---@field bOverride_SunLightIntensity boolean
---@field bOverride_SunLightColor boolean
---@field bOverride_SunAngle boolean
---@field bOverride_SunInclination boolean
---@field bOverride_SunExtentDawnAndDusk boolean
---@field bOverride_SunVolumetricScattering boolean
---@field bOverride_SunColorCurve boolean
---@field bOverride_MoonLightIntensity boolean
---@field bOverride_MoonLightColor boolean
---@field bOverride_MoonInclination boolean
---@field bOverride_MoonOrbitOffset boolean
---@field bOverride_MoonAngle boolean
---@field bOverride_MoonVolumetricScattering boolean
---@field bOverride_MoonColorCurve boolean
---@field bOverride_SkyLightIntensity boolean
---@field bOverride_SkyLightCubeArray boolean
---@field bOverride_SkyLightColor boolean
---@field bOverride_SkyLightVolumetricScattering boolean
---@field bOverride_SkyLightCubeMap boolean
---@field bOverride_FogDensity boolean
---@field bOverride_FogDensityCurve boolean
---@field bOverride_FogHeightFalloff boolean
---@field bOverride_FogScatteringDistribution boolean
---@field bOverride_FogExtinctionScale boolean
---@field bOverride_FogStartDistance boolean
---@field bOverride_FogViewDistance boolean
---@field bOverride_FogAlbedoCurve boolean
---@field bOverride_FogEmissiveCurve boolean
---@field bOverride_LocalFogWeatherTexMask boolean
---@field bOverride_FogAlbedo boolean
---@field bOverride_FogEmissive boolean
---@field bOverride_FogScatteringColor boolean
---@field bOverride_LocalFogDensityMinMax boolean
---@field bOverride_LocalFogAlbedo boolean
---@field bOverride_LocalFogEmissive boolean
---@field bOverride_LocalFogDensityTex boolean
---@field bOverride_LocalFogHeightFalloff boolean
---@field bOverride_LocalFogWeatherTexTilingAndFlowDir boolean
---@field bOverride_LocalFogDensityTilingScale boolean
---@field bOverride_LocalFogStartDistance boolean
---@field bOverride_WindStrengthScale boolean
---@field bOverride_WindStrengthCurve boolean
---@field Weather EBGW_DispLibEnvWeather
---@field WeatherProbability float
---@field SunLightIntensity float
---@field SunLightColor FLinearColor
---@field SunAngle float
---@field SunInclination float
---@field SunExtentDawnAndDusk float
---@field SunVolumetricScattering float
---@field SunColorCurveValue FLinearColor
---@field SunColorCurve UCurveLinearColor
---@field MoonLightIntensity float
---@field MoonLightColor FLinearColor
---@field MoonInclination float
---@field MoonOrbitOffset float
---@field MoonAngle float
---@field MoonVolumetricScattering float
---@field MoonColorCurveValue FLinearColor
---@field MoonColorCurve UCurveLinearColor
---@field SkyLightIntensity float
---@field SkyLightColor FLinearColor
---@field SkyLightVolumetricScattering float
---@field SkyLightCubeMap UTextureCube
---@field SkyLightCubeArrayValue int32
---@field FogDensity float
---@field FogDensityCurveValue float
---@field FogHeightFalloff float
---@field FogScatteringDistribution float
---@field FogExtinctionScale float
---@field FogStartDistance float
---@field FogViewDistance float
---@field FogAlbedoCurveValue FLinearColor
---@field FogEmissiveCurveValue FLinearColor
---@field FogScatteringColor FLinearColor
---@field FogAlbedo FLinearColor
---@field FogEmissive FLinearColor
---@field FogDensityCurve UCurveFloat
---@field FogAlbedoCurve UCurveLinearColor
---@field FogEmissiveCurve UCurveLinearColor
---@field LocalFogWeatherTexMask int32
---@field LocalFogDensityMinMax FVector2D
---@field LocalFogHeightFalloff float
---@field LocalFogAlbedo FLinearColor
---@field LocalFogEmissive FLinearColor
---@field LocalFogWeatherTexTilingAndFlowDir FVector4
---@field LocalFogDensityTex UVolumeTexture
---@field LocalFogDensityTilingScale FVector
---@field LocalFogStartDistance float
---@field WindStrengthScale float
---@field WindStrengthCurveValue float
---@field WindStrengthCurve UCurveFloat
---@field WeatherFX UNiagaraSystem
---@field WeatherFXActor AActor
FBWC_DispLibEnvSettings = {}



---@class FBlueprintSearchResult
---@field ServerName FString
---@field bIsInProgress boolean
---@field MapName FString
---@field PingInMs int32
---@field CurrentPlayers int32
---@field MaxPlayers int32
---@field HostPlayerName FString
---@field MessageDigest FString
FBlueprintSearchResult = {}



---@class FCppTestStructInner
---@field ItemInts TArray<FName>
---@field InnerStruct TArray<FCppTestStructInnerInner>
FCppTestStructInner = {}



---@class FCppTestStructInnerInner
---@field FloatVal float
---@field GameTag FGameplayTag
FCppTestStructInnerInner = {}



---@class FCppTestStructOuter
---@field TestInt int32
---@field ItemStructs TArray<FCppTestStructInner>
FCppTestStructOuter = {}



---@class FCustomJumpData
---@field CustomJumpVelocityIncrement_Pressed float
---@field LastCustomJumpVelocityIncrement_Pressed float
---@field Delta_VelocityZIncrement_CustomJump float
---@field LastVelocityZIncrement_CustomJump float
FCustomJumpData = {}



---@class FDesiredStatTableRow : FTableRowBase
---@field Label FString
---@field Threshold float
FDesiredStatTableRow = {}



---@class FECSNetSerialization
FECSNetSerialization = {}


---@class FGSCameraSequenceData
---@field CameraSequence ULevelSequence
---@field CameraRailClass TSubclassOf<ACameraRig_Rail>
---@field bShouldUseCinematicCamera boolean
FGSCameraSequenceData = {}



---@class FGSCameraSequencePlaySetting
---@field CameraSequenceList TArray<FGSCameraSequenceData>
---@field RefRotatorType ERefRotatorType
---@field InCameraBlendType ECameraBlendType
---@field InCameraBlendSpeed float
---@field InCameraBlendTimeUseNotifyStateLength boolean
---@field InCameraBlendFuncType EViewTargetBlendFunction
---@field InCameraBlendFuncExp float
---@field OutCameraBlendTime float
---@field OutCameraBlendFuncType EViewTargetBlendFunction
---@field OutCameraBlendFuncExp float
FGSCameraSequencePlaySetting = {}



---@class FGSEQSExParam
---@field RunEQSObjReason EBGURunEQSObjReason
---@field ExParam_Bool boolean
---@field ExParam_Int int32
---@field ExParam_Int2 int32
FGSEQSExParam = {}



---@class FGSEnvNamedValue
---@field ParamName FName
---@field ParamType EAIParamType
---@field Value float
FGSEnvNamedValue = {}



---@class FGSEnvQueryTestItem
---@field ItemLocation FVector
---@field ContextActors TArray<AActor>
---@field ContextLocations TArray<FVector>
---@field bContextPerItem boolean
FGSEnvQueryTestItem = {}



---@class FGSFloatCurveToParam
---@field CurveFloat UCurveFloat
---@field NotUseCurve boolean
---@field OriFloatValue float
---@field TargetFloatValue float
---@field ParamName FName
---@field Association EMaterialParameterAssociation
---@field LayerFunction UMaterialFunctionInterface
FGSFloatCurveToParam = {}



---@class FGSFloatValueTableRow : FTableRowBase
---@field Value float
FGSFloatValueTableRow = {}



---@class FGSLevelLatentAction
FGSLevelLatentAction = {}


---@class FGSLinearColorCurveToParam
---@field CurveLinearColor UCurveLinearColor
---@field NotUseCurve boolean
---@field OriLinearColorValue FLinearColor
---@field TargetLinearColorValue FLinearColor
---@field ParamName FName
---@field Association EMaterialParameterAssociation
---@field LayerFunction UMaterialFunctionInterface
FGSLinearColorCurveToParam = {}



---@class FGSMontageCostInfoData
---@field StartMontage UAnimMontage
---@field NextMontage UAnimMontage
---@field CostValue float
FGSMontageCostInfoData = {}



---@class FGSSetLevelStateFailedInfo
---@field LevelName FString
---@field Result EGSLevelSetResult
FGSSetLevelStateFailedInfo = {}



---@class FGSStreamingLevelLoadSetting
---@field bShouldBeLoaded boolean
---@field bShouldBeVisible boolean
---@field bShouldBlockOnLoad boolean
FGSStreamingLevelLoadSetting = {}



---@class FGSSweepCheckShapeInfo
---@field SweepCheckShapeType EGSSweepCheckShapeType
---@field ShapeParamVector FVector
---@field ShapeParamFloat float
FGSSweepCheckShapeInfo = {}



---@class FGlobalTraceConfig
---@field EnableTraceing boolean
---@field DefaultStopTick boolean
---@field TickWarningConfig FTraceTickWarningConfig
---@field SpawnAndSyncWarningConfig FTraceSpawnAndSyncWarningConfig
FGlobalTraceConfig = {}



---@class FHitResultSimple
---@field SurfaceType EPhysicalSurface
---@field HitLocation FVector
---@field HitImpactNormal FVector
---@field HitActor AActor
---@field bIsBlockingHit boolean
FHitResultSimple = {}



---@class FItemGenerationInfo
FItemGenerationInfo = {}


---@class FNotifySoftRefs
---@field SoftPaths TSet<FSoftObjectPath>
FNotifySoftRefs = {}



---@class FProjectionData
---@field ExtentX float
---@field ProjectDown float
---@field ProjectUp float
FProjectionData = {}



---@class FRHIMemInfo
---@field TotalVRAM float
---@field SummaryInfo TMap<FString, FRHIResourceSummaryInfo>
FRHIMemInfo = {}



---@class FRHIResourceSummaryInfo
---@field VRAMAllocation float
---@field Percentage float
FRHIResourceSummaryInfo = {}



---@class FRootMotionSource_CopyAnim : FRootMotionSource
---@field AnimRootMotionTransform FTransform
FRootMotionSource_CopyAnim = {}



---@class FSetLevelsStateTask
FSetLevelsStateTask = {}


---@class FSocketName
---@field FirstSocketName FName
---@field SecondSocketName FName
FSocketName = {}



---@class FSpawnAndSyncOutPutInfo
---@field StatName FString
---@field ElapsedTime double
FSpawnAndSyncOutPutInfo = {}



---@class FTamerHighLODMeshConfig
---@field Mesh USkeletalMesh
---@field BstdAnim UAnimationAsset
---@field MeshTransform FTransform
---@field Materials TArray<UMaterialInterface>
FTamerHighLODMeshConfig = {}



---@class FTamerHighLODRootMeshConfig : FTamerHighLODMeshConfig
---@field SubMeshes TMap<FName, FTamerHighLODMeshConfig>
FTamerHighLODRootMeshConfig = {}



---@class FTickOutPutData
---@field FrameAverageTickTime double
---@field FrameMaxTickTime double
---@field Datas TArray<FTickOutPutInfo>
FTickOutPutData = {}



---@class FTickOutPutInfo
---@field StatName FString
---@field AverageTickTime double
---@field MaxTickTime double
FTickOutPutInfo = {}



---@class FTraceSpawnAndSyncWarningConfig
---@field SpawnAndSyncSortType ESortType
---@field TraceSpawnAndSyncWarningInfo TMap<FString, double>
FTraceSpawnAndSyncWarningConfig = {}



---@class FTraceStatResult
---@field StatName FString
---@field Value float
---@field StatType EGSStatType
FTraceStatResult = {}



---@class FTraceTickWarningConfig
---@field TraceStatWarningInfo TMap<FString, double>
---@field EngineLoopAndSlate_TickTimeWarningLineMS double
---@field StatCacheRange double
---@field TickSortType ESortType
FTraceTickWarningConfig = {}



---@class FUSharpTestStructAsClass
---@field Haha FName
FUSharpTestStructAsClass = {}



---@class FUStCheckShape
---@field IsCapsuleShape boolean
---@field Rotation FVector
---@field Scale FVector
---@field Radius float
---@field SocketName FName
---@field SKComp USkeletalMeshComponent
FUStCheckShape = {}



---@class FUStCheckTransformArray
---@field TransformList TArray<FTransform>
FUStCheckTransformArray = {}



---@class FUStGSHitResult
---@field PreCheckLocation FVector
---@field CurCheckLocation FVector
---@field Actor AActor
---@field ImpactPoint FVector
---@field HitComponent UPrimitiveComponent
---@field BoneName FName
---@field Normal FVector
FUStGSHitResult = {}



---@class FUStGSNotifyParam
---@field World UWorld
---@field Owner AActor
---@field CurInstanceID int32
---@field FromInstanceID int32
---@field UniqueId int32
---@field MeshComp USkeletalMeshComponent
---@field Animation UAnimSequenceBase
---@field AnimNotifyEvent_LinkValue float
---@field NotifyBeginTime float
---@field NotifyEndTime float
FUStGSNotifyParam = {}



---@class FUStGSNotifyStateCache
---@field NotifyParams TArray<FUStGSNotifyParam>
---@field NotifyStatePtrs TArray<TWeakObjectPtr<UAnimNotifyState_GSBase>>
FUStGSNotifyStateCache = {}



---@class FUStGSOverlapResult
---@field Actor TWeakObjectPtr<AActor>
---@field Component TWeakObjectPtr<UPrimitiveComponent>
---@field bBlockingHit boolean
FUStGSOverlapResult = {}



---@class FUnitWeaponPreview
---@field Weapon TSubclassOf<AActor>
---@field SocketName FName
FUnitWeaponPreview = {}



---@class FUnorderedObjDict
---@field mItrIdx int32
---@field mSize int32
---@field mKey2Idx TMap<int32, int32>
---@field mIdx2Key TArray<int32>
---@field mLoopArr TArray<UObject>
FUnorderedObjDict = {}



---@class IBGUActorI : IInterface
IBGUActorI = {}


---@class IBUAnimHandAndFootIKAction : IInterface
IBUAnimHandAndFootIKAction = {}


---@class IBUAnimLocomotionEx : IInterface
IBUAnimLocomotionEx = {}

---@param Settings FBUAnimSettingsLocomotionEx
function IBUAnimLocomotionEx:SetLocoExSettings(Settings) end
---@param bEnable boolean
function IBUAnimLocomotionEx:SetLocoExEnable(bEnable) end


---@class IInterface_DispLibEnvSubsystem : IInterface
IInterface_DispLibEnvSubsystem = {}


---@class IInterface_DispLibEnvVolume : IInterface
IInterface_DispLibEnvVolume = {}


---@class ISmartActorGuidObj : IInterface
ISmartActorGuidObj = {}

---@param PropertyName FString
---@param OutOptions TArray<FActorGuidOption>
---@return int32
function ISmartActorGuidObj:GetActorGuidOptions(PropertyName, OutOptions) end
---@param InActor AActor
---@param OutActorGuid FString
---@return boolean
function ISmartActorGuidObj:GetActorGuid(InActor, OutActorGuid) end
---@return boolean
function ISmartActorGuidObj:CanManageStates() end


---@class UActorCompContainer : UActorComponent
---@field DataContainer UActorDataContainer
---@field EventCollection UObject
---@field TeamID int32
UActorCompContainer = {}

---@param ID int32
function UActorCompContainer:SetTeamID(ID) end
---@param DataObj UObject
function UActorCompContainer:FillEventCollection(DataObj) end
---@param DataObj UActorDataContainer
function UActorCompContainer:FillDataContainer(DataObj) end


---@class UActorDataContainer : UActorComponent
---@field mDatas TArray<UObject>
UActorDataContainer = {}

function UActorDataContainer:PreECSBeginPlay() end
function UActorDataContainer:OnDestoryInCS() end
function UActorDataContainer:LateECSBeginPlay() end
function UActorDataContainer:InitOnNewInCS() end
function UActorDataContainer:ClearDataObj() end
---@param Obj UObject
function UActorDataContainer:AddDataObjInCS(Obj) end


---@class UAnimNotifyFuncLibrary : UBlueprintFunctionLibrary
UAnimNotifyFuncLibrary = {}

---@param AnimBase UAnimSequenceBase
---@param outNotifyRefs TMap<UAnimNotify_GSBase, FNotifySoftRefs>
---@param outNotifyStateRefs TMap<UAnimNotifyState_GSBase, FNotifySoftRefs>
function UAnimNotifyFuncLibrary:PrepareAnimNotifySoftAsset(AnimBase, outNotifyRefs, outNotifyStateRefs) end
---@param AnimBases TArray<UAnimSequenceBase>
---@param outNotifyRefs TMap<UAnimNotify_GSBase, FNotifySoftRefs>
---@param outNotifyStateRefs TMap<UAnimNotifyState_GSBase, FNotifySoftRefs>
function UAnimNotifyFuncLibrary:PrepareAnimationsNotifySoftAsset(AnimBases, outNotifyRefs, outNotifyStateRefs) end
---@param AnimBase UAnimSequenceBase
---@param outNotifyRefs TMap<UAnimNotify_GSBase, FNotifySoftRefs>
---@param outNotifyStateRefs TMap<UAnimNotifyState_GSBase, FNotifySoftRefs>
function UAnimNotifyFuncLibrary:GetAllAnimNotifySoftAsset(AnimBase, outNotifyRefs, outNotifyStateRefs) end
---@param AnimMontage UAnimMontage
---@param NotifyTypeList TArray<EGsEnAnimN>
---@param NotifyStateTypeList TArray<EGsEnAnimNS>
function UAnimNotifyFuncLibrary:DeleteAnimNotifyAndAnimNotifyState(AnimMontage, NotifyTypeList, NotifyStateTypeList) end


---@class UAnimNotifyState_GSBase : UAnimNotifyState
---@field AnimNSType EGsEnAnimNS
---@field bCanTriggerEndByCrossMontageBegin boolean
---@field IsCheckAnimInstance boolean
---@field CanBePlacedInASCS boolean
---@field CanUseQueuedType boolean
---@field isPreload boolean
---@field PreloadedAssets TArray<UObject>
UAnimNotifyState_GSBase = {}

---@param NewNotifyState UAnimNotifyState
function UAnimNotifyState_GSBase:UpdateDataOnNotifyStateReplace(NewNotifyState) end
---@param Actor AActor
function UAnimNotifyState_GSBase:GSValidateInputCS(Actor) end
---@param OwnerChar ABGUCharacter
---@param RemainingDuration float
function UAnimNotifyState_GSBase:GSOnSectionManuallyChanged(OwnerChar, RemainingDuration) end
---@param NotifyParam FUStGSNotifyParam
---@param FrameDeltaTime float
function UAnimNotifyState_GSBase:GSNotifyTickCS(NotifyParam, FrameDeltaTime) end
---@param NotifyParam FUStGSNotifyParam
function UAnimNotifyState_GSBase:GSNotifyEndCS(NotifyParam) end
---@param NotifyParam FUStGSNotifyParam
---@return int32
function UAnimNotifyState_GSBase:GSNotifyDebugPreTickCS(NotifyParam) end
---@param NotifyParam FUStGSNotifyParam
---@return int32
function UAnimNotifyState_GSBase:GSNotifyDebugPreEndCS(NotifyParam) end
---@param NotifyParam FUStGSNotifyParam
---@return int32
function UAnimNotifyState_GSBase:GSNotifyDebugPreBeginCS(NotifyParam) end
---@param NotifyParam FUStGSNotifyParam
---@return int32
function UAnimNotifyState_GSBase:GSNotifyDebugPostTickCS(NotifyParam) end
---@param NotifyParam FUStGSNotifyParam
---@return int32
function UAnimNotifyState_GSBase:GSNotifyDebugPostEndCS(NotifyParam) end
---@param NotifyParam FUStGSNotifyParam
---@return int32
function UAnimNotifyState_GSBase:GSNotifyDebugPostBeginCS(NotifyParam) end
---@param NotifyParam FUStGSNotifyParam
---@param TotalDuration float
function UAnimNotifyState_GSBase:GSNotifyBeginCS(NotifyParam, TotalDuration) end
---@return boolean
function UAnimNotifyState_GSBase:GSAllowCrossSection() end
---@return TArray<FSoftObjectPath>
function UAnimNotifyState_GSBase:GetSoftReferences() end
---@return TArray<UObject>
function UAnimNotifyState_GSBase:GetPreloadedAssets() end
---@return float
function UAnimNotifyState_GSBase:GetModifySpeedRate() end
---@return FString
function UAnimNotifyState_GSBase:GetJumpableSectionPrefix() end
---@return EGsEnAnimNS
function UAnimNotifyState_GSBase:GetAnimNSType() end
---@param Obj UObject
function UAnimNotifyState_GSBase:AddPreloadedAsset(Obj) end


---@class UAnimNotifyState_GSDevLineHit : UAnimNotifyState_GSBase
---@field CollisionChannel ECollisionChannel
---@field ResultFilterType ESweepCheckHitFilterType
---@field HitVEffectID int32
---@field bHitFromActorLocation boolean
---@field HitCheckRadius float
---@field bRenderDebugShape boolean
UAnimNotifyState_GSDevLineHit = {}



---@class UAnimNotifyState_GSEditorHelper : UAnimNotifyState_GSBase
UAnimNotifyState_GSEditorHelper = {}


---@class UAnimNotifyState_GSHeadLock : UAnimNotifyState_GSBase
---@field ReduceHeadLockAlphaScale float
UAnimNotifyState_GSHeadLock = {}



---@class UAnimNotifyState_GSLockHandFoot : UAnimNotifyState_GSBase
---@field NeedLockType EBUHandFootType
---@field BeginReduceScale float
UAnimNotifyState_GSLockHandFoot = {}



---@class UAnimNotifyState_GSNvFlow : UAnimNotifyState_GSBase
---@field bFlowEmit boolean
---@field bFlowCollision boolean
---@field CollisionIndex int32
UAnimNotifyState_GSNvFlow = {}



---@class UAnimNotifyState_GSTimedParticleEffect : UAnimNotifyState_TimedParticleEffect
---@field AttachRule EAttachLocation::Type
---@field InstanceParameters TArray<FParticleSysParam>
UAnimNotifyState_GSTimedParticleEffect = {}



---@class UAnimNotifyState_GSTrail : UAnimNotifyState_Trail
---@field bIsNeedPauseWithOwner boolean
UAnimNotifyState_GSTrail = {}



---@class UAnimNotifyState_GSTrailWithArray : UAnimNotifyState
---@field PSTemplate UParticleSystem
---@field SocketNameList TArray<FSocketName>
---@field WidthScaleMode ETrailWidthMode
---@field WidthScaleCurve FName
---@field bRecycleSpawnedSystems boolean
UAnimNotifyState_GSTrailWithArray = {}

---@param MeshComp USkeletalMeshComponent
---@param Animation UAnimSequenceBase
---@return UParticleSystem
function UAnimNotifyState_GSTrailWithArray:OverridePSTemplate(MeshComp, Animation) end


---@class UAnimNotify_GSBase : UAnimNotify
---@field CanBePlacedInASCS boolean
---@field isPreload boolean
---@field PreloadedAssets TArray<UObject>
UAnimNotify_GSBase = {}

---@param Actor AActor
function UAnimNotify_GSBase:GSValidateInputCS(Actor) end
---@param NotifyParam FUStGSNotifyParam
---@return int32
function UAnimNotify_GSBase:GSPreNotifyDebugCS(NotifyParam) end
---@param NotifyParam FUStGSNotifyParam
---@return int32
function UAnimNotify_GSBase:GSPostNotifyDebugCS(NotifyParam) end
---@param NotifyParam FUStGSNotifyParam
function UAnimNotify_GSBase:GSNotifyCS(NotifyParam) end
---@return TArray<FSoftObjectPath>
function UAnimNotify_GSBase:GetSoftReferences() end
---@return TArray<UObject>
function UAnimNotify_GSBase:GetPreloadedAssets() end
---@return FString
function UAnimNotify_GSBase:GetJumpableSectionPrefix() end
---@return EGsEnAnimN
function UAnimNotify_GSBase:GetAnimNType() end
---@return boolean
function UAnimNotify_GSBase:bIsNativeBranchingPointCS() end
---@param Obj UObject
function UAnimNotify_GSBase:AddPreloadedAsset(Obj) end


---@class UAnimNotify_GSPlayCameraSequence : UAnimNotify
---@field LevelSequenceForCamera ULevelSequence
---@field RebindingObjName FName
---@field bWithCameraFilterPitchMin boolean
---@field PlayerFollowCameraPitchMin float
---@field bWithCameraFilterPitchMax boolean
---@field PlayerFollowCameraPitchMax float
---@field bWithCameraFilterYawMin boolean
---@field PlayerFollowCameraYawMin float
---@field bWithCameraFilterYawMax boolean
---@field PlayerFollowCameraYawMax float
UAnimNotify_GSPlayCameraSequence = {}



---@class UAnimNotify_GSPlayCameraShake : UAnimNotify
UAnimNotify_GSPlayCameraShake = {}


---@class UB1ActorChannel : UActorChannel
UB1ActorChannel = {}


---@class UB1DebugUtil : UObject
UB1DebugUtil = {}


---@class UB1IpNetDriver : UIpNetDriver
UB1IpNetDriver = {}


---@class UB1NetDriverForStandAloneHookBase : UNetDriver
UB1NetDriverForStandAloneHookBase = {}


---@class UB1NetReplicationGraphConnection : UNetReplicationGraphConnection
UB1NetReplicationGraphConnection = {}

---@param InActor AActor
function UB1NetReplicationGraphConnection:SetActorNotDormantOnConnectionCS(InActor) end
---@param Actor AActor
function UB1NetReplicationGraphConnection:NotifyActorChannelRemovedCS(Actor) end
---@param ActorChannel UActorChannel
---@param CloseReason int32
function UB1NetReplicationGraphConnection:NotifyActorChannelCleanedUpCS(ActorChannel, CloseReason) end
---@param Actor AActor
---@param Channel UActorChannel
function UB1NetReplicationGraphConnection:NotifyActorChannelAddedCS(Actor, Channel) end
---@return boolean
function UB1NetReplicationGraphConnection:IsInServerReal() end
---@param Actor AActor
function UB1NetReplicationGraphConnection:GSAddB1ActorChannel(Actor) end
---@return APlayerController
function UB1NetReplicationGraphConnection:GetPlayerControllerCS() end


---@class UB1OnlineSession : UOnlineSession
UB1OnlineSession = {}

---@param SessionName FName
function UB1OnlineSession:StartOnlineSessionCS(SessionName) end
function UB1OnlineSession:RegisterOnlineDelegatesCS() end
---@param bWasSuccess boolean
---@param ControllerId int32
function UB1OnlineSession:OnSessionUserInviteAcceptedCS(bWasSuccess, ControllerId) end
---@param World UWorld
---@param NetDriver UNetDriver
function UB1OnlineSession:HandleDisconnectCS(World, NetDriver) end
---@param SessionName FName
function UB1OnlineSession:EndOnlineSessionCS(SessionName) end
function UB1OnlineSession:ClearOnlineDelegatesCS() end


---@class UB1ReplicationGraph : UReplicationGraph
---@field AlwaysRelevantNode UReplicationGraphNode
---@field ActorsWithoutNetConnection TArray<AActor>
---@field AlwaysRelevantForConnectionList TArray<FB1ConnectionAlwaysRelevantNodePair>
UB1ReplicationGraph = {}

---@param Controller APlayerController
---@param Actor AActor
---@param FuncAddr int64
---@return boolean
function UB1ReplicationGraph:ShouldServerMultiCastRPCForPlayerCS(Controller, Actor, FuncAddr) end
---@param Actor AActor
---@param Swap boolean
function UB1ReplicationGraph:SetRoleSwapOnReplicateCS(Actor, Swap) end
---@param ReplicatedClass UClass
---@param CullDistanceSquared float
---@param ReplicationPeriodFrame int32
function UB1ReplicationGraph:SetGlobalReplicationClassInfo(ReplicatedClass, CullDistanceSquared, ReplicationPeriodFrame) end
---@param AlwaysRelevantNodeCS UB1ReplicationGraphNode_CSBase
function UB1ReplicationGraph:SetAlwaysRelevantNodeCS(AlwaysRelevantNodeCS) end
---@param Actor AActor
function UB1ReplicationGraph:RouteRemoveNetworkActorToNodesCS(Actor) end
---@param Actor AActor
---@param WorldLocation FVector
function UB1ReplicationGraph:RouteAddNetworkActorToNodesCS(Actor, WorldLocation) end
function UB1ReplicationGraph:ResetGameWorldStateCS() end
---@param Actor AActor
function UB1ReplicationGraph:RemoveNetworkActorCS(Actor) end
---@param GraphNode UReplicationGraphNode
---@param ConnectionManager UNetReplicationGraphConnection
function UB1ReplicationGraph:RemoveConnectionGraphNodeCS(GraphNode, ConnectionManager) end
---@param Actor ABGUCharacter
function UB1ReplicationGraph:RemoveBGUCharacterFromAlwaysRelevantNodeCS(Actor) end
---@param CSNode UB1ReplicationGraphNode_CSBase
function UB1ReplicationGraph:InitNodeCS(CSNode) end
function UB1ReplicationGraph:InitGlobalGraphNodesCS() end
function UB1ReplicationGraph:InitGlobalActorClassSettingsCS() end
---@param RepGraphConnection UNetReplicationGraphConnection
function UB1ReplicationGraph:InitConnectionGraphNodesCS(RepGraphConnection) end
---@param Outer UObject
---@param OriginName FString
---@param Name FString
function UB1ReplicationGraph:GSNetworkRemapPathCS(Outer, OriginName, Name) end
---@return UWorld
function UB1ReplicationGraph:GetWorldCS() end
---@return UNetConnection
function UB1ReplicationGraph:GetServerConnectionCS() end
---@param PlayerController APlayerController
---@return UB1NetReplicationGraphConnection
function UB1ReplicationGraph:GetReplicationGraphConnectionByPC(PlayerController) end
---@param Idx int32
---@return UNetReplicationGraphConnection
function UB1ReplicationGraph:GetConnectionByIndexCS(Idx) end
---@param Actor ABGUCharacter
function UB1ReplicationGraph:ClienResetActorChannelCS(Actor) end
---@param Actor AActor
function UB1ReplicationGraph:AddNetworkActorCS(Actor) end
---@param GraphNode UReplicationGraphNode
---@param ConnectionManager UNetReplicationGraphConnection
function UB1ReplicationGraph:AddConnectionGraphNodeCS(GraphNode, ConnectionManager) end
---@param Actor ABGUCharacter
function UB1ReplicationGraph:AddBGUCharacterToAlwaysRelevantNodeCS(Actor) end


---@class UB1ReplicationGraphNode_AlwaysRelevant : UReplicationGraphNode_ActorList
UB1ReplicationGraphNode_AlwaysRelevant = {}


---@class UB1ReplicationGraphNode_AlwaysRelevant_ForConnection : UReplicationGraphNode_ActorList
---@field PastRelevantActors TArray<FAlwaysRelevantActorInfo>
UB1ReplicationGraphNode_AlwaysRelevant_ForConnection = {}



---@class UB1ReplicationGraphNode_CSBase : UReplicationGraphNode
---@field CachedRepActors TArray<AActor>
---@field CachedUpdateRepFrameActors TArray<AActor>
UB1ReplicationGraphNode_CSBase = {}

function UB1ReplicationGraphNode_CSBase:PrepareForReplicationCS() end
function UB1ReplicationGraphNode_CSBase:PostServerReplicateActorCS() end
function UB1ReplicationGraphNode_CSBase:NotifyResetAllNetworkActorsCS() end
---@param Actor AActor
---@param bWarnIfNotFound boolean
---@return boolean
function UB1ReplicationGraphNode_CSBase:NotifyRemoveNetworkActorCS(Actor, bWarnIfNotFound) end
---@param Actor AActor
function UB1ReplicationGraphNode_CSBase:NotifyAddNetworkActorCS(Actor) end
---@param Flag int32
---@param NodeName FString
function UB1ReplicationGraphNode_CSBase:LogNodeCS(Flag, NodeName) end
---@param PlayerController APlayerController
function UB1ReplicationGraphNode_CSBase:GatherActorListsForConnectionCS(PlayerController) end


---@class UB1Util : UObject
UB1Util = {}

---@param TagId int32
function UB1Util:SetUISettingPbTag(TagId) end
---@param SetUISettingData TMap<FString, FString>
function UB1Util:SetUISettingData(SetUISettingData) end
---@param DetailSettingData TMap<FString, FString>
function UB1Util:SetUISettingCustomData(DetailSettingData) end
---@param bEnable boolean
function UB1Util:SetStartupConfigEnable(bEnable) end
---@param InStartLevelName FString
function UB1Util:SetStartLevelName(InStartLevelName) end
---@param InStartCommandList TArray<FString>
function UB1Util:SetStartCommandList(InStartCommandList) end
---@param NewValue int32
function UB1Util:SetPrivacyAgreement(NewValue) end
---@param bInNeverShowStartupUI boolean
function UB1Util:SetNeverShowStartupUI(bInNeverShowStartupUI) end
---@param MonitorID FString
function UB1Util:SetMainMonitorID(MonitorID) end
---@param InGMCommandList TMap<uint8, FString>
function UB1Util:SetGMCommandList(InGMCommandList) end
---@param NewValue boolean
function UB1Util:SetFirstSettingFinish(NewValue) end
---@param NewValue boolean
function UB1Util:SetArchiveMarkFinish(NewValue) end
---@param NewValue int32
function UB1Util:SetAgreementReaded(NewValue) end
function UB1Util:SaveGameUserSettings() end
---@param FolderPath FString
function UB1Util:OpenFileBrowser(FolderPath) end
---@return boolean
function UB1Util:IsStartupConfigEnable() end
---@return boolean
function UB1Util:IsNeverShowStartupUI() end
---@return int32
function UB1Util:GetUISettingPbTag() end
---@param OutUISettingData TMap<FString, FString>
---@return int32
function UB1Util:GetUISettingData(OutUISettingData) end
---@param OutDetailSettingData TMap<FString, FString>
---@return int32
function UB1Util:GetUISettingCustomData(OutDetailSettingData) end
---@return FString
function UB1Util:GetStartLevelName() end
---@param OutStartCommandList TArray<FString>
---@return int32
function UB1Util:GetStartCommandList(OutStartCommandList) end
---@param LeftNum int32
---@param RightNum int32
---@return int32
function UB1Util:GetRandomNumberInt(LeftNum, RightNum) end
---@param LeftNum float
---@param RightNum float
---@return float
function UB1Util:GetRandomNumberFloat(LeftNum, RightNum) end
---@return int32
function UB1Util:GetPrivacyAgreement() end
---@param OutGMCommandList TMap<uint8, FString>
---@return int32
function UB1Util:GetGMCommandList(OutGMCommandList) end
---@return boolean
function UB1Util:GetFirstSettingFinish() end
---@param OutAvailableMaps TArray<FString>
---@return int32
function UB1Util:GetAvailableMaps(OutAvailableMaps) end
---@return boolean
function UB1Util:GetArchiveMarkFinish() end
---@return int32
function UB1Util:GetAgreementReaded() end
---@param Text FString
function UB1Util:CopyStringToClipboard(Text) end
---@return boolean
function UB1Util:CheckIsSimulationPlayMode() end


---@class UBGUAnimationSyncComponent : UActorComponent
---@field OwnerMasterComp USceneComponent
---@field DummyMeshComp USkeletalMeshComponent
---@field DrivingComp USceneComponent
---@field GuestActor AActor
---@field GuestMeshComp USkeletalMeshComponent
---@field GuestMontage UAnimMontage
UBGUAnimationSyncComponent = {}

---@param NewGuest AActor
function UBGUAnimationSyncComponent:OnSwitchSyncGuestTarget(NewGuest) end
---@param bRespect boolean
function UBGUAnimationSyncComponent:OnRespectCollisionInASS(bRespect) end
---@param bStopGuestMontage boolean
function UBGUAnimationSyncComponent:OnEndSyncAnimationOnGuest(bStopGuestMontage) end
---@param InGuestMontage UAnimMontage
---@param InTargetSyncPointOnHost FName
---@param InSelfSyncPointOnGuest FName
---@param bEnableDebugDraw boolean
---@param NotifyBeginTime float
---@param DummyMesh USkeletalMeshComponent
---@param InGuestActor AActor
---@param InBlendInTime float
---@param PlayRate float
---@param bIgnoreSceneCollision boolean
function UBGUAnimationSyncComponent:OnBeginSyncAnimationOnGuest(InGuestMontage, InTargetSyncPointOnHost, InSelfSyncPointOnGuest, bEnableDebugDraw, NotifyBeginTime, DummyMesh, InGuestActor, InBlendInTime, PlayRate, bIgnoreSceneCollision) end


---@class UBGUBounceCheckObject : UObject
UBGUBounceCheckObject = {}

---@param Hit FHitResult
---@param OldVelocity FVector
function UBGUBounceCheckObject:OnBounceCheck(Hit, OldVelocity) end
---@param ProjectileMovementComp UProjectileMovementComponent
function UBGUBounceCheckObject:BindBounceEvent(ProjectileMovementComp) end


---@class UBGUCharacterMovementComponent : UCharacterMovementComponent
---@field bWalkOnDitch boolean
---@field JumpOff_GravityScale_Config float
---@field JumpOff_GravityScaleResetTime float
---@field JumpOff_TestTickTime float
---@field JumpOff_XYMaxSpeed float
---@field JumpOff_ZAddtionalVelocity float
---@field JumpOff_XYMaxSpeedAddtionalScale float
---@field JumpOff_XYBaseCapsuelAddtionalScale float
---@field JumpOff_GravityScaleResetTimer float
---@field bImmediateUpdateRootMotion boolean
---@field bOnMovingPlatform boolean
---@field bEnableSimplifiedMove boolean
---@field CurNavOptFloorNormal FVector
---@field CurHitPoint FVector
---@field CanSwitchToNavWalkCD int32
---@field CanSwitchToNavWalkMaxCD int32
---@field NavWalkCanStepHeight float
---@field NavWalkFallingHight float
---@field LastDesireDeltaFloorZ float
---@field CapsuleRadiusRayExtraAdditiveScale float
---@field NavWalkOptLevel int32
---@field XYMoveCenterBlockTriggerRollBackCapsuleScale float
---@field XYMoveSideBlockTriggerRollBackCapsuleScale float
---@field bNavWalkOpt_MassiveOpt boolean
---@field bOverridePhysWalkingParam boolean
---@field NavWalkCanStepAngel float
---@field bJumpOff boolean
---@field NavWalkCanStepDotValue float
---@field NavWalkCanStepCapsuelHeightScale float
---@field NavWalkCapsuelStepLinTraceZOffsetFromCenter float
---@field bNavWalkDebugEnable boolean
---@field bForceOrgNavWalk boolean
---@field bEnableCheckFloor boolean
---@field SimplePhysWalkCollisionRadius float
---@field SimplePhysWalkStartPenetratingRollBack float
---@field SimplePhysWalkStartPenetratingMaxRollBack float
---@field bEnableSimplePhysWalkCollision boolean
---@field RootMotionTranslationScale FVector
---@field MMRootMotionScale FVector
---@field OptimizeDistanceLevel1 float
---@field FinalNavWalkOptDistanceLevel1 float
---@field OptimizeDistanceLevel2 float
---@field FinalNavWalkOptDistanceLevel2 float
---@field bCanOptimizeFromCS boolean
---@field bIsPatrolling boolean
---@field bIsInBattle boolean
---@field bEnableBlendAnimRootMotion boolean
---@field bReplicateRootMotionMove boolean
---@field bDisableRootMotionFollowMode boolean
---@field bIsInFollowState boolean
---@field FollowClampDistanceOverride float
---@field DefaultFollowClampDistance float
---@field bEnablePrediction boolean
---@field PredictionTime float
---@field PredictionPointNum int32
---@field bIsAI boolean
---@field MovementModeChangeTimeInOneFrame int32
---@field MovementModeChangeTimeInOneFrame_MutilTimes int32
---@field MoveStartHistoryZDeltaNum_NavWalkOpt int32
---@field MoveEndHistoryZDeltaNum_NavWalkOpt int32
---@field ZDeltaThrehold_NavWalkOpt float
---@field FloorZSlopeDeltaThrehold_Anisotropy float
---@field FloorZSlopeDeltaThrehold_Syntropy float
---@field CurFloorZAdditionalWeight int32
---@field FloorZTraceStartScaleShrink float
---@field FloorTestCapsuleRadiusScale float
---@field DitchFallDeltaMoveForTest FVector
---@field DebugLength float
---@field DebugSingleStep float
---@field DebugZOffset FVector
---@field LastRootMotion FRootMotionMovementParams
---@field PredictionTrajectoryTransforms TArray<FTransform>
---@field TopZInFalling float
---@field CustomJumpData FCustomJumpData
---@field SwitchToNavWalkCumulateTime float
UBGUCharacterMovementComponent = {}

---@return int32
function UBGUCharacterMovementComponent:TryGetCurSurfaceTypeFromMovement() end
---@return FVector
function UBGUCharacterMovementComponent:TryGetCurNormalFromMovement() end
---@return FVector
function UBGUCharacterMovementComponent:TryGetCurHitPointFromMovement() end
---@param bDitch boolean
function UBGUCharacterMovementComponent:SetWalkOnDitch(bDitch) end
---@param bUse boolean
function UBGUCharacterMovementComponent:SetUseSeparateBrakingFriction(bUse) end
---@param Time float
function UBGUCharacterMovementComponent:SetSwitchToNavWalkCumulateTime(Time) end
---@param bIsOnMovingPlatform boolean
function UBGUCharacterMovementComponent:SetOnMovingPlatform(bIsOnMovingPlatform) end
---@param bMassiveOpt boolean
function UBGUCharacterMovementComponent:SetNavWalkOptMassiveMode(bMassiveOpt) end
---@param NewLevel int32
function UBGUCharacterMovementComponent:SetNavWalkOptLevel(NewLevel) end
---@param JumpOff boolean
function UBGUCharacterMovementComponent:SetJumpOffState(JumpOff) end
function UBGUCharacterMovementComponent:SetGravityToJumpOffGravity() end
---@param bEnable boolean
function UBGUCharacterMovementComponent:SetEnableSimplePhysWalkCollision(bEnable) end
---@param bDisable boolean
function UBGUCharacterMovementComponent:SetDisableNavWalkOptByWhiteList(bDisable) end
---@param VelocityIncrement float
function UBGUCharacterMovementComponent:SetCustomJumpVelocityIncrement(VelocityIncrement) end
function UBGUCharacterMovementComponent:ResetGravityToNormalGravity() end
---@param Delta FVector
function UBGUCharacterMovementComponent:MoveUpdateHitMove(Delta) end
---@param VelocityZ float
function UBGUCharacterMovementComponent:LaunchVelocityZ(VelocityZ) end
---@return boolean
function UBGUCharacterMovementComponent:IsWalkOnDitch() end
---@return boolean
function UBGUCharacterMovementComponent:IsUseSeparateBrakingFriction() end
---@return boolean
function UBGUCharacterMovementComponent:IsInNavWalkOptMode() end
---@return boolean
function UBGUCharacterMovementComponent:IsInJumpOffAdjust() end
---@return boolean
function UBGUCharacterMovementComponent:HasAnimRootMotion_CS() end
---@return float
function UBGUCharacterMovementComponent:GetTopZInFalling() end
function UBGUCharacterMovementComponent:CustomJumpMoveBreak() end
function UBGUCharacterMovementComponent:ClearTopZInFalling() end
---@return boolean
function UBGUCharacterMovementComponent:CanGetNormalAndSurfaceTypeInfoFromMovement() end


---@class UBGUCrowdFollowingComponent : UGSCrowdFollowingComponent
---@field RotationSpeed float
---@field bPause boolean
---@field DesiredVelocity FVector
---@field DesiredAngleDelta float
---@field RequestedVelocity FVector
---@field YawDelta float
---@field TerrainRotation FRotator
---@field SpeedLimit float
---@field DeltaPosition FVector
---@field RotationSpeedMax float
---@field RotationSpeedAcc float
---@field bSupportFlock boolean
UBGUCrowdFollowingComponent = {}

---@param fSeparationWeight float
---@param fCollisionQueryRange float
---@param fPathOptimizationRange float
---@param iAvoidanceQualityLevel int32
function UBGUCrowdFollowingComponent:SetCrowdFollowingParam(fSeparationWeight, fCollisionQueryRange, fPathOptimizationRange, iAvoidanceQualityLevel) end
---@param bEnabled boolean
---@param bIsObstacle boolean
function UBGUCrowdFollowingComponent:SetCrowdFollowingEnabled(bEnabled, bIsObstacle) end


---@class UBGUDataComp : UActorDataContainer
---@field mUBUC_AIComponent UBUC_AIComponent
---@field mUBUC_ACharacterComponent UBUC_ACharacterComponent
UBGUDataComp = {}

---@param Character ABGUCharacter
function UBGUDataComp:InitWithCharacter(Character) end
---@param AIController ABGUAIController
function UBGUDataComp:InitWithAIController(AIController) end


---@class UBGUDebugCircleComponent : UShapeComponent
---@field CircleRadius float
---@field CircleThickness float
UBGUDebugCircleComponent = {}

---@param InCircleRadius float
function UBGUDebugCircleComponent:SetCircleRadius(InCircleRadius) end
---@return float
function UBGUDebugCircleComponent:GetUnscaledCircleRadius() end
---@return float
function UBGUDebugCircleComponent:GetShapeScale() end
---@return float
function UBGUDebugCircleComponent:GetScaledCircleRadius() end


---@class UBGUDebugSectorComponent : UShapeComponent
---@field SectorRadius float
---@field SectorMinAngle float
---@field SectorMaxAngle float
---@field SectorThickness float
UBGUDebugSectorComponent = {}

---@param InSectorRadius float
function UBGUDebugSectorComponent:SetSectorRadius(InSectorRadius) end
---@param InMinAngle float
function UBGUDebugSectorComponent:SetSectorMinAngle(InMinAngle) end
---@param InMaxAngle float
function UBGUDebugSectorComponent:SetSectorMaxAngle(InMaxAngle) end
---@return float
function UBGUDebugSectorComponent:GetUnscaledSectorRadius() end
---@return float
function UBGUDebugSectorComponent:GetShapeScale() end
---@return float
function UBGUDebugSectorComponent:GetScaledSectorRadius() end


---@class UBGUEQSObject : UObject
---@field EnvQuery UEnvQuery
---@field EvnQueryReq FEnvQueryRequest
---@field QuerierObject AActor
---@field Req_ExParamMap TMap<int32, FGSEQSExParam>
---@field FBUE_RunEQSFinish FBGUEQSObjectFBUE_RunEQSFinish
UBGUEQSObject = {}

---@param EQSPath FString
---@param Querier AActor
---@param Reason EBGURunEQSObjReason
---@param _ExParam FGSEQSExParam
---@return int32
function UBGUEQSObject:EQSRun(EQSPath, Querier, Reason, _ExParam) end
---@param EnvQueryObj UEnvQuery
---@param Querier AActor
---@param Reason EBGURunEQSObjReason
---@param NamedParams TArray<FGSEnvNamedValue>
---@return int32
function UBGUEQSObject:EQSObjRunWithCustomParams(EnvQueryObj, Querier, Reason, NamedParams) end
---@param EnvQueryObj UEnvQuery
---@param Querier AActor
---@param NamedParams TArray<FGSEnvNamedValue>
---@param Locations TArray<FVector>
---@param Scores TArray<float>
function UBGUEQSObject:EQSObjRunInstantWithCustomParams(EnvQueryObj, Querier, NamedParams, Locations, Scores) end
---@param EnvQueryObj UEnvQuery
---@param Querier AActor
---@param Locations TArray<FVector>
---@param Scores TArray<float>
function UBGUEQSObject:EQSObjRunInstant(EnvQueryObj, Querier, Locations, Scores) end
---@param EnvQueryObj UEnvQuery
---@param Querier AActor
---@param Reason EBGURunEQSObjReason
---@param _ExParam FGSEQSExParam
---@return int32
function UBGUEQSObject:EQSObjRun(EnvQueryObj, Querier, Reason, _ExParam) end


---@class UBGUFluid2DComponent : UActorComponent
---@field toggleSim boolean
---@field bPostProcessCollisionData boolean
---@field blueprintDrivenParameters boolean
---@field bMovedCheck boolean
---@field blocationCheck boolean
---@field bLocalSim boolean
---@field bHighQualitySim boolean
---@field bSimAreaClamp boolean
---@field MaxIteration int32
---@field SimulationResX int32
---@field SimulationResY int32
---@field SimAreaSizeInCM float
---@field SnappedPosParameterName FName
---@field dynamicSDFMpc UMaterialParameterCollection
---@field worldOffsetThreshold float
---@field moveThreadhold float
---@field edgeExtendSize float
---@field bExportVeloDensity boolean
---@field bExportPressureDivergence boolean
---@field veloDensityOutput UTextureRenderTarget2D
---@field pressureDivergenceOutput UTextureRenderTarget2D
---@field CollisionQueryMaterial UMaterialInterface
---@field PPCollisionQueryMaterial UMaterialInterface
---@field CompositeMaterial UMaterialInterface
---@field AdvectMaterial UMaterialInterface
---@field DivergenceMaterial UMaterialInterface
---@field PressureStep1Material UMaterialInterface
---@field PressureStep2Material UMaterialInterface
---@field BrushPuncture float
---@field VeloDirNoise float
---@field Speed float
---@field VeloFromSimAreaMotion float
---@field SimEdgeBouncyness float
---@field FadeDensityAtSimEdge float
---@field VeloDirNoiseSize float
---@field VeloDirNoiseSpeed float
---@field VeloOffsetX float
---@field VeloOffsetY float
---@field VeloFromBrushMotion float
---@field VeloStrength float
---@field VeloRotate float
---@field VeloAmpNoise float
---@field InputFeedback float
---@field FlowFeedback float
---@field Divergence float
---@field BrushSize float
---@field BrushStrength float
---@field EraserMode float
---@field BrushHardness float
---@field DensityTemplate UTexture2D
---@field VelocityTemplate UTexture2D
---@field VelocityOffsetSpeed float
---@field EdgeMaskWidth float
---@field DensityTxtMult float
---@field DensityTxtScale float
---@field DensityTxtOffsetX float
---@field DensityTxtOffsetY float
---@field BrushNoise float
---@field VeloInputTile float
---@field DensityInputNoiseAmp float
---@field DensityInputNoiseOffset float
---@field DensityInputNoiseTile float
---@field BrushRnd float
---@field worldOffsetX float
---@field worldOffsetY float
---@field RT_CollisionResult UTextureRenderTarget2D
---@field RT_PPCollisionResult UTextureRenderTarget2D
---@field RT_Advection UTextureRenderTarget2D
---@field RT_PressureDivergence UTextureRenderTarget2D
---@field RT_Composite UTextureRenderTarget2D
---@field RT_PressureDivergenceTemp UTextureRenderTarget2D
---@field CollisionQueryMaterialInstance UMaterialInstanceDynamic
---@field PPCollisionQueryMaterialInstance UMaterialInstanceDynamic
---@field CompositeMaterialInstance UMaterialInstanceDynamic
---@field AdvectMaterialInstance UMaterialInstanceDynamic
---@field DivergenceMaterialInstance UMaterialInstanceDynamic
---@field PressureStep1MaterialInstance UMaterialInstanceDynamic
---@field PressureStep2MaterialInstance UMaterialInstanceDynamic
UBGUFluid2DComponent = {}

---@return UTextureRenderTarget2D
function UBGUFluid2DComponent:GetVeloDensityTexture() end
---@return UTextureRenderTarget2D
function UBGUFluid2DComponent:GetPressureDivergenceTexture() end


---@class UBGUFuncLibAI : UBlueprintFunctionLibrary
UBGUFuncLibAI = {}

---@param Unit AActor
---@param position FVector
---@return int32
function UBGUFuncLibAI:BGURequestAITurnTo(Unit, position) end
---@param Unit AActor
---@param RequestID int32
---@return boolean
function UBGUFuncLibAI:BGUIsAIRequestActive(Unit, RequestID) end
---@param Target AActor
---@param MySelf AActor
---@return float
function UBGUFuncLibAI:BGUAICaculateTargetAngle(Target, MySelf) end


---@class UBGUFuncLibCSDelegateRegister : UBlueprintFunctionLibrary
UBGUFuncLibCSDelegateRegister = {}

---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_SetFloatProperty(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_SetEnumProperty(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_SetCollisionResponseProperty(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_ResetProperty(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_BTTaskTick(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_BTTaskExecute(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_BTTaskAbort(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_BTServiceTick(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_BTServiceSearchStart(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_BTServiceDeactivation(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_BTServiceActivation(FuncPtr) end
---@param FuncPtr FIntPtr
function UBGUFuncLibCSDelegateRegister:Register_BTDecoratorCheckCondition(FuncPtr) end


---@class UBGUFuncLibCSSystem : UBlueprintFunctionLibrary
UBGUFuncLibCSSystem = {}

---@param OwnerActor AActor
---@param Cls UClass
---@return UObject
function UBGUFuncLibCSSystem:CSGetReadOnlyData(OwnerActor, Cls) end
---@param Comp UBaseActorComp
---@param Cls UClass
---@return UObject
function UBGUFuncLibCSSystem:CSGetDataByClass(Comp, Cls) end


---@class UBGUFuncLibData : UBlueprintFunctionLibrary
UBGUFuncLibData = {}

---@param Unit AActor
---@param Tag FGameplayTag
---@param Val FVector
function UBGUFuncLibData:BGUSetTagVector(Unit, Tag, Val) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param Val UObject
function UBGUFuncLibData:BGUSetTagObject(Unit, Tag, Val) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param Val FGameplayTag
function UBGUFuncLibData:BGUSetTagNameWithGameplayTag(Unit, Tag, Val) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param Val FName
function UBGUFuncLibData:BGUSetTagName(Unit, Tag, Val) end
---@param Unit AActor
---@param TagName FName
---@param Val float
function UBGUFuncLibData:BGUSetTagIntByName(Unit, TagName, Val) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param Val int32
function UBGUFuncLibData:BGUSetTagInt(Unit, Tag, Val) end
---@param Unit AActor
---@param TagName FName
---@param Val float
function UBGUFuncLibData:BGUSetTagFloatByName(Unit, TagName, Val) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param Val float
function UBGUFuncLibData:BGUSetTagFloat(Unit, Tag, Val) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param Val uint8
function UBGUFuncLibData:BGUSetTagEnum(Unit, Tag, Val) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param IsValid boolean
---@param Out FVector
function UBGUFuncLibData:BGUGetTagVector(Unit, Tag, IsValid, Out) end
---@param Unit AActor
---@param Tag FGameplayTag
---@return UObject
function UBGUFuncLibData:BGUGetTagObject(Unit, Tag) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param IsValid boolean
---@param Out FName
function UBGUFuncLibData:BGUGetTagName(Unit, Tag, IsValid, Out) end
---@param Unit AActor
---@param TagName FName
---@param IsValid boolean
---@param Out int32
function UBGUFuncLibData:BGUGetTagIntByName(Unit, TagName, IsValid, Out) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param IsValid boolean
---@param Out int32
function UBGUFuncLibData:BGUGetTagInt(Unit, Tag, IsValid, Out) end
---@param Unit AActor
---@param TagName FName
---@param IsValid boolean
---@param Out float
function UBGUFuncLibData:BGUGetTagFloatByName(Unit, TagName, IsValid, Out) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param IsValid boolean
---@param Out float
function UBGUFuncLibData:BGUGetTagFloat(Unit, Tag, IsValid, Out) end
---@param Unit AActor
---@param Tag FGameplayTag
---@param IsValid boolean
---@param Out uint8
function UBGUFuncLibData:BGUGetTagEnum(Unit, Tag, IsValid, Out) end


---@class UBGUFuncLibGM : UBlueprintFunctionLibrary
UBGUFuncLibGM = {}

---@param Count int32
---@param InputPtr FIntPtr
---@return FIntPtr
function UBGUFuncLibGM:TestIntPtr(Count, InputPtr) end


---@class UBGUFuncLibMove : UBlueprintFunctionLibrary
UBGUFuncLibMove = {}

---@param MoveComp UCharacterMovementComponent
function UBGUFuncLibMove:BGUMovementForceSaveBaseLocation(MoveComp) end


---@class UBGUFuncLibSelectTargets : UBlueprintFunctionLibrary
UBGUFuncLibSelectTargets = {}

---@param WorldContextObject UObject
---@param Origin FVector
---@param Rot FQuat
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param OverlapShapeInfo FGSSweepCheckShapeInfo
---@param IgnoreActors TArray<AActor>
---@param OverlapResults TArray<FUStGSOverlapResult>
---@param IsDrawDebugShape boolean
function UBGUFuncLibSelectTargets:BGUOverlapMultiByObjectType(WorldContextObject, Origin, Rot, ObjectTypes, OverlapShapeInfo, IgnoreActors, OverlapResults, IsDrawDebugShape) end
---@param WorldContextObject UWorld
---@param Pos FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param CollisionShape EGSSweepCheckShapeType
---@param ShapeExtent FVector
---@return boolean
function UBGUFuncLibSelectTargets:BGUOverlapAnyTestByObjectType(WorldContextObject, Pos, ObjectTypes, CollisionShape, ShapeExtent) end
---@param WorldContextObject UObject
---@param OverlapShapeComponents TArray<UShapeComponent>
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param IgnoreActors TArray<AActor>
---@param OverlapComps TArray<UShapeComponent>
---@param OverlapOtherActors TArray<AActor>
---@param OverlapOtherComps TArray<UPrimitiveComponent>
---@return boolean
function UBGUFuncLibSelectTargets:BGUMultiCompOverlapByObjectType(WorldContextObject, OverlapShapeComponents, ObjectTypes, IgnoreActors, OverlapComps, OverlapOtherActors, OverlapOtherComps) end
---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param CollisionChannel ECollisionChannel
---@param SweepResult FUStGSHitResult
---@param IgnoreActors TArray<AActor>
---@param BlockChannelsForFilter TArray<ECollisionChannel>
---@param OverlapChannelsForFilter TArray<ECollisionChannel>
---@param IsDrawDebug boolean
---@return boolean
function UBGUFuncLibSelectTargets:BGULineTraceSingleByCollisionChannel(WorldContextObject, Start, End, CollisionChannel, SweepResult, IgnoreActors, BlockChannelsForFilter, OverlapChannelsForFilter, IsDrawDebug) end
---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param CollisionChannel ECollisionChannel
---@param SweepResults TArray<FUStGSHitResult>
---@param IgnoreActors TArray<AActor>
---@param BlockChannelsForFilter TArray<ECollisionChannel>
---@param OverlapChannelsForFilter TArray<ECollisionChannel>
---@param IsDrawDebug boolean
---@return boolean
function UBGUFuncLibSelectTargets:BGULineTraceMultiByCollisionChannel(WorldContextObject, Start, End, CollisionChannel, SweepResults, IgnoreActors, BlockChannelsForFilter, OverlapChannelsForFilter, IsDrawDebug) end
---@param Caster AActor
---@param Target AActor
---@param Filter int32
---@return boolean
function UBGUFuncLibSelectTargets:BGUIsSelectTargetInFilterBP(Caster, Target, Filter) end
---@param WorldContextObject UObject
---@param PreTransform FTransform
---@param CurTransform FTransform
---@param Rot FQuat
---@param CollisionChannel ECollisionChannel
---@param SweepCheckShapeInfo FGSSweepCheckShapeInfo
---@param SweepResults TArray<FUStGSHitResult>
---@param IgnoreActors TArray<AActor>
---@param BlockChannelsForFilter TArray<ECollisionChannel>
---@param OverlapChannelsForFilter TArray<ECollisionChannel>
---@param IsDrawDebugShape boolean
---@param Caster AActor
---@param GroupId int32
---@param SweepCheckType ESweepCheckType
function UBGUFuncLibSelectTargets:BGUGetSweepCheckResultsByCollisionChannelWithCaster(WorldContextObject, PreTransform, CurTransform, Rot, CollisionChannel, SweepCheckShapeInfo, SweepResults, IgnoreActors, BlockChannelsForFilter, OverlapChannelsForFilter, IsDrawDebugShape, Caster, GroupId, SweepCheckType) end
---@param WorldContextObject UObject
---@param PreTransform FTransform
---@param CurTransform FTransform
---@param Rot FQuat
---@param CollisionChannel ECollisionChannel
---@param SweepCheckShapeInfo FGSSweepCheckShapeInfo
---@param SweepResults TArray<FUStGSHitResult>
---@param IgnoreActors TArray<AActor>
---@param BlockChannelsForFilter TArray<ECollisionChannel>
---@param OverlapChannelsForFilter TArray<ECollisionChannel>
---@param IsDrawDebugShape boolean
function UBGUFuncLibSelectTargets:BGUGetSweepCheckResultsByCollisionChannel(WorldContextObject, PreTransform, CurTransform, Rot, CollisionChannel, SweepCheckShapeInfo, SweepResults, IgnoreActors, BlockChannelsForFilter, OverlapChannelsForFilter, IsDrawDebugShape) end
---@param PerceptionComp UAIPerceptionComponent
---@return TArray<AActor>
function UBGUFuncLibSelectTargets:BGUGetSightPerceivedActors(PerceptionComp) end
---@param PerceptionComp UAIPerceptionComponent
---@return TArray<AActor>
function UBGUFuncLibSelectTargets:BGUGetPerceivedActors(PerceptionComp) end
---@param SelfComponent UPrimitiveComponent
---@param Direction FVector
---@param Distance float
---@param OtherComponent UPrimitiveComponent
---@param Pos FVector
---@param Rot FQuat
---@return boolean
function UBGUFuncLibSelectTargets:BGUComputePenetration(SelfComponent, Direction, Distance, OtherComponent, Pos, Rot) end
---@param Component UPrimitiveComponent
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param ComponentClassFilter UClass
---@param ActorsToIgnore TArray<AActor>
---@param OutComponents TArray<UPrimitiveComponent>
---@return boolean
function UBGUFuncLibSelectTargets:BGUCompOverlapCompsByObjectType(Component, ObjectTypes, ComponentClassFilter, ActorsToIgnore, OutComponents) end
---@param Component UPrimitiveComponent
---@param TraceChannel ECollisionChannel
---@param ComponentClassFilter UClass
---@param ActorsToIgnore TArray<AActor>
---@param OutComponents TArray<UPrimitiveComponent>
---@return boolean
function UBGUFuncLibSelectTargets:BGUCompOverlapCompsByChannel(Component, TraceChannel, ComponentClassFilter, ActorsToIgnore, OutComponents) end
---@param WorldContextObject UObject
---@param TraceChannel ECollisionChannel
---@param PrimComp UPrimitiveComponent
---@param Start FVector
---@param End FVector
---@param Rot FQuat
---@param SweepResults TArray<FUStGSHitResult>
---@param IgnoreActors TArray<AActor>
---@param BlockChannelsForFilter TArray<ECollisionChannel>
---@param OverlapChannelsForFilter TArray<ECollisionChannel>
---@return boolean
function UBGUFuncLibSelectTargets:BGUComponentSweepMulti(WorldContextObject, TraceChannel, PrimComp, Start, End, Rot, SweepResults, IgnoreActors, BlockChannelsForFilter, OverlapChannelsForFilter) end


---@class UBGUFuncLibSkill : UBlueprintFunctionLibrary
UBGUFuncLibSkill = {}

---@param AnimInstance UAnimInstance
---@param Montage UAnimMontage
---@return boolean
function UBGUFuncLibSkill:MontageInstanceUnBindUFunctionToMontegeEndDel(AnimInstance, Montage) end
---@param AnimInstance UAnimInstance
---@param Montage UAnimMontage
---@return boolean
function UBGUFuncLibSkill:MontageInstanceUnBindUFunctionToMontageBlendOutDel(AnimInstance, Montage) end
---@param AnimInstance UAnimInstance
---@param Montage UAnimMontage
---@param Object UObject
---@param FunctionName FName
---@return boolean
function UBGUFuncLibSkill:MontageInstanceBindUFunctionToMontegeEndDel(AnimInstance, Montage, Object, FunctionName) end
---@param AnimInstance UAnimInstance
---@param Montage UAnimMontage
---@param Object UObject
---@param FunctionName FName
---@return boolean
function UBGUFuncLibSkill:MontageInstanceBindUFunctionToMontageBlendOutDel(AnimInstance, Montage, Object, FunctionName) end
---@param SkillID int32
---@return FVector
function UBGUFuncLibSkill:BGUGetMotionDirFromSkill(SkillID) end
---@param Montage UAnimMontage
---@param OutActiveNotifies TArray<FAnimNotifyEvent>
function UBGUFuncLibSkill:BGUGetMontageNotifies(Montage, OutActiveNotifies) end
---@param Montage UAnimMontage
---@return boolean
function UBGUFuncLibSkill:BGUGetMontageHasRootMotion(Montage) end
---@param AnimInstance UAnimInstance
---@param Montage UAnimMontage
---@return int32
function UBGUFuncLibSkill:BGUGetActiveInstanceIDForMontage(AnimInstance, Montage) end
---@param Unit ACharacter
---@param NotifyEvent UAnimNotifyState
---@param FromAMInstanceID int32
---@param CurNSLeftTime float
---@param CurNSRightTime float
---@return float
function UBGUFuncLibSkill:BGUCalcNotifyNeedModifyTotalTime(Unit, NotifyEvent, FromAMInstanceID, CurNSLeftTime, CurNSRightTime) end
---@param Unit AActor
---@param FromAMInstanceID int32
---@param LeftTime float
---@param RightTime float
---@param CurMontage UAnimMontage
---@return float
function UBGUFuncLibSkill:BGUCalcMontageSpecificRangeTime(Unit, FromAMInstanceID, LeftTime, RightTime, CurMontage) end
---@param Unit ACharacter
---@param FromAMInstanceID int32
---@return float
function UBGUFuncLibSkill:BGUCalcMontageNeedModifyTotalTime(Unit, FromAMInstanceID) end


---@class UBGUFunctionLibAK : UBlueprintFunctionLibrary
UBGUFunctionLibAK = {}

---@param BankName FString
function UBGUFunctionLibAK:UnLoadBank(BankName) end
---@param SwitchGroup FName
---@param SwitchState FName
function UBGUFunctionLibAK:SetUnrealGlobalSwitch(SwitchGroup, SwitchState) end
---@param InEventName FString
---@param InComponent UAkComponent
---@param InPercent float
---@param bInSeekToNearestMarker boolean
---@param InPlayingID int32
---@return EAkResult
function UBGUFunctionLibAK:SeekOnEvent(InEventName, InComponent, InPercent, bInSeekToNearestMarker, InPlayingID) end
---@param EventName FString
---@param Event UAkAudioEvent
---@return int32
function UBGUFunctionLibAK:PostAkEventOnDummyActor(EventName, Event) end
---@param BankName FString
function UBGUFunctionLibAK:LoadBank(BankName) end
---@param PlayingID int32
---@return int32
function UBGUFunctionLibAK:GetSourcePlayPosition(PlayingID) end
---@param ActionType int32
---@param PlayingID int32
---@param FadeOutTimeMs int32
---@param FadeOutCurveType int32
function UBGUFunctionLibAK:ExecuteActionOnPlayingID(ActionType, PlayingID, FadeOutTimeMs, FadeOutCurveType) end
---@param PlayingID int32
---@param FadeOutTimeMs int32
---@param FadeOutCurveType int32
function UBGUFunctionLibAK:BGUAKStopPlayingID(PlayingID, FadeOutTimeMs, FadeOutCurveType) end
---@param Event UAkAudioEvent
---@param PlayingID int32
function UBGUFunctionLibAK:AkEventPinInGarbageCollector(Event, PlayingID) end


---@class UBGUFunctionLibCollisionChannel : UBlueprintFunctionLibrary
UBGUFunctionLibCollisionChannel = {}

---@param Comp UPrimitiveComponent
---@param ProfileName FName
---@param OutCollisionEnabled ECollisionEnabled::Type
---@param OutObjectType ECollisionChannel
---@param OutResponseToChannels TMap<ECollisionChannel, ECollisionResponse>
---@return boolean
function UBGUFunctionLibCollisionChannel:GetCollisionProfileData(Comp, ProfileName, OutCollisionEnabled, OutObjectType, OutResponseToChannels) end
---@param CollisionChannel ECollisionChannel
---@return ETraceTypeQuery
function UBGUFunctionLibCollisionChannel:ConvertToTraceType(CollisionChannel) end
---@param CollisionChannel ECollisionChannel
---@return EObjectTypeQuery
function UBGUFunctionLibCollisionChannel:ConvertToObjectType(CollisionChannel) end
---@param TraceType ETraceTypeQuery
---@return ECollisionChannel
function UBGUFunctionLibCollisionChannel:ConvertToCollisionChannelByTraceType(TraceType) end
---@param ObjectType EObjectTypeQuery
---@return ECollisionChannel
function UBGUFunctionLibCollisionChannel:ConvertToCollisionChannelByObjectType(ObjectType) end
---@param Comp UPrimitiveComponent
---@param ResponseToChannels TMap<ECollisionChannel, ECollisionResponse>
function UBGUFunctionLibCollisionChannel:BGUSetCollisionResponseToChannels(Comp, ResponseToChannels) end
---@param Comp UPrimitiveComponent
---@param OutResponseToChannels TMap<ECollisionChannel, ECollisionResponse>
---@return boolean
function UBGUFunctionLibCollisionChannel:BGUGetCollisionResponseToChannels(Comp, OutResponseToChannels) end


---@class UBGUFunctionLibrary : UBlueprintFunctionLibrary
UBGUFunctionLibrary = {}

---@param HitResult FHitResult
---@return FUStGSHitResult
function UBGUFunctionLibrary:WrapHitResult(HitResult) end
---@param Volume AVolume
---@param Point FVector
---@param SphereRadius float
---@param OutDistanceToPoint float
---@return boolean
function UBGUFunctionLibrary:VolumeEncompassPoint(Volume, Point, SphereRadius, OutDistanceToPoint) end
---@param SphereComp USphereComponent
---@param Radius float
function UBGUFunctionLibrary:SphereComponentInitRadius(SphereComp, Radius) end
---@param TargetMesh USkeletalMeshComponent
---@param NewBool boolean
function UBGUFunctionLibrary:SetLocalKinematics(TargetMesh, NewBool) end
---@param Character ACharacter
---@param NewValid boolean
function UBGUFunctionLibrary:SetIKValid(Character, NewValid) end
---@param TargetMesh USkeletalMeshComponent
---@param BoneName FName
---@param NewBool boolean
function UBGUFunctionLibrary:SetBodyBonePhysic(TargetMesh, BoneName, NewBool) end
---@param TargetMesh USkeletalMeshComponent
---@param InBoneName FName
---@param bNewSimulate boolean
---@param bIncludeSelf boolean
---@param bSkipCustomPhysicsType boolean
function UBGUFunctionLibrary:SetAllBodiesBelowSimulatePhysics(TargetMesh, InBoneName, bNewSimulate, bIncludeSelf, bSkipCustomPhysicsType) end
---@param TargetLevelActor AActor
---@param InActorComponent UActorComponent
function UBGUFunctionLibrary:SerializeActorComponentToLevelActor(TargetLevelActor, InActorComponent) end
---@param WorldContextObject UObject
---@param LevelName FName
function UBGUFunctionLibrary:RemoveLevelStreaming(WorldContextObject, LevelName) end
---@param TargetLevelActor AActor
---@param InActorComponent UActorComponent
function UBGUFunctionLibrary:RemoveActorComponentFromLevelActor(TargetLevelActor, InActorComponent) end
---@param WorldContextObject UObject
---@param LevelName FName
---@param InWorldOffset FVector
---@param bActorOnly boolean
function UBGUFunctionLibrary:MoveLevel(WorldContextObject, LevelName, InWorldOffset, bActorOnly) end
---@param SpawnLevel ULevel
---@param InBaseName FName
---@return FName
function UBGUFunctionLibrary:MakeUniqueTamerMonsterName(SpawnLevel, InBaseName) end
---@param LevelStreaming ULevelStreaming
---@return FBox
function UBGUFunctionLibrary:GetStreamingVolumeBounds(LevelStreaming) end
---@param WorldContextObject UObject
---@return ACharacter
function UBGUFunctionLibrary:GetPlayerCharacter(WorldContextObject) end
---@param TargetSkeletalMesh USkeletalMeshComponent
---@param WorldPosition FVector
---@param OptionalWhiteList TArray<FString>
---@return FName
function UBGUFunctionLibrary:GetNearestBoneName(TargetSkeletalMesh, WorldPosition, OptionalWhiteList) end
---@param WorldContextObject UObject
---@param LevelName FName
---@return uint8
function UBGUFunctionLibrary:GetLevelStreamingState(WorldContextObject, LevelName) end
---@param WorldContextObject UObject
---@param LevelName FName
---@return FTransform
function UBGUFunctionLibrary:GetLevelStreamingLevelTransformByName(WorldContextObject, LevelName) end
---@param World UWorld
---@return TArray<ULevelStreaming>
function UBGUFunctionLibrary:GetLevelStreamingFromWorld(World) end
---@param WorldContextObject UObject
---@return TArray<ULevelStreaming>
function UBGUFunctionLibrary:GetLevelStreaming(WorldContextObject) end
---@param ClassName FName
---@param AssetName FString
---@return FName
function UBGUFunctionLibrary:GetAssetLongPackageName(ClassName, AssetName) end
---@param SelectedPackageName FName
---@return TArray<FName>
function UBGUFunctionLibrary:GetAllAssetReference(SelectedPackageName) end
---@param SelectedPackageName FName
---@return TArray<FName>
function UBGUFunctionLibrary:GetAllAssetDependencies(SelectedPackageName) end
---@param World UWorld
---@return TArray<AActor>
function UBGUFunctionLibrary:GetAllActorsInWorld(World) end
---@param Level ULevel
---@return TArray<AActor>
function UBGUFunctionLibrary:GetAllActorsInLevel(Level) end
---@param WorldContext UObject
---@param TileName FString
---@param SwitchOn int32
function UBGUFunctionLibrary:ForceLoadTileLOD(WorldContext, TileName, SwitchOn) end
---@param WorldContextObject UObject
---@param TextLocation FVector
---@param Text FString
---@param TestBaseActor AActor
---@param TextColor FLinearColor
---@param Duration float
function UBGUFunctionLibrary:DrawDebugString(WorldContextObject, TextLocation, Text, TestBaseActor, TextColor, Duration) end
---@param MontageList TArray<UAnimMontage>
---@param BoneNameList TArray<FName>
function UBGUFunctionLibrary:CalculateMontageCostValue(MontageList, BoneNameList) end
---@param TargetSkeletalMesh USkeletalMeshComponent
---@param Radius float
---@param WorldPosition FVector
---@return TArray<FName>
function UBGUFunctionLibrary:BonesSphereMask(TargetSkeletalMesh, Radius, WorldPosition) end
---@param Character AActor
---@param Montage UAnimMontage
---@param ScaleRate float
function UBGUFunctionLibrary:BGUWoodTestCharacter(Character, Montage, ScaleRate) end
---@param CurWorld UWorld
function UBGUFunctionLibrary:BGUUpdateLevelStreaming(CurWorld) end
---@param WorldContextObject UObject
---@param LevelName FName
---@param bShouldBlockOnUnload boolean
---@param CallbackTarget UObject
---@param CallbackFunc FName
---@param ActionID int32
---@param Linkage int32
function UBGUFunctionLibrary:BGUUnloadStreamLevel(WorldContextObject, LevelName, bShouldBlockOnUnload, CallbackTarget, CallbackFunc, ActionID, Linkage) end
---@param SkMeshComp USkeletalMeshComponent
---@param SocketName FName
---@return boolean
function UBGUFunctionLibrary:BGUSKMeshContainSocket(SkMeshComp, SocketName) end
---@param ShapeComp UShapeComponent
---@param Start FVector
---@param End FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param OutHits TArray<FHitResult>
---@param bIgnoreSelf boolean
---@return boolean
function UBGUFunctionLibrary:BGUShapeSweepMultiByObjectType(ShapeComp, Start, End, ObjectTypes, bTraceComplex, OutHits, bIgnoreSelf) end
---@param CurveVector UCurveVector
---@param Key float
---@param Value FVector
---@param InterpMode ERichCurveInterpMode
function UBGUFunctionLibrary:BGUSetValueToCurveVector(CurveVector, Key, Value, InterpMode) end
---@param CurveFloat UCurveFloat
---@param Key float
---@param Value float
---@param InterpMode ERichCurveInterpMode
function UBGUFunctionLibrary:BGUSetValueToCurveFloat(CurveFloat, Key, Value, InterpMode) end
---@param TFXComp UTressFXComponent
---@param Asset UTressFXAsset
---@param Material UMaterialInstance
function UBGUFunctionLibrary:BGUSetTressFXAssetAndMaterial(TFXComp, Asset, Material) end
---@param MeshInst UMeshComponent
---@param ParameterName FName
---@param LinearColorParameterValue FLinearColor
function UBGUFunctionLibrary:BGUSetLinearColorParameterValueToMesh(MeshInst, ParameterName, LinearColorParameterValue) end
---@param TargetMesh USkeletalMeshComponent
---@param bEnableGravity boolean
function UBGUFunctionLibrary:BGUSetEnableGravity(TargetMesh, bEnableGravity) end
---@param Character ABGUCharacter
---@param Montage UAnimMontage
---@param position float
---@return boolean
function UBGUFunctionLibrary:BGUSetActiveMontagePosition(Character, Montage, position) end
---@param InPolyVertices TArray<FVector>
---@param InBoxCenter FVector
---@param InBoxExtent FVector
---@param bInCalcLeastPenetration boolean
---@return boolean
function UBGUFunctionLibrary:BGUSeparatingAxisPointCheck(InPolyVertices, InBoxCenter, InBoxExtent, bInCalcLeastPenetration) end
---@param Name FString
---@param Text FString
---@param Overwrite boolean
function UBGUFunctionLibrary:BGUSaveUnitAttrToFile(Name, Text, Overwrite) end
---@param PlayerCharacter AActor
function UBGUFunctionLibrary:BGUResetToDefaultBoomCameraLagSpeed(PlayerCharacter) end
---@param GeometryCollectionComponent UGeometryCollectionComponent
function UBGUFunctionLibrary:BGUResetGeometryCollectionComponent(GeometryCollectionComponent) end
---@param Actor AActor
function UBGUFunctionLibrary:BGUResetActorVelocity(Actor) end
---@param Comp UActorComponent
---@param NewName FString
function UBGUFunctionLibrary:BGURenameActorComponent(Comp, NewName) end
---@param WorldContextObject UObject
---@param Point FVector
---@param ProjectedLocation FVector
---@param NavData ANavigationData
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@param QueryExtent FVector
---@return boolean
function UBGUFunctionLibrary:BGUProjectPointToNavigation(WorldContextObject, Point, ProjectedLocation, NavData, FilterClass, QueryExtent) end
---@param WorldContextObject UObject
---@param InObject UObject
---@param DeltaTime float
function UBGUFunctionLibrary:BGUProcessLatentActions(WorldContextObject, InObject, DeltaTime) end
---@param PlayerCtrler APlayerController
---@param out_Location FVector
---@param out_Rotation FRotator
function UBGUFunctionLibrary:BGUPlayerCtrlerGetViewPoint(PlayerCtrler, out_Location, out_Rotation) end
---@param Value float
---@return float
function UBGUFunctionLibrary:BGUPerlinNoise1D(Value) end
---@param WorldContextObject UObject
---@param RayStart FVector
---@param RayEnd FVector
---@param HitLocation FVector
---@param FilterClass TSubclassOf<UNavigationQueryFilter>
---@param Querier AController
---@return boolean
function UBGUFunctionLibrary:BGUNavigationRaycast(WorldContextObject, RayStart, RayEnd, HitLocation, FilterClass, Querier) end
---@param WorldContextObject UObject
---@param PathStart FVector
---@param PathEnd FVector
---@param PathCost float
---@param Querier AController
function UBGUFunctionLibrary:BGUNavigationCalPathCost(WorldContextObject, PathStart, PathEnd, PathCost, Querier) end
---@param InMergeMesh USkeletalMesh
---@param InSrcMeshList TArray<USkeletalMesh>
---@param StripTopLODS int32
---@param MeshBufferAccess EMeshBufferAccess
---@return boolean
function UBGUFunctionLibrary:BGUMergeSkeletalMesh(InMergeMesh, InSrcMeshList, StripTopLODS, MeshBufferAccess) end
---@param WorldContextObject UObject
---@param LevelName FName
---@param bMakeVisibleAfterLoad boolean
---@param bShouldBlockOnLoad boolean
---@param CallbackTarget UObject
---@param CallbackFunc FName
---@param ActionID int32
---@param Linkage int32
function UBGUFunctionLibrary:BGULoadStreamLevel(WorldContextObject, LevelName, bMakeVisibleAfterLoad, bShouldBlockOnLoad, CallbackTarget, CallbackFunc, ActionID, Linkage) end
---@param Path FString
---@return boolean
function UBGUFunctionLibrary:BGUIsExistFile(Path) end
---@param FuncName FName
---@param Object UObject
---@param StopAtClass UClass
---@return boolean
function UBGUFunctionLibrary:BGUHasFuncName(FuncName, Object, StopAtClass) end
---@param WorldContext AActor
---@param position FVector
---@param OutDirection FVector
---@param OutSpeed float
---@param OutMinGustAmt float
---@param OutMaxGustAmt float
function UBGUFunctionLibrary:BGUGetWindParameters_GameThread(WorldContext, position, OutDirection, OutSpeed, OutMinGustAmt, OutMaxGustAmt) end
---@param Unit AActor
---@return int32
function UBGUFunctionLibrary:BGUGetTeamID(Unit) end
---@param SkeletalMesh USkeletalMeshComponent
---@param BoneName FName
---@param bIncludeSelf boolean
---@return int32
function UBGUFunctionLibrary:BGUGetSkeletalMeshSimulatedBodiesBelowNum(SkeletalMesh, BoneName, bIncludeSelf) end
---@param Unit AActor
---@param AnimMontage UAnimMontage
---@param position float
---@return float
function UBGUFunctionLibrary:BGUGetMontageSectionTimeLeftFromPos(Unit, AnimMontage, position) end
---@param AnimMontage UAnimMontage
---@param SectionName FName
---@param OutStartTime float
---@param OutEndTime float
---@return boolean
function UBGUFunctionLibrary:BGUGetMontageSectionStartAndEndTime(AnimMontage, SectionName, OutStartTime, OutEndTime) end
---@param Unit AActor
---@param AnimMontage UAnimMontage
---@param SectionName FName
---@return float
function UBGUFunctionLibrary:BGUGetMontageSectionLengthByName(Unit, AnimMontage, SectionName) end
---@param Unit AActor
---@param AnimMontage UAnimMontage
---@param Index int32
---@return float
function UBGUFunctionLibrary:BGUGetMontageSectionLengthByIndex(Unit, AnimMontage, Index) end
---@param ActorInstanceHandle FActorInstanceHandle
---@return AActor
function UBGUFunctionLibrary:BGUGetHitResultActor(ActorInstanceHandle) end
---@param CenterActor AActor
---@param TagName FName
---@param Range int32
---@param OutActors TArray<AActor>
---@return boolean
function UBGUFunctionLibrary:BGUGetAllActorsWithTagInRangeSorted(CenterActor, TagName, Range, OutActors) end
---@param Actor ABGUCharacter
---@param Montage UAnimMontage
---@return float
function UBGUFunctionLibrary:BGUGetActiveMontagePosition(Actor, Montage) end
---@param WorldContextObject UObject
---@param WorldAssetName FName
---@param InLevelName FName
---@param InLevelTransform FTransform
---@return ULevelStreaming
function UBGUFunctionLibrary:BGUGenProceduralLevel(WorldContextObject, WorldAssetName, InLevelName, InLevelTransform) end
---@param Actor AActor
---@param ActorComponentClass TSubclassOf<UActorComponent>
---@return UActorComponent
function UBGUFunctionLibrary:BGUGenComponentAndAdd(Actor, ActorComponentClass) end
---@param Actor AActor
---@param ActorComponentClass TSubclassOf<UActorComponent>
---@return UActorComponent
function UBGUFunctionLibrary:BGUGenComponent(Actor, ActorComponentClass) end
---@param WorldContextObject UObject
function UBGUFunctionLibrary:BGUFlushLevelStreamingOnlyVisibility(WorldContextObject) end
---@param Actor AActor
---@param SpawnTransform FTransform
---@return AActor
function UBGUFunctionLibrary:BGUFinishSpawningActor(Actor, SpawnTransform) end
---@param WorldContextObject UObject
---@param TagName FName
---@return AActor
function UBGUFunctionLibrary:BGUFindFirstActorWithTag(WorldContextObject, TagName) end
---@param StaticMesh UPrimitiveComponent
---@param Origin FVector
---@param BoxExtent FVector
---@param SphereRadius float
function UBGUFunctionLibrary:BGUCalcBounds(StaticMesh, Origin, BoxExtent, SphereRadius) end
---@param WorldContextObject UObject
---@param ActorClass TSubclassOf<AActor>
---@param SpawnTransform FTransform
---@param CollisionHandlingOverride ESpawnActorCollisionHandlingMethod
---@param Owner AActor
---@param ActorName FName
---@param OverrideLevel ULevel
---@return AActor
function UBGUFunctionLibrary:BGUBeginDeferredActorSpawnFromClassWithName(WorldContextObject, ActorClass, SpawnTransform, CollisionHandlingOverride, Owner, ActorName, OverrideLevel) end
---@param WorldContextObject UObject
---@param ActorClass TSubclassOf<AActor>
---@param SpawnTransform FTransform
---@param CollisionHandlingOverride ESpawnActorCollisionHandlingMethod
---@param Owner AActor
---@return AActor
function UBGUFunctionLibrary:BGUBeginDeferredActorSpawnFromClass(WorldContextObject, ActorClass, SpawnTransform, CollisionHandlingOverride, Owner) end
---@param Actor AActor
function UBGUFunctionLibrary:BGUActorUpdateAllTFXComp(Actor) end
---@param WorldContextObject UObject
---@param LevelName FName
---@param LevelTransform FTransform
function UBGUFunctionLibrary:ApplyLevelTransform(WorldContextObject, LevelName, LevelTransform) end
---@param WorldContextObject UObject
---@param LevelName FName
---@param Location FVector
---@param Rotation FRotator
---@param bShouldBlockOnLoad boolean
---@return FName
function UBGUFunctionLibrary:AddLevelStreaming(WorldContextObject, LevelName, Location, Rotation, bShouldBlockOnLoad) end


---@class UBGUFunctionLibraryForCS : UBlueprintFunctionLibrary
UBGUFunctionLibraryForCS = {}

---@param ResourcePath FString
function UBGUFunctionLibraryForCS:ValidateMontagesForCrossSectionNS(ResourcePath) end
---@param TagName FName
---@param ErrorIfNotFound boolean
---@return FGameplayTag
function UBGUFunctionLibraryForCS:RequestGameplayTag(TagName, ErrorIfNotFound) end
---@param Querier UObject
function UBGUFunctionLibraryForCS:RemoveAllQueriesByQuerier(Querier) end
---@param InTargetLevelsKeyword FString
---@param InTargetLevelState FString
---@param InOperationID int32
function UBGUFunctionLibraryForCS:OnSetLevelsStateFinishedPlaceHolder(InTargetLevelsKeyword, InTargetLevelState, InOperationID) end
---@param HitComp UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param HitImpule FVector
---@param Hit FHitResult
function UBGUFunctionLibraryForCS:OnComponentHitPlaceholder(HitComp, OtherActor, OtherComp, HitImpule, Hit) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
function UBGUFunctionLibraryForCS:OnComponentEndOverlapPlaceholder(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex int32
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UBGUFunctionLibraryForCS:OnComponentBeginOverlapPlaceholder(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end
function UBGUFunctionLibraryForCS:OnAllSetLevelsStateFinishedPlaceHolder() end
---@param OverlapActor AActor
---@param OtherActor AActor
function UBGUFunctionLibraryForCS:OnActorEndOverlapPlaceholder(OverlapActor, OtherActor) end
---@param OverlapActor AActor
---@param OtherActor AActor
function UBGUFunctionLibraryForCS:OnActorBeginOverlapPlaceholder(OverlapActor, OtherActor) end
---@param StaticMeshComponent UStaticMeshComponent
---@param LODIndex int32
---@param ProcMeshComponent UProceduralMeshComponent
---@param bCreateCollision boolean
function UBGUFunctionLibraryForCS:CopyProceduralMeshFromStaticMeshComponent(StaticMeshComponent, LODIndex, ProcMeshComponent, bCreateCollision) end
---@param TraceType ETraceTypeQuery
---@return ECollisionChannel
function UBGUFunctionLibraryForCS:ConvertTraceTypeToCollisionChannel(TraceType) end
---@param CollisionChannel ECollisionChannel
---@return ETraceTypeQuery
function UBGUFunctionLibraryForCS:ConvertToTraceType(CollisionChannel) end
---@param CollisionChannel ECollisionChannel
---@return EObjectTypeQuery
function UBGUFunctionLibraryForCS:ConvertToObjectType(CollisionChannel) end
---@param ObjectType EObjectTypeQuery
---@return ECollisionChannel
function UBGUFunctionLibraryForCS:ConvertObjectTypeToCollisionChannel(ObjectType) end
---@param Comp UPrimitiveComponent
---@param bDoNotifies boolean
---@return boolean
function UBGUFunctionLibraryForCS:CompForceUpdateOverlaps(Comp, bDoNotifies) end
---@param OwnerChar ABGUCharacter
---@param NewSectionName FName
function UBGUFunctionLibraryForCS:CallSectionManuallyChangeOnCrossSectionNotifies(OwnerChar, NewSectionName) end
---@param Obj UObject
---@param FuncName FName
function UBGUFunctionLibraryForCS:BGUUnBindOnSetLevelsStateFinished(Obj, FuncName) end
---@param Comp UPrimitiveComponent
---@param Obj UObject
---@param Func FName
function UBGUFunctionLibraryForCS:BGUUnBindOnComponentHitEvent(Comp, Obj, Func) end
---@param Comp UPrimitiveComponent
---@param Obj UObject
---@param FuncName FName
function UBGUFunctionLibraryForCS:BGUUnBindOnComponentEndOverlapEvent(Comp, Obj, FuncName) end
---@param Comp UPrimitiveComponent
---@param Obj UObject
---@param FuncName FName
function UBGUFunctionLibraryForCS:BGUUnBindOnComponentBeginOverlapEvent(Comp, Obj, FuncName) end
---@param Obj UObject
---@param FuncName FName
function UBGUFunctionLibraryForCS:BGUUnBindOnAllSetLevelsStateFinished(Obj, FuncName) end
---@param Owner AActor
---@param DestLocation FVector
---@param DestRotation FRotator
---@param bIsATest boolean
---@param bNoCheck boolean
---@return boolean
function UBGUFunctionLibraryForCS:BGUTeleportTo(Owner, DestLocation, DestRotation, bIsATest, bNoCheck) end
---@param DecalMaterial UMaterialInterface
---@param DecalSize FVector
---@param AttachToComponent USceneComponent
---@param AttachPointName FName
---@param Location FVector
---@param Rotation FRotator
---@param LocationType EAttachLocation::Type
---@param LifeSpan float
---@return UDecalComponent
function UBGUFunctionLibraryForCS:BGUSpawnDecalAttached(DecalMaterial, DecalSize, AttachToComponent, AttachPointName, Location, Rotation, LocationType, LifeSpan) end
---@param InProcMesh UProceduralMeshComponent
---@param PlanePosition FVector
---@param PlaneNormal FVector
---@param bCreateOtherHalf boolean
---@param OutOtherHalfProcMesh UProceduralMeshComponent
---@param CapOption EProcMeshSliceCapOption
---@param CapMaterial UMaterialInterface
function UBGUFunctionLibraryForCS:BGUSliceProceduralMesh(InProcMesh, PlanePosition, PlaneNormal, bCreateOtherHalf, OutOtherHalfProcMesh, CapOption, CapMaterial) end
---@param ParticleSystemComp UParticleSystemComponent
---@param SortPriority int32
function UBGUFunctionLibraryForCS:BGUSetParticleSysSortPriority(ParticleSystemComp, SortPriority) end
---@param ParticleComp UParticleSystemComponent
---@param PoolMethod EPSCPoolMethod
function UBGUFunctionLibraryForCS:BGUSetParticleSysCompPoolingMethod(ParticleComp, PoolMethod) end
---@param Character ACharacter
---@param NewValid boolean
function UBGUFunctionLibraryForCS:BGUSetIKComponentValid(Character, NewValid) end
---@param DecalComp UDecalComponent
---@param Size FVector
function UBGUFunctionLibraryForCS:BGUSetDecalSize(DecalComp, Size) end
---@param AIController ABGUAIController
function UBGUFunctionLibraryForCS:BGURestartBT(AIController) end
---@param WorldContextObject UObject
---@param ActorComp UActorComponent
---@return boolean
function UBGUFunctionLibraryForCS:BGURegistComp(WorldContextObject, ActorComp) end
---@param MoveComp UMovementComponent
---@param Delta FVector
---@param Time float
---@param Normal FVector
---@param InHit FHitResult
---@param bHandleImpact boolean
---@param OutHit FHitResult
---@return float
function UBGUFunctionLibraryForCS:BGUMovementComponentSlideAlongSurface(MoveComp, Delta, Time, Normal, InHit, bHandleImpact, OutHit) end
---@param MoveComp UMovementComponent
---@param Hit FHitResult
---@param TimeSlice float
---@param MoveDelta FVector
function UBGUFunctionLibraryForCS:BGUMovementComponentHandleImpact(MoveComp, Hit, TimeSlice, MoveDelta) end
---@param BBKey UBlackboardKeyType
---@param BBKeyType EBBKeyType
---@return boolean
function UBGUFunctionLibraryForCS:BGUIsBlackBoardKeyTypeMatch(BBKey, BBKeyType) end
---@param InnerObject UObject
---@return UWorld
function UBGUFunctionLibraryForCS:BGUGetUWorld(InnerObject) end
---@param InProcMesh UProceduralMeshComponent
---@param SectionIndex int32
---@param Vertices TArray<FVector>
---@param Triangles TArray<int32>
---@param Normals TArray<FVector>
---@param UVs TArray<FVector2D>
---@param Tangents TArray<FProcMeshTangent>
function UBGUFunctionLibraryForCS:BGUGetSectionFromProceduralMesh(InProcMesh, SectionIndex, Vertices, Triangles, Normals, UVs, Tangents) end
---@param ParticleForPlay UParticleSystem
---@return boolean
function UBGUFunctionLibraryForCS:BGUGetParticleSystemIsLooping(ParticleForPlay) end
---@param PA UPhysicsAsset
---@param BoneName FName
---@param BodyRadius float
---@return int32
function UBGUFunctionLibraryForCS:BGUGetPARadiusByBoneName(PA, BoneName, BodyRadius) end
---@param PaperSprite UPaperSprite
---@return FVector2D
function UBGUFunctionLibraryForCS:BGUGetPaperSpriteSize(PaperSprite) end
---@param MeshComp USkeletalMeshComponent
---@return int32
function UBGUFunctionLibraryForCS:BGUGetMeshPredictedLODLevel(MeshComp) end
---@param LeveleSequencePlayer ULevelSequencePlayer
---@return float
function UBGUFunctionLibraryForCS:BGUGetLevelSequenceLength(LeveleSequencePlayer) end
---@param LeveleSequencePlayer ULevelSequencePlayer
---@return float
function UBGUFunctionLibraryForCS:BGUGetLevelSequenceCurTime(LeveleSequencePlayer) end
---@param Landscape ALandscape
---@param MinX int32
---@param MinY int32
---@param MaxX int32
---@param MaxY int32
function UBGUFunctionLibraryForCS:BGUGetLandscapeExtent(Landscape, MinX, MinY, MaxX, MaxY) end
---@param WorldContextObject UObject
---@return boolean
function UBGUFunctionLibraryForCS:BGUGetIsRuntionShowCollision(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UBGUFunctionLibraryForCS:BGUGetIsInGameWorld(WorldContextObject) end
---@param WorldContextObject UObject
---@return boolean
function UBGUFunctionLibraryForCS:BGUGetIsInEditorPreview(WorldContextObject) end
---@return boolean
function UBGUFunctionLibraryForCS:BGUGetIsEditor() end
---@return boolean
function UBGUFunctionLibraryForCS:BGUGetIsBuildShipping() end
---@param DataTable UDataTable
---@param RowName FName
---@param Result FGSFloatValueTableRow
---@param ContextString FString
---@param bWarnIfRowMissing boolean
---@return boolean
function UBGUFunctionLibraryForCS:BGUGetFloatValueTableRow(DataTable, RowName, Result, ContextString, bWarnIfRowMissing) end
---@param WorldContextObject UObject
---@param IsValid boolean
---@return float
function UBGUFunctionLibraryForCS:BGUGetCurrentTime(WorldContextObject, IsValid) end
---@param AnimInstance UAnimInstance
---@return int32
function UBGUFunctionLibraryForCS:BGUGetCurActiveMontageInstID(AnimInstance) end
---@param PrimComp UPrimitiveComponent
---@param Origin FVector
---@param BoxExtent FVector
function UBGUFunctionLibraryForCS:BGUGetBounds(PrimComp, Origin, BoxExtent) end
---@param SkMeshComp USkeletalMeshComponent
---@param BoneName FName
---@param bGetWelded boolean
---@return float
function UBGUFunctionLibraryForCS:BGUGetBodyRadius(SkMeshComp, BoneName, bGetWelded) end
---@param GroupActor AActor
---@param bRecurse boolean
---@return TArray<AActor>
function UBGUFunctionLibraryForCS:BGUGetAllActorsFromGroupActor(GroupActor, bRecurse) end
---@param Stimulus FAIStimulus
---@return boolean
function UBGUFunctionLibraryForCS:BGUGetAIStimulusWasSuccessfullySensed(Stimulus) end
---@param Unit AActor
---@return FString
function UBGUFunctionLibraryForCS:BGUGetActorLevelName(Unit) end
---@param PyPath FString
function UBGUFunctionLibraryForCS:BGUExceutePyCode(PyPath) end
---@param Actor AActor
---@param bEnable boolean
function UBGUFunctionLibraryForCS:BGUEnableActorTick(Actor, bEnable) end
---@param World UWorld
---@param CenterPos FVector
---@param Rot FQuat
---@param SweepCheckShapeInfo FGSSweepCheckShapeInfo
---@param Color FColor
function UBGUFunctionLibraryForCS:BguDrawSweepCheckShapeWithColor(World, CenterPos, Rot, SweepCheckShapeInfo, Color) end
---@param World UWorld
---@param CenterPos FVector
---@param Rot FQuat
---@param SweepCheckShapeInfo FGSSweepCheckShapeInfo
function UBGUFunctionLibraryForCS:BGUDrawSweepCheckShape(World, CenterPos, Rot, SweepCheckShapeInfo) end
---@param World UWorld
---@param Start FTransform
---@param End FTransform
---@param Radius float
---@param Color FColor
function UBGUFunctionLibraryForCS:BguDrawSphereSweepWithColor(World, Start, End, Radius, Color) end
---@param World UWorld
---@param Start FTransform
---@param End FTransform
---@param Radius float
function UBGUFunctionLibraryForCS:BGUDrawSphereSweep(World, Start, End, Radius) end
---@param World UWorld
---@param LineStart FVector
---@param LineEnd FVector
---@param ArrowSize float
---@param Color FColor
---@param IsPersistentLines boolean
---@param LifeTime float
function UBGUFunctionLibraryForCS:BGUDrawLineArrowEx(World, LineStart, LineEnd, ArrowSize, Color, IsPersistentLines, LifeTime) end
---@param World UWorld
---@param LineStart FVector
---@param LineEnd FVector
---@param ArrowSize float
function UBGUFunctionLibraryForCS:BGUDrawLineArrow(World, LineStart, LineEnd, ArrowSize) end
---@param World UWorld
---@param CenterPos FVector
---@param Raidus float
---@param KeepTime float
---@param Color FColor
function UBGUFunctionLibraryForCS:BGUDrawDebugSphereEx(World, CenterPos, Raidus, KeepTime, Color) end
---@param World UWorld
---@param CenterPos FVector
---@param Raidus float
function UBGUFunctionLibraryForCS:BGUDrawDebugSphere(World, CenterPos, Raidus) end
---@param World UWorld
---@param CenterPos FVector
---@param Direction FVector
---@param Width float
---@param Length float
function UBGUFunctionLibraryForCS:BGUDrawDebugRect(World, CenterPos, Direction, Width, Length) end
---@param World UWorld
---@param CenterPos FVector
---@param Raidus float
---@param KeepTime float
---@param Color FColor
function UBGUFunctionLibraryForCS:BGUDrawDebugCircleEx(World, CenterPos, Raidus, KeepTime, Color) end
---@param World UWorld
---@param CenterPos FVector
---@param Raidus float
function UBGUFunctionLibraryForCS:BGUDrawDebugCircle(World, CenterPos, Raidus) end
---@param World UWorld
---@param CenterPos FVector
---@param Direction FVector
---@param InnerRadius float
---@param OuterRadius float
---@param HalfAngle float
---@param Color FColor
---@param Duration float
---@param Thickness float
---@param Segments int32
function UBGUFunctionLibraryForCS:BGUDrawDebugAnnularSector(World, CenterPos, Direction, InnerRadius, OuterRadius, HalfAngle, Color, Duration, Thickness, Segments) end
---@param Landscape ALandscape
---@param PackageName FString
---@param AssetName FString
---@return UTexture2D
function UBGUFunctionLibraryForCS:BGUCreateLandscapeHeightMap(Landscape, PackageName, AssetName) end
---@param SelfActor AActor
---@param OverlappedOtherActorInfos TArray<UHitMoveOverlapOtherActorCollisionsInfo>
---@param SelfWeight float
---@param PlaneNormalVector FVector
---@param MaxComputeRound int32
---@param Epsilon float
---@return FVector
function UBGUFunctionLibraryForCS:BGUComputeActorHitMovePenetration(SelfActor, OverlappedOtherActorInfos, SelfWeight, PlaneNormalVector, MaxComputeRound, Epsilon) end
---@param Obj UObject
---@param FuncName FName
function UBGUFunctionLibraryForCS:BGUBindOnSetLevelsStateFinished(Obj, FuncName) end
---@param Comp UPrimitiveComponent
---@param Obj UObject
---@param Func FName
function UBGUFunctionLibraryForCS:BGUBindOnComponentHitEvent(Comp, Obj, Func) end
---@param Comp UPrimitiveComponent
---@param Obj UObject
---@param FuncName FName
function UBGUFunctionLibraryForCS:BGUBindOnComponentEndOverlapEvent(Comp, Obj, FuncName) end
---@param Comp UPrimitiveComponent
---@param Obj UObject
---@param FuncName FName
function UBGUFunctionLibraryForCS:BGUBindOnComponentBeginOverlapEvent(Comp, Obj, FuncName) end
---@param Obj UObject
---@param FuncName FName
function UBGUFunctionLibraryForCS:BGUBindOnAllSetLevelsStateFinished(Obj, FuncName) end
---@param Actor AActor
---@param Obj UObject
---@param FuncName FName
function UBGUFunctionLibraryForCS:BGUBindOnActorEndOverlapEvent(Actor, Obj, FuncName) end
---@param Actor AActor
---@param Obj UObject
---@param FuncName FName
function UBGUFunctionLibraryForCS:BGUBindOnActorBeginOverlapEvent(Actor, Obj, FuncName) end
---@param Notify UObject
---@param Asset UObject
function UBGUFunctionLibraryForCS:AddNotifyPreloadedAsset(Notify, Asset) end


---@class UBGUHiddenDistanceComponent : UActorComponent
---@field SupportComponents TArray<TSoftClassPtr<UPrimitiveComponent>>
---@field FadeOutDistance float
---@field bFadeOut boolean
---@field SwitchedComponents TArray<TSoftObjectPtr<UPrimitiveComponent>>
UBGUHiddenDistanceComponent = {}



---@class UBGULevelSequenceInstanceData : UDefaultLevelSequenceInstanceData
UBGULevelSequenceInstanceData = {}


---@class UBGULevelStreamingPauseSection : UMovieSceneSection
UBGULevelStreamingPauseSection = {}


---@class UBGULevelStreamingPauseTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UBGULevelStreamingPauseTrack = {}



---@class UBGULevelStreamingPauseTrackInstance : UMovieSceneTrackInstance
UBGULevelStreamingPauseTrackInstance = {}


---@class UBGULocalFluid2DComponent : UActorComponent
---@field toggleSim boolean
---@field bPostProcessCollisionData boolean
---@field blueprintDrivenParameters boolean
---@field bMovedCheck boolean
---@field blocationCheck boolean
---@field bLocalSim boolean
---@field bHighQualitySim boolean
---@field bSimAreaClamp boolean
---@field MaxIteration int32
---@field SimulationResX int32
---@field SimulationResY int32
---@field SimAreaSizeInCM float
---@field SnappedPosParameterName FName
---@field dynamicSDFMpc UMaterialParameterCollection
---@field worldOffsetThreshold float
---@field moveThreadhold float
---@field edgeExtendSize float
---@field bExportVeloDensity boolean
---@field bExportPressureDivergence boolean
---@field veloDensityOutput UTextureRenderTarget2D
---@field pressureDivergenceOutput UTextureRenderTarget2D
---@field CollisionQueryMaterial UMaterialInterface
---@field PPCollisionQueryMaterial UMaterialInterface
---@field CompositeMaterial UMaterialInterface
---@field AdvectMaterial UMaterialInterface
---@field DivergenceMaterial UMaterialInterface
---@field PressureStep1Material UMaterialInterface
---@field PressureStep2Material UMaterialInterface
---@field BrushPuncture float
---@field VeloDirNoise float
---@field Speed float
---@field VeloFromSimAreaMotion float
---@field SimEdgeBouncyness float
---@field FadeDensityAtSimEdge float
---@field VeloDirNoiseSize float
---@field VeloDirNoiseSpeed float
---@field VeloOffsetX float
---@field VeloOffsetY float
---@field VeloFromBrushMotion float
---@field VeloStrength float
---@field VeloRotate float
---@field VeloAmpNoise float
---@field InputFeedback float
---@field FlowFeedback float
---@field Divergence float
---@field BrushSize float
---@field BrushStrength float
---@field EraserMode float
---@field BrushHardness float
---@field DensityTemplate UTexture2D
---@field VelocityTemplate UTexture2D
---@field VelocityOffsetSpeed float
---@field EdgeMaskWidth float
---@field DensityTxtMult float
---@field DensityTxtScale float
---@field DensityTxtOffsetX float
---@field DensityTxtOffsetY float
---@field BrushNoise float
---@field VeloInputTile float
---@field DensityInputNoiseAmp float
---@field DensityInputNoiseOffset float
---@field DensityInputNoiseTile float
---@field BrushRnd float
---@field worldOffsetX float
---@field worldOffsetY float
---@field RT_CollisionResult UTextureRenderTarget2D
---@field RT_PPCollisionResult UTextureRenderTarget2D
---@field RT_Advection UTextureRenderTarget2D
---@field RT_PressureDivergence UTextureRenderTarget2D
---@field RT_Composite UTextureRenderTarget2D
---@field RT_PressureDivergenceTemp UTextureRenderTarget2D
---@field CollisionQueryMaterialInstance UMaterialInstanceDynamic
---@field PPCollisionQueryMaterialInstance UMaterialInstanceDynamic
---@field CompositeMaterialInstance UMaterialInstanceDynamic
---@field AdvectMaterialInstance UMaterialInstanceDynamic
---@field DivergenceMaterialInstance UMaterialInstanceDynamic
---@field PressureStep1MaterialInstance UMaterialInstanceDynamic
---@field PressureStep2MaterialInstance UMaterialInstanceDynamic
UBGULocalFluid2DComponent = {}

---@return UTextureRenderTarget2D
function UBGULocalFluid2DComponent:GetVeloDensityTexture() end
---@return UTextureRenderTarget2D
function UBGULocalFluid2DComponent:GetPressureDivergenceTexture() end


---@class UBGUPlayMontageCallbackProxy : UObject
---@field OnCompleted FBGUPlayMontageCallbackProxyOnCompleted
---@field OnBlendOut FBGUPlayMontageCallbackProxyOnBlendOut
---@field OnInterrupted FBGUPlayMontageCallbackProxyOnInterrupted
---@field OnNotifyBegin FBGUPlayMontageCallbackProxyOnNotifyBegin
---@field OnNotifyEnd FBGUPlayMontageCallbackProxyOnNotifyEnd
UBGUPlayMontageCallbackProxy = {}

---@param InSkeletalMeshComponent USkeletalMeshComponent
---@param MontageToPlay UAnimMontage
---@param PlayRate float
---@param StartingPosition float
---@param bSnapShot boolean
---@param StartingSection FName
---@param ExceptAdditiveSlot FName
---@return boolean
function UBGUPlayMontageCallbackProxy:PlayMontage(InSkeletalMeshComponent, MontageToPlay, PlayRate, StartingPosition, bSnapShot, StartingSection, ExceptAdditiveSlot) end
---@param NotifyName FName
---@param BranchingPointNotifyPayload FBranchingPointNotifyPayload
function UBGUPlayMontageCallbackProxy:OnNotifyEndReceived(NotifyName, BranchingPointNotifyPayload) end
---@param NotifyName FName
---@param BranchingPointNotifyPayload FBranchingPointNotifyPayload
function UBGUPlayMontageCallbackProxy:OnNotifyBeginReceived(NotifyName, BranchingPointNotifyPayload) end
---@param Montage UAnimMontage
---@param bInterrupted boolean
function UBGUPlayMontageCallbackProxy:OnMontageEnded(Montage, bInterrupted) end
---@param Montage UAnimMontage
---@param bInterrupted boolean
function UBGUPlayMontageCallbackProxy:OnMontageBlendingOut(Montage, bInterrupted) end
---@param ReqIdx int32
---@param MontageToPlay UAnimMontage
---@return UBGUPlayMontageCallbackProxy
function UBGUPlayMontageCallbackProxy:CreateProxyObjectForPlayMontage(ReqIdx, MontageToPlay) end


---@class UBGUProjectileMovementComponent : UProjectileMovementComponent
---@field bForceEnableSimulateWithoutBounce boolean
---@field bComputeMoveDeltaOnClient boolean
---@field RepLocation FVector
UBGUProjectileMovementComponent = {}



---@class UBGURootMotionFollowMovementComponent : UBGUCharacterMovementComponent
UBGURootMotionFollowMovementComponent = {}

---@return UBGUCharacterMovementComponent
function UBGURootMotionFollowMovementComponent:GetMasterMoveComp() end


---@class UBGURootMotionSourceObject_Base : UObject
---@field CharacterMovement UCharacterMovementComponent
UBGURootMotionSourceObject_Base = {}

function UBGURootMotionSourceObject_Base:RemoveRootMotionSource() end
---@param MoveComp UCharacterMovementComponent
---@param InInstanceName FName
function UBGURootMotionSourceObject_Base:Init(MoveComp, InInstanceName) end


---@class UBGURootMotionSourceObject_ConstantForce : UBGURootMotionSourceObject_Base
UBGURootMotionSourceObject_ConstantForce = {}

---@param WorldDirection FVector
---@param Strength float
---@param Duration float
---@param bIsAdditive boolean
---@param StrengthOverTime UCurveFloat
---@param FinishVelocityMode ERootMotionFinishVelocityMode
---@param FinishSetVelocity FVector
---@param FinishClampVelocity float
---@param bEnableGravity boolean
---@return boolean
function UBGURootMotionSourceObject_ConstantForce:ApplyRootMotionSource(WorldDirection, Strength, Duration, bIsAdditive, StrengthOverTime, FinishVelocityMode, FinishSetVelocity, FinishClampVelocity, bEnableGravity) end


---@class UBGUSelectUtil : UBlueprintFunctionLibrary
UBGUSelectUtil = {}

---@param WorldContext UObject
---@param SphereCenter FVector
---@param Radius float
---@param OutArray TArray<ABGUCharacter>
---@param QueryChannel ECollisionChannel
---@return int32
function UBGUSelectUtil:SphereOverlapBGUCharacters(WorldContext, SphereCenter, Radius, OutArray, QueryChannel) end
---@param WorldContextObject UObject
---@param OutActors TArray<AActor>
---@param TargetBase AActor
---@param TargetCount int32
---@param TargetFilter int32
---@param Params TArray<int32>
---@return int32
function UBGUSelectUtil:SelectBGUCharactersInRect(WorldContextObject, OutActors, TargetBase, TargetCount, TargetFilter, Params) end
---@param WorldContextObject UObject
---@param OutActors TArray<AActor>
---@param TargetBase AActor
---@param TargetCount int32
---@param TargetFilter int32
---@param Params TArray<int32>
---@return int32
function UBGUSelectUtil:SelectBGUCharactersInCylinder(WorldContextObject, OutActors, TargetBase, TargetCount, TargetFilter, Params) end
---@param WorldContextObject UObject
---@param OutActors TArray<AActor>
---@param TargetBase AActor
---@param TargetCount int32
---@param TargetFilter int32
---@param Params TArray<int32>
---@return int32
function UBGUSelectUtil:SelectBGUCharactersInCircle(WorldContextObject, OutActors, TargetBase, TargetCount, TargetFilter, Params) end
---@param WorldContextObject UObject
---@param StartTrace FVector
---@param EndTrace FVector
---@param Radius float
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bDebug boolean
---@param HitResultList TArray<FHitResultSimple>
---@return int32
function UBGUSelectUtil:MultiSphereTraceForObjects(WorldContextObject, StartTrace, EndTrace, Radius, ObjectTypes, bDebug, HitResultList) end
---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param ActorsToIgnore TArray<AActor>
---@param DrawDebugType EDrawDebugTrace::Type
---@param OutHit FHitResult
---@param bIgnoreSelf boolean
---@param TraceColor FLinearColor
---@param TraceHitColor FLinearColor
---@param DrawTime float
---@return boolean
function UBGUSelectUtil:LineTraceSingleForObjects(WorldContextObject, Start, End, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHit, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end
---@param WorldContextObject UObject
---@param StartTrace FVector
---@param EndTrace FVector
---@param QueryChnl ETraceTypeQuery
---@param bDebug boolean
---@param HitResult FHitResultSimple
---@param Ingnores TArray<AActor>
---@param bTraceComplex boolean
---@return int32
function UBGUSelectUtil:LineTraceSimple(WorldContextObject, StartTrace, EndTrace, QueryChnl, bDebug, HitResult, Ingnores, bTraceComplex) end
---@param WorldContextObject UObject
---@param StartTrace FVector
---@param EndTrace FVector
---@param QueryChnl ETraceTypeQuery
---@param bDebug boolean
---@param HitResult FHitResultSimple
---@param Ingnores TArray<AActor>
---@param bTraceComplex boolean
---@return int32
function UBGUSelectUtil:LineTraceOnlyCheck(WorldContextObject, StartTrace, EndTrace, QueryChnl, bDebug, HitResult, Ingnores, bTraceComplex) end
---@param WorldContextObject UObject
---@param StartTrace FVector
---@param EndTrace FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bDebug boolean
---@param HitResultList TArray<FHitResultSimple>
---@return int32
function UBGUSelectUtil:LineTraceMultiByObjType(WorldContextObject, StartTrace, EndTrace, ObjectTypes, bDebug, HitResultList) end
---@param WorldContextObject UObject
---@param StartTrace FVector
---@param EndTrace FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bDebug boolean
---@param HitResult FHitResultSimple
---@param bTraceComplex boolean
---@return int32
function UBGUSelectUtil:LineTraceForObjectsTypeSimple(WorldContextObject, StartTrace, EndTrace, ObjectTypes, bDebug, HitResult, bTraceComplex) end
---@param WorldContextObject UObject
---@param StartTrace FVector
---@param EndTrace FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bDebug boolean
---@param HitResult FHitResultSimple
---@return int32
function UBGUSelectUtil:LineTraceForObjects(WorldContextObject, StartTrace, EndTrace, ObjectTypes, bDebug, HitResult) end
---@param PlayerCtrl APlayerController
---@param QueryChnl ETraceTypeQuery
---@param bTraceComplex boolean
---@param HitResult FHitResultSimple
---@return boolean
function UBGUSelectUtil:GetHitUnderCursor(PlayerCtrl, QueryChnl, bTraceComplex, HitResult) end
---@param WorldContextObject UObject
---@param BoxPos FVector
---@param Rot FQuat
---@param BoxExtent FVector
---@param OutArray TArray<ABGUCharacter>
---@return int32
function UBGUSelectUtil:BoxOverlapV2BGUCharacters(WorldContextObject, BoxPos, Rot, BoxExtent, OutArray) end
---@param WorldContextObject UObject
---@param BoxPos FVector
---@param BoxExtent FVector
---@param OutArray TArray<ABGUCharacter>
---@param QueryChannel ECollisionChannel
---@return int32
function UBGUSelectUtil:BoxOverlapBGUCharacters(WorldContextObject, BoxPos, BoxExtent, OutArray, QueryChannel) end


---@class UBGUSimpleGamePlayTraceObject : UObject
UBGUSimpleGamePlayTraceObject = {}

---@param DeltaTime float
function UBGUSimpleGamePlayTraceObject:OnTick(DeltaTime) end
function UBGUSimpleGamePlayTraceObject:OnShutdown() end
function UBGUSimpleGamePlayTraceObject:OnInit() end
---@param Name FString
---@return FTraceStatResult
function UBGUSimpleGamePlayTraceObject:FindTraceStatResult(Name) end
---@param Name FString
function UBGUSimpleGamePlayTraceObject:AddTraceStatByName(Name) end


---@class UBGUSpiderMovementComponent : UBGUCharacterMovementComponent
---@field bIsOnPlatform boolean
UBGUSpiderMovementComponent = {}



---@class UBGUSpringArmComponent : USpringArmComponent
---@field bEnableHideMeshTrace boolean
---@field SpringBackSpeed float
---@field CameraLagMaxDistance3Axis FVector
---@field CameraLagSpeed3Axis FVector
---@field CameraLagInverseSpeed3Axis FVector
---@field CameraLagUseMaxOffset float
UBGUSpringArmComponent = {}

function UBGUSpringArmComponent:ResetArmLengthLerpCache() end
---@param OutPreviousDesiredLoc FVector
---@param OutPreviousArmOrigin FVector
---@param OutPreviousDesiredRot FRotator
function UBGUSpringArmComponent:GetPreviousValues(OutPreviousDesiredLoc, OutPreviousArmOrigin, OutPreviousDesiredRot) end
---@param Current FVector
---@param Target FVector
---@param DeltaTime float
---@param SmoothSpeed FVector
---@return FVector
function UBGUSpringArmComponent:CalcSmoothLocation(Current, Target, DeltaTime, SmoothSpeed) end
---@param OriginArmLocation FVector
---@param DesiredArmLocation FVector
---@param HitResult FHitResult
---@param DeltaTime float
---@return FVector
function UBGUSpringArmComponent:BlendLocationsInCS(OriginArmLocation, DesiredArmLocation, HitResult, DeltaTime) end


---@class UBGUSpringArmSettings : UDeveloperSettings
---@field SurfaceHeightMap TMap<EPhysicalSurface, float>
---@field SurfaceMaxHeight float
---@field MaxHeightAboveCharacter float
---@field MixArmLengthTolerance float
---@field bDrawDebugSphere boolean
UBGUSpringArmSettings = {}



---@class UBGUWCStreamingFuncLib : UBlueprintFunctionLibrary
UBGUWCStreamingFuncLib = {}

---@param WorldContext UObject
---@param bBlockTillComplete boolean
function UBGUWCStreamingFuncLib:UpdateStreamingState(WorldContext, bBlockTillComplete) end
---@param InActor AActor
function UBGUWCStreamingFuncLib:UnregisterFromStreamingSource(InActor) end
---@param WorldContext UObject
---@param SpawnLocation FVector
function UBGUWCStreamingFuncLib:SpawnStreamingSource(WorldContext, SpawnLocation) end
---@param ViewLocation FVector
---@param Duration float
function UBGUWCStreamingFuncLib:SetStreamingManagerViewSource(ViewLocation, Duration) end
---@param InWorldContext UObject
---@param InTargetLevelNames TArray<FString>
---@param InTargetState EGSLevelState
---@param InOperationID int32
---@param bBlockOnLoad boolean
---@return TArray<FGSSetLevelStateFailedInfo>
function UBGUWCStreamingFuncLib:SetLevelsStateByNames(InWorldContext, InTargetLevelNames, InTargetState, InOperationID, bBlockOnLoad) end
---@param InWorldContext UObject
---@param InTargetLevelNameOrKeyword FString
---@param InTargetState EGSLevelState
---@param InOperationID int32
---@param bKeywordMatch boolean
---@param bBlockOnLoad boolean
---@return TArray<FGSSetLevelStateFailedInfo>
function UBGUWCStreamingFuncLib:SetLevelsState(InWorldContext, InTargetLevelNameOrKeyword, InTargetState, InOperationID, bKeywordMatch, bBlockOnLoad) end
---@param InActor AActor
function UBGUWCStreamingFuncLib:RegisterAsStreamingSource(InActor) end
---@param InWorldContext UObject
---@return TMap<FString, FString>
function UBGUWCStreamingFuncLib:QueryProcessingStreamingLevels(InWorldContext) end
---@param InWorldContext UObject
---@param InExcludedLevelKeywords TArray<FString>
function UBGUWCStreamingFuncLib:PauseDistanceStreaming(InWorldContext, InExcludedLevelKeywords) end
---@param InWorldContext UObject
---@param InTargetLayerName FString
---@param InTargetLODIndex int32
---@param InTargetScaleFactor float
---@param bBlockTillStreamingCompleted boolean
function UBGUWCStreamingFuncLib:ModifyStreamingDistanceScaleByStreamingLayer(InWorldContext, InTargetLayerName, InTargetLODIndex, InTargetScaleFactor, bBlockTillStreamingCompleted) end
---@param InWorldContext UObject
---@param InTargetLevelName FString
---@return boolean
function UBGUWCStreamingFuncLib:IsLevelStreamable(InWorldContext, InTargetLevelName) end
---@param InWorldContext UObject
---@return int32
function UBGUWCStreamingFuncLib:GetProcessingStreamingLevelNum(InWorldContext) end
---@param InWorldContext UObject
---@param InLevelNameKeyword FString
---@return TArray<FString>
function UBGUWCStreamingFuncLib:GetLevelNamesByKeyword(InWorldContext, InLevelNameKeyword) end
---@param InWorldContext UObject
---@param OutLevelNames TArray<FString>
---@return int32
function UBGUWCStreamingFuncLib:GetLevelNames(InWorldContext, OutLevelNames) end
---@param InWorldContext UObject
---@param LevelNames TArray<FString>
---@param OutLevelStreamingList TMap<FString, uint8>
---@param OutCosideredUpdateSet TSet<FString>
function UBGUWCStreamingFuncLib:GetLevelCurrentStateAndIsConsideredUpdate(InWorldContext, LevelNames, OutLevelStreamingList, OutCosideredUpdateSet) end
---@param InWorldContext UObject
---@param OutLevelStreamingList TMap<FString, uint8>
---@param bIgnoreWCTile boolean
---@return int32
function UBGUWCStreamingFuncLib:GetAllLevelCurrentState(InWorldContext, OutLevelStreamingList, bIgnoreWCTile) end
---@param InWorldContext UObject
function UBGUWCStreamingFuncLib:ForceLoadAllStreamingLevels(InWorldContext) end
---@param InWorldContext UObject
---@param InExcludedLevelKeywords TArray<FString>
function UBGUWCStreamingFuncLib:FlushAllLevelState(InWorldContext, InExcludedLevelKeywords) end
---@param InActor AActor
function UBGUWCStreamingFuncLib:EnableStreamingSource(InActor) end
---@param InActor AActor
function UBGUWCStreamingFuncLib:DisableStreamingSource(InActor) end
---@param WorldContext UObject
function UBGUWCStreamingFuncLib:DestroyGSWCWorldStreamingSources(WorldContext) end
---@param InWorldContext UObject
---@param InTargetLevelName FString
function UBGUWCStreamingFuncLib:CheckLevelState(InWorldContext, InTargetLevelName) end
---@param InWorldContext UObject
function UBGUWCStreamingFuncLib:CacheWorldCompositionStreamingLayers(InWorldContext) end
---@param InWorldContext UObject
function UBGUWCStreamingFuncLib:CacheWorldCompositionLevelNames(InWorldContext) end


---@class UBGU_AIMover : UObject
---@field FBUE_OnMoveComplete FBGU_AIMoverFBUE_OnMoveComplete
---@field OwnerCtrl AController
---@field PathFollowingComponent UPathFollowingComponent
UBGU_AIMover = {}

function UBGU_AIMover:ResetRequest() end
---@param request FBGU_AIMoverRequest
function UBGU_AIMover:MoveTo(request) end
---@return boolean
function UBGU_AIMover:IsRequestValid() end
---@return boolean
function UBGU_AIMover:IsOutOfRange() end
---@param OwnerAICtrl AController
function UBGU_AIMover:Init(OwnerAICtrl) end
---@return int32
function UBGU_AIMover:GetRequestID() end
---@return UPathFollowingComponent
function UBGU_AIMover:GetPathFollowingComponent() end
---@return EPathFollowingStatus::Type
function UBGU_AIMover:GetMoveStatus() end
function UBGU_AIMover:AbortMove() end


---@class UBGWActorVisibilityVolumeManager : UObject
---@field ActorShownVolumes TArray<ABGWActorVisibilityVolume>
---@field ActorHiddenVolumes TArray<ABGWActorVisibilityVolume>
UBGWActorVisibilityVolumeManager = {}



---@class UBGWAssetLoader : UBlueprintFunctionLibrary
UBGWAssetLoader = {}

---@param LoadList TArray<FSoftObjectPath>
---@param outObjList TArray<UObject>
---@return int32
function UBGWAssetLoader:SyncLoadObjects(LoadList, outObjList) end
---@param Path FSoftObjectPath
---@return UObject
function UBGWAssetLoader:SyncLoadObject(Path) end
---@param LoadList TArray<FSoftObjectPath>
---@param request UBGWAssetLoaderRequest
---@param Priority int32
function UBGWAssetLoader:AsyncLoadObjects(LoadList, request, Priority) end
---@param LoadPath FSoftObjectPath
---@param request UBGWAssetLoaderRequest
---@param Priority int32
function UBGWAssetLoader:AsyncLoadObject(LoadPath, request, Priority) end
---@param LoadPath FSoftClassPath
---@param request UBGWAssetLoaderRequest
---@param Priority int32
function UBGWAssetLoader:AsyncLoadClass(LoadPath, request, Priority) end


---@class UBGWAssetLoaderRequest : UObject
UBGWAssetLoaderRequest = {}

---@return boolean
function UBGWAssetLoaderRequest:WasCanceled() end
---@param Timeout float
---@param bStartStalledHandles boolean
---@return boolean
function UBGWAssetLoaderRequest:WaitUntilComplete(Timeout, bStartStalledHandles) end
---@return boolean
function UBGWAssetLoaderRequest:IsStalled() end
---@return boolean
function UBGWAssetLoaderRequest:IsLoadingInProgress() end
---@return boolean
function UBGWAssetLoaderRequest:IsCombinedHandle() end
---@return boolean
function UBGWAssetLoaderRequest:IsActive() end
---@return boolean
function UBGWAssetLoaderRequest:HasLoadCompletedOrStalled() end
---@return boolean
function UBGWAssetLoaderRequest:HasLoadCompleted() end
---@param AssetList TArray<FSoftObjectPath>
function UBGWAssetLoaderRequest:GetRequestedAssets(AssetList) end
---@return float
function UBGWAssetLoaderRequest:GetProgress() end
---@return int32
function UBGWAssetLoaderRequest:GetPriority() end
---@param LoadedCount int32
---@param RequestedCount int32
function UBGWAssetLoaderRequest:GetLoadedCount(LoadedCount, RequestedCount) end
---@param LoadedAssets TArray<UObject>
function UBGWAssetLoaderRequest:GetLoadedAssets(LoadedAssets) end
---@return FString
function UBGWAssetLoaderRequest:GetDebugName() end
function UBGWAssetLoaderRequest:ExecuteCS() end
---@return boolean
function UBGWAssetLoaderRequest:Cancel() end


---@class UBGWCameraGroupVolumeManager : UBGWVolumeManagerBase
---@field OnSwitchCameraGroupTo FBGWCameraGroupVolumeManagerOnSwitchCameraGroupTo
---@field bEnableCameraGroupManager boolean
---@field TickIntervalMs int32
---@field LastFrameTargetGroupId int32
---@field PlayerController APlayerController
---@field TargetVolume ABGWCameraGroupVolume
---@field TargetAlpha float
---@field TickIntervalSeconds float
---@field TickTime float
---@field LastFrameAlpha float
UBGWCameraGroupVolumeManager = {}

---@param TargetCameraGroupId int32
---@param alpha float
---@param BlendTime float
function UBGWCameraGroupVolumeManager:OnSwitchCameraGroupTo__DelegateSignature(TargetCameraGroupId, alpha, BlendTime) end
---@param WorldContext UObject
---@return UBGWCameraGroupVolumeManager
function UBGWCameraGroupVolumeManager:Get(WorldContext) end


---@class UBGWCellSpacePartitionSubSystem : UWorldSubsystem
UBGWCellSpacePartitionSubSystem = {}


---@class UBGWCppExport : UBlueprintFunctionLibrary
UBGWCppExport = {}

---@return TMap<FString, FIntPtr>
function UBGWCppExport:GetAllFuncAsMap() end


---@class UBGWDataAsset : UPrimaryDataAsset
UBGWDataAsset = {}


---@class UBGWDeviceProfile : UDeviceProfile
UBGWDeviceProfile = {}


---@class UBGWFunctionLibrary : UBlueprintFunctionLibrary
UBGWFunctionLibrary = {}

---@param WorldContext UObject
---@param sourceNames FString
---@param destNames FString
---@param levelPrefix FString
function UBGWFunctionLibrary:RetargetLevelStreamingLevelNames(WorldContext, sourceNames, destNames, levelPrefix) end
---@param WorldContextObject UObject
function UBGWFunctionLibrary:ResumeBGWVolumeLevelStreaming(WorldContextObject) end
---@param WorldContextObject UObject
function UBGWFunctionLibrary:PauseBGWVolumeLevelStreaming(WorldContextObject) end
---@param InStreamingVolumes TArray<ABGWLevelStreamingVolume>
function UBGWFunctionLibrary:MaintainVolumesContainYuanjing(InStreamingVolumes) end
---@param WorldContextObject UObject
---@return boolean
function UBGWFunctionLibrary:IsDistanceStreamingValid(WorldContextObject) end
---@param LevelStreaming ULevelStreaming
---@return FString
function UBGWFunctionLibrary:GetLevelStreamingAssetName(LevelStreaming) end
---@param WorldContextObject UObject
---@return UBGW_EventCollection
function UBGWFunctionLibrary:GetBGWEvents(WorldContextObject) end
---@param WorldContextObject UObject
---@param IsCameraMoveable boolean
function UBGWFunctionLibrary:BGWSetIsCameraMoveableWhenPaused(WorldContextObject, IsCameraMoveable) end
---@param WorldContextObject UObject
---@param bPaused boolean
function UBGWFunctionLibrary:BGWSetGamePaused(WorldContextObject, bPaused) end
---@param WorldContextObject UObject
---@param bEnabled boolean
function UBGWFunctionLibrary:BGWSetAllLevelStreamingVolumeEnabled(WorldContextObject, bEnabled) end
---@param WorldContextObject UObject
---@param LoadList TArray<FSoftObjectPath>
---@param CallBackDelegate FBGWRequestAsyncLoadCallBackDelegate
function UBGWFunctionLibrary:BGWRequestAsyncLoad(WorldContextObject, LoadList, CallBackDelegate) end
---@param WorldContextObject UObject
---@param InLevelName FName
function UBGWFunctionLibrary:BGWRemoveLevelFromWhiteList(WorldContextObject, InLevelName) end
---@param WorldContextObject UObject
---@param InLevelName FName
function UBGWFunctionLibrary:BGWRemoveLevelFromBlackList(WorldContextObject, InLevelName) end
---@param WorldContextObject UObject
---@param OverrideViewLocation FVector
---@param bUseOverrideViewLocation boolean
function UBGWFunctionLibrary:BGWProcessLevelStreamingVolumes(WorldContextObject, OverrideViewLocation, bUseOverrideViewLocation) end
---@param WorldContextObject UObject
---@param OutStreamingLevels TMap<ULevelStreaming, FGSStreamingLevelLoadSetting>
function UBGWFunctionLibrary:BGWGetStatusChangedStreamingLevels(WorldContextObject, OutStreamingLevels) end
---@param WorldContextObject UObject
---@return boolean
function UBGWFunctionLibrary:BGWGetIsCameraMoveableWhenPaused(WorldContextObject) end
---@return TArray<FString>
function UBGWFunctionLibrary:BGWGetAlwaysCookPathList() end
---@param WorldContextObject UObject
---@return TArray<ULevelStreaming>
function UBGWFunctionLibrary:BGWGetAllStreamingLevels(WorldContextObject) end
---@param Package UPackage
---@return UWorld
function UBGWFunctionLibrary:BGWFindWorldInPackage(Package) end
---@param WorldContextObject UObject
---@param InLevelName FName
---@param InUsage EBGWStreamingVolumeUsage
function UBGWFunctionLibrary:BGWAddLevelToWhiteList(WorldContextObject, InLevelName, InUsage) end
---@param WorldContextObject UObject
---@param InLevelName FName
function UBGWFunctionLibrary:BGWAddLevelToBlackList(WorldContextObject, InLevelName) end


---@class UBGWGameInstance : UGameInstance
---@field MainActorWorld UWorldActorContainer
---@field VolumeMgr UBGWVolumeManager
---@field Events UBGW_EventCollection
---@field TickActor_PreAnimation ABGW_GameInstanceTicker
---@field TickActor_PrePhysics ABGW_GameInstanceTicker
---@field TickActor_BeforeStartPhysics ABGW_GameInstanceTicker
---@field TickActor_DuringPhysics ABGW_GameInstanceTicker
---@field TickActor_BeforePostPhysics ABGW_GameInstanceTicker
---@field TickActor_PostPhysics ABGW_GameInstanceTicker
---@field TickActor_BeforePostUpdateWork ABGW_GameInstanceTicker
---@field TickActor_PostUpdateWork ABGW_GameInstanceTicker
---@field TickActor_PrePhysics_EvenWhenPaused ABGW_GameInstanceTickerEvenWhenPaused
---@field TickActor_BeforePostUpdateWork_EvenWhenPaused ABGW_GameInstanceTickerEvenWhenPaused
---@field AssetLoader UBGWAssetLoader
UBGWGameInstance = {}

---@param Option FString
---@return boolean
function UBGWGameInstance:TravelURLHasOption(Option) end
---@return boolean
function UBGWGameInstance:TravelURLHasHost() end
---@param UseSlateThread boolean
function UBGWGameInstance:SwitchLoadingScreenThread(UseSlateThread) end
---@param StartType EStartGameInstanceTypeForCS
function UBGWGameInstance:StartGameInstanceForCS(StartType) end
function UBGWGameInstance:RequestFadeAway() end
---@param MaskTexture UTexture2D
function UBGWGameInstance:RegisterLoadingTipsMask(MaskTexture) end
---@param TipsInfo FLoadingTipsInfo
function UBGWGameInstance:RegisterLoadingTipsInfo(TipsInfo) end
---@param ChapterInfo FChapterInfo
function UBGWGameInstance:RegisterChapterInfo(ChapterInfo) end
---@param DeltaSeconds float
---@param TickGroup int32
function UBGWGameInstance:ReceiveTickEvenWhenPaused(DeltaSeconds, TickGroup) end
---@param DeltaSeconds float
---@param TickGroup int32
function UBGWGameInstance:ReceiveTick(DeltaSeconds, TickGroup) end
function UBGWGameInstance:ProcessNianHuiLogic() end
function UBGWGameInstance:PrepareFadeAway() end
---@param UseSlateThread boolean
---@param LoadingScreenType EGSLoadingScreenType
function UBGWGameInstance:OpenLoadingScreen(UseSlateThread, LoadingScreenType) end
---@param World UWorld
function UBGWGameInstance:OnWorldTickStartCS(World) end
---@param OldWorld UWorld
---@param NewWorld UWorld
function UBGWGameInstance:OnWorldChangedCS(OldWorld, NewWorld) end
---@param World UWorld
function UBGWGameInstance:OnPostActorTickCS(World) end
---@param NewMatchState FName
function UBGWGameInstance:OnGameModeMatchStateSetCS(NewMatchState) end
---@return boolean
function UBGWGameInstance:IsToggleLoadingTipsFinish() end
---@return boolean
function UBGWGameInstance:IsLoadingScreenFadeAwayFinish() end
---@return UWorld
function UBGWGameInstance:GetWorldForCS() end
---@return FString
function UBGWGameInstance:GetTravelURLHost() end
---@return FString
function UBGWGameInstance:GetTravelURLForCS() end
---@return double
function UBGWGameInstance:GetTimeInMSSinceLoadingOpen() end
---@return TSubclassOf<UOnlineSession>
function UBGWGameInstance:GetOnlineSessionClassCS() end
---@return TArray<int32>
function UBGWGameInstance:GetLastUseTips() end
---@return ULocalPlayer
function UBGWGameInstance:GetFirstGamePlayerForCS() end
---@return UBGW_EventCollection
function UBGWGameInstance:GetEvents() end
---@return EGSLoadingScreenType
function UBGWGameInstance:GetCurLoadingScreenType() end
---@return EGSLoadingScreenState
function UBGWGameInstance:GetCurLoadingScreenState() end
function UBGWGameInstance:CloseLoadingScreen() end
---@return boolean
function UBGWGameInstance:CanFadeAway() end
---@param InputComponent UGSInputComponent
function UBGWGameInstance:BeginToggleLoadingTips(InputComponent) end


---@class UBGWGamePlayTraceObject : UObject
UBGWGamePlayTraceObject = {}

---@param TraceTaskName FString
function UBGWGamePlayTraceObject:TraceStart(TraceTaskName) end
function UBGWGamePlayTraceObject:TraceEnd() end
function UBGWGamePlayTraceObject:StopFetchTick() end
function UBGWGamePlayTraceObject:StartFetchTick() end
---@return FString
function UBGWGamePlayTraceObject:RecordFrameRate_Stop() end
function UBGWGamePlayTraceObject:RecordFrameRate_Start() end
---@param DeltaTime float
function UBGWGamePlayTraceObject:OnTick(DeltaTime) end
function UBGWGamePlayTraceObject:OnShutdown() end
function UBGWGamePlayTraceObject:OnInit() end
---@return boolean
function UBGWGamePlayTraceObject:GetEnableTraceing() end
---@return boolean
function UBGWGamePlayTraceObject:CanShutdown() end


---@class UBGWLevelStreamingStateVolumeManager : UObject
---@field OnRequestUpdateLevelState FBGWLevelStreamingStateVolumeManagerOnRequestUpdateLevelState
---@field CurrentActiveVolumes TArray<FString>
---@field RegisteredVolumePtrs TArray<TSoftObjectPtr<AVolume>>
---@field CurrentActiveVolumePtrs TArray<TSoftObjectPtr<AVolume>>
---@field PlayerController APlayerController
UBGWLevelStreamingStateVolumeManager = {}

function UBGWLevelStreamingStateVolumeManager:UpdateCurrentActiveVolumes() end
function UBGWLevelStreamingStateVolumeManager:OnRequestUpdateLevelState__DelegateSignature() end
---@param WorldContext UObject
---@return UBGWLevelStreamingStateVolumeManager
function UBGWLevelStreamingStateVolumeManager:Get(WorldContext) end


---@class UBGWLevelStreamingVolumeManager : UObject
---@field LevelStreamingVolumes TMap<FName, FBGWLevelStreamingVolumeArr>
---@field ForceHideLevelStreamingVolumes TMap<FName, FBGWLevelStreamingVolumeArr>
---@field TileLevelStreamingGroupWithKeyWords TMap<FName, UBGWTileLevelGroup>
---@field ForceHideGroupWithKeyWords TMap<FName, UBGWTileLevelGroup>
---@field DisabledDistanceStreamingLevels TArray<ULevelStreaming>
---@field LevelStreamingObjectsWithVolumes TArray<ULevelStreaming>
---@field LevelStreamingObjectsWithVolumesOtherThanBlockingLoad TSet<ULevelStreaming>
---@field StatusChangedStreamingLevels TMap<ULevelStreaming, FGSStreamingLevelLoadSetting>
---@field LevelStreamingWhiteList TMap<FName, FBGWVisibleLevelStreamingSettings>
---@field LevelStreamingBlackList TSet<FName>
UBGWLevelStreamingVolumeManager = {}



---@class UBGWObjectExtend : UObject
UBGWObjectExtend = {}

---@param MemberName FString
---@param PropertyName FString
function UBGWObjectExtend:OnPropertyChanged(MemberName, PropertyName) end


---@class UBGWOnlineAchievement : UBGWOnlineInterface
UBGWOnlineAchievement = {}

---@param writeObjKey FString
---@param writeObjValue double
function UBGWOnlineAchievement:WriteAchievement(writeObjKey, writeObjValue) end
---@param StatName FString
---@param StatValue int32
function UBGWOnlineAchievement:UpdateStat(StatName, StatValue) end
function UBGWOnlineAchievement:ReadAchievements() end
---@param bWasSuccessful boolean
function UBGWOnlineAchievement:OnStatUpdatedCompleteCS(bWasSuccessful) end
---@param bWasSuccessful boolean
function UBGWOnlineAchievement:OnQueryAchievementsCompleteCS(bWasSuccessful) end
---@param bWasSuccessful boolean
function UBGWOnlineAchievement:OnAchievementsWrittenCompleteCS(bWasSuccessful) end
---@return int32
function UBGWOnlineAchievement:Init() end
---@param outAchievements TArray<FBGWOnlineAchievementTag>
---@return boolean
function UBGWOnlineAchievement:GetAllAchievements(outAchievements) end
function UBGWOnlineAchievement:Destroy() end


---@class UBGWOnlineActivity : UBGWOnlineInterface
UBGWOnlineActivity = {}

---@param ActivityId FString
function UBGWOnlineActivity:StartActivity(ActivityId) end
---@param PriorityMap TMap<FString, int32>
function UBGWOnlineActivity:SetActivityPriority(PriorityMap) end
---@param ActivityId FString
---@param bEnable boolean
function UBGWOnlineActivity:SetActivityAvailability(ActivityId, bEnable) end
---@param ActivityId FString
---@param InProgressTasks TArray<FString>
---@param CompletedTasks TArray<FString>
function UBGWOnlineActivity:ResumeActivity(ActivityId, InProgressTasks, CompletedTasks) end
function UBGWOnlineActivity:ResetAllActiveActivities() end
---@param bWasSuccessful boolean
function UBGWOnlineActivity:OnStartActivityCompleteCS(bWasSuccessful) end
---@param bWasSuccessful boolean
function UBGWOnlineActivity:OnSetActivityPriorityCompleteCS(bWasSuccessful) end
---@param bWasSuccessful boolean
function UBGWOnlineActivity:OnSetActivityAvailabilityCompleteCS(bWasSuccessful) end
---@param bWasSuccessful boolean
function UBGWOnlineActivity:OnResumeActivityCompleteCS(bWasSuccessful) end
---@param bWasSuccessful boolean
function UBGWOnlineActivity:OnResetAllActiveActivitiesCompleteCS(bWasSuccessful) end
---@param ActivityId FString
---@param SessionStr FString
function UBGWOnlineActivity:OnGameActivityActivationCompleteCS(ActivityId, SessionStr) end
---@param bWasSuccessful boolean
function UBGWOnlineActivity:OnEndActivityCompleteCS(bWasSuccessful) end
---@return int32
function UBGWOnlineActivity:Init() end
---@param ActivityId FString
---@param Outcome EOnlineActivityOutcomeType
function UBGWOnlineActivity:EndActivity(ActivityId, Outcome) end
function UBGWOnlineActivity:Destroy() end


---@class UBGWOnlineCloud : UBGWOnlineInterface
UBGWOnlineCloud = {}

---@param Filename FString
---@param UserData TArray<uint8>
function UBGWOnlineCloud:WriteUserFile(Filename, UserData) end
---@param Filename FString
---@return boolean
function UBGWOnlineCloud:ReadUserFile(Filename) end
---@return boolean
function UBGWOnlineCloud:ReadAllUserFiles() end
---@param Filename FString
---@param bWasSuccessful boolean
function UBGWOnlineCloud:OnWriteUserCloudFileCompleteCS(Filename, bWasSuccessful) end
---@param Filename FString
---@param bWasSuccessful boolean
function UBGWOnlineCloud:OnReadUserFilesCompleteCS(Filename, bWasSuccessful) end
---@param bWasSuccessful boolean
function UBGWOnlineCloud:OnEnumerateUserFilesCompleteCS(bWasSuccessful) end
---@param Filename FString
---@param bWasSuccessful boolean
function UBGWOnlineCloud:OnDeleteUserFilesCompleteCS(Filename, bWasSuccessful) end
---@return int32
function UBGWOnlineCloud:Init() end
function UBGWOnlineCloud:EnumerateUserFiles() end
function UBGWOnlineCloud:Destroy() end
---@param Filename FString
---@param bCloudDelete boolean
---@param bLocalDelete boolean
function UBGWOnlineCloud:DeleteUserFile(Filename, bCloudDelete, bLocalDelete) end


---@class UBGWOnlineFriend : UBGWOnlineInterface
UBGWOnlineFriend = {}

---@param ListType EFriendsListsType
function UBGWOnlineFriend:ReadFriendsList(ListType) end
---@param bWasSuccessful boolean
function UBGWOnlineFriend:OnReadFriendListCompleteCS(bWasSuccessful) end
---@return int32
function UBGWOnlineFriend:Init() end
---@param ListType EFriendsListsType
---@param OutFriends TArray<FBGWOnlineFriendInfo>
---@return boolean
function UBGWOnlineFriend:GetFriendsList(ListType, OutFriends) end
---@param ListName FString
---@return boolean
function UBGWOnlineFriend:GetFriend(ListName) end
function UBGWOnlineFriend:Destroy() end


---@class UBGWOnlineIdentity : UBGWOnlineInterface
UBGWOnlineIdentity = {}

---@param RecvActionsJsonStr FString
function UBGWOnlineIdentity:OnRecvAntiAddictionActionCS(RecvActionsJsonStr) end
---@param bSuccessful boolean
function UBGWOnlineIdentity:OnLoginCompletedCS(bSuccessful) end
---@param Privilege EBGWUserPrivileges
---@param PrivilegeResult EBGWPrivilegeResult
function UBGWOnlineIdentity:OnGetUserPrivilegeCompleteCS(Privilege, PrivilegeResult) end
function UBGWOnlineIdentity:Login() end
---@return int32
function UBGWOnlineIdentity:Init() end
---@param Privilege EBGWUserPrivileges
function UBGWOnlineIdentity:GetUserPrivilege(Privilege) end
---@return FString
function UBGWOnlineIdentity:GetUniquePlayerId() end
---@return FString
function UBGWOnlineIdentity:GetPlayerNickname() end
---@return EBGWLoginStatus
function UBGWOnlineIdentity:GetLoginStatus() end
---@return FString
function UBGWOnlineIdentity:GetLinkedAccountExternalToken() end
---@return FString
function UBGWOnlineIdentity:GetAuthToken() end
---@return FString
function UBGWOnlineIdentity:GetAuthOnlineUserId() end
function UBGWOnlineIdentity:Destroy() end


---@class UBGWOnlineInterface : UObject
UBGWOnlineInterface = {}


---@class UBGWOnlinePresence : UBGWOnlineInterface
UBGWOnlinePresence = {}

---@param PresenceId FString
---@param StatusStr FString
---@param Properties TMap<FString, FString>
function UBGWOnlinePresence:SetRichPresence(PresenceId, StatusStr, Properties) end
---@param bWasSuccessful boolean
function UBGWOnlinePresence:OnSetPresenceCompleteCS(bWasSuccessful) end
---@return int32
function UBGWOnlinePresence:Init() end
function UBGWOnlinePresence:Destroy() end


---@class UBGWOnlineSession : UBGWOnlineInterface
---@field Context FBGWOnlineSessionContext
UBGWOnlineSession = {}

---@param SessionType EBGWOnlineSessionType
function UBGWOnlineSession:ShowInviteUI(SessionType) end
function UBGWOnlineSession:ShowFriendUI() end
---@param SessionType EBGWOnlineSessionType
---@param SearchFilters TMap<FName, FString>
---@param bIsLANMatch boolean
function UBGWOnlineSession:SearchSessions(SessionType, SearchFilters, bIsLANMatch) end
---@param bWasSuccess boolean
function UBGWOnlineSession:OnSessionUserInviteAcceptedCS(bWasSuccess) end
function UBGWOnlineSession:OnSessionInviteReceivedCS() end
---@param Success boolean
function UBGWOnlineSession:OnSearchSessionsCompleteCS(Success) end
---@param Result EBGWJoinSessionResult
function UBGWOnlineSession:OnJoinSessionCompleteCS(Result) end
---@param Success boolean
function UBGWOnlineSession:OnFindSessionByIdCompleteCS(Success) end
---@param SessionType EBGWOnlineSessionType
---@param Success boolean
function UBGWOnlineSession:OnDestroySessionCompleteCS(SessionType, Success) end
---@param Success boolean
function UBGWOnlineSession:OnCreateSessionCompleteCS(Success) end
---@param SessionType EBGWOnlineSessionType
---@param SessionId FString
function UBGWOnlineSession:JoinSession(SessionType, SessionId) end
---@return int32
function UBGWOnlineSession:Init() end
---@param SessionType EBGWOnlineSessionType
---@return FString
function UBGWOnlineSession:GetTravelUrl(SessionType) end
---@param SessionType EBGWOnlineSessionType
---@return EBGWOnlineSessionState
function UBGWOnlineSession:GetSessionState(SessionType) end
---@param SessionType EBGWOnlineSessionType
---@return FString
function UBGWOnlineSession:GetSessionIdStr(SessionType) end
---@param SessionId FString
---@param IsGameSession boolean
function UBGWOnlineSession:FindSessionById(SessionId, IsGameSession) end
---@param SessionType EBGWOnlineSessionType
function UBGWOnlineSession:DestroySession(SessionType) end
function UBGWOnlineSession:Destroy() end
---@param SessionType EBGWOnlineSessionType
---@param MaxNumPlayers int32
---@param CustumSettings TMap<FName, FString>
---@param bIsLANMatch boolean
---@param OverrideSessionTemplate FString
function UBGWOnlineSession:CreateSession(SessionType, MaxNumPlayers, CustumSettings, bIsLANMatch, OverrideSessionTemplate) end


---@class UBGWOnlineSubSystemMgr : UObject
---@field WorldCtx UObject
---@field OnLineGameMapName FName
---@field MainMenuMapName FName
---@field SearchResults TArray<FBlueprintSearchResult>
---@field QueryFlag boolean
UBGWOnlineSubSystemMgr = {}

---@param SessionName FName
---@param bWasSuccessful boolean
function UBGWOnlineSubSystemMgr:OnUpdateSessionCompleteCS(SessionName, bWasSuccessful) end
---@param SessionName FName
---@param bWasSuccessful boolean
function UBGWOnlineSubSystemMgr:OnStartOnlineGameCompleteCS(SessionName, bWasSuccessful) end
---@param SessionName FName
---@param Result int32
function UBGWOnlineSubSystemMgr:OnJoinSessionCompleteCS(SessionName, Result) end
---@param bWasSuccessful boolean
function UBGWOnlineSubSystemMgr:OnFindSessionsCompleteCS(bWasSuccessful) end
---@param SessionName FName
---@param bWasSuccessful boolean
function UBGWOnlineSubSystemMgr:OnDestroySessionCompleteCS(SessionName, bWasSuccessful) end
---@param SessionName FName
---@param bWasSuccessful boolean
function UBGWOnlineSubSystemMgr:OnCreateSessionCompleteCS(SessionName, bWasSuccessful) end
function UBGWOnlineSubSystemMgr:LeaveGame() end
---@param Result FBlueprintSearchResult
---@return boolean
function UBGWOnlineSubSystemMgr:JoinGame(Result) end
---@param bIsLAN boolean
---@param MaxNumPlayers int32
---@param CustumSettings TMap<FString, FString>
---@return boolean
function UBGWOnlineSubSystemMgr:HostGame(bIsLAN, MaxNumPlayers, CustumSettings) end
---@param World UWorld
---@param FailureType ENetworkFailure::Type
---@param ErrorString FString
function UBGWOnlineSubSystemMgr:HandleNetworkErrorCS(World, FailureType, ErrorString) end
---@param bIsLAN boolean
function UBGWOnlineSubSystemMgr:FindGames(bIsLAN) end


---@class UBGWOnlineSubsystem : UBGWOnlineInterface
UBGWOnlineSubsystem = {}

---@param ProductId FString
---@param AddToCard boolean
---@return boolean
function UBGWOnlineSubsystem:ShowStoreUI(ProductId, AddToCard) end
function UBGWOnlineSubsystem:QueryUserNATType() end
---@param EntitlementId FString
---@return boolean
function UBGWOnlineSubsystem:QueryIsOwnAdditionContentSync(EntitlementId) end
---@param EntitlementId FString
function UBGWOnlineSubsystem:QueryIsOwnAdditionContent(EntitlementId) end
---@param bPurchased boolean
function UBGWOnlineSubsystem:OnShowStoreUIClosedCS(bPurchased) end
---@param EntitlementId FString
---@param bWasSuccessful boolean
function UBGWOnlineSubsystem:OnQueryIsOwnAdditionContentCompleteCS(EntitlementId, bWasSuccessful) end
---@return int32
function UBGWOnlineSubsystem:Init() end
---@return EBGWSubsystemType
function UBGWOnlineSubsystem:GetSubsystemType() end
---@return FName
function UBGWOnlineSubsystem:GetSubsystemNameForDebug() end
---@return FString
function UBGWOnlineSubsystem:GetLocalPlatformName() end
---@return FName
function UBGWOnlineSubsystem:GetInstanceName() end
function UBGWOnlineSubsystem:Destroy() end
---@return int32
function UBGWOnlineSubsystem:AfterInit() end


---@class UBGWPlatformEventMgr : UObject
UBGWPlatformEventMgr = {}

---@param bIsSignIn boolean
---@param PlatformUserId int32
---@param UserIndex int32
function UBGWPlatformEventMgr:OnUserLoginChangeCS(bIsSignIn, PlatformUserId, UserIndex) end
---@param bIsNetworkInitialized boolean
function UBGWPlatformEventMgr:OnNetworkInitializedChangeCS(bIsNetworkInitialized) end
function UBGWPlatformEventMgr:OnApplicationTerminateCS() end
function UBGWPlatformEventMgr:OnApplicationSuspendCS() end
function UBGWPlatformEventMgr:OnApplicationResumeCS() end
function UBGWPlatformEventMgr:OnApplicationReactivatedCS() end
function UBGWPlatformEventMgr:OnApplicationPreExitCS() end
function UBGWPlatformEventMgr:OnApplicationInitCS() end
function UBGWPlatformEventMgr:OnApplicationExitCS() end
function UBGWPlatformEventMgr:OnApplicationDeactivateCS() end
function UBGWPlatformEventMgr:Init() end
function UBGWPlatformEventMgr:Destroy() end


---@class UBGWPreloadDataAsset : UBGWDataAsset
---@field PreloadAssets TArray<TSoftObjectPtr<UObject>>
UBGWPreloadDataAsset = {}



---@class UBGWSaveCheckDataAsset : UBGWDataAsset
UBGWSaveCheckDataAsset = {}

---@param OutTitle FString
---@param OutMessage FString
---@return boolean
function UBGWSaveCheckDataAsset:SaveCheckCS(OutTitle, OutMessage) end


---@class UBGWTickableWorldSubSystem : UTickableWorldSubsystem
UBGWTickableWorldSubSystem = {}

function UBGWTickableWorldSubSystem:PostInitializeCS() end
---@param World UWorld
function UBGWTickableWorldSubSystem:OnWorldComponentsUpdatedCS(World) end
---@param InWorld UWorld
function UBGWTickableWorldSubSystem:OnWorldBeginPlayCS(InWorld) end
---@param DeltaTime float
function UBGWTickableWorldSubSystem:OnTickCS(DeltaTime) end
---@return UWorld
function UBGWTickableWorldSubSystem:GetWorldRefCS() end
---@param WorldType int32
---@return boolean
function UBGWTickableWorldSubSystem:DoesSupportWorldTypeCS(WorldType) end


---@class UBGWTileLevelGroup : UObject
---@field bShouldBeLoaded boolean
---@field bShouldBeVisible boolean
---@field bShouldBlockOnLoad boolean
---@field LastVolumeUnloadRequestTime float
---@field MinTimeBetweenVolumeUnloadRequests float
---@field Volumes TArray<ABGWLevelStreamingVolume>
---@field Levels TArray<ULevelStreaming>
---@field Name FName
UBGWTileLevelGroup = {}



---@class UBGWVolumSubSystem : UWorldSubsystem
UBGWVolumSubSystem = {}


---@class UBGWVolumeManager : UObject
---@field LevelSteamingVolumeManager UBGWLevelStreamingVolumeManager
---@field ActorVisibilityVolumeManager UBGWActorVisibilityVolumeManager
---@field CameraGroupVolumeManager UBGWCameraGroupVolumeManager
---@field LevelStreamingStateVolumeManager UBGWLevelStreamingStateVolumeManager
UBGWVolumeManager = {}

---@param ActionID int32
---@param Linkage int32
function UBGWVolumeManager:OnGSLevelStateChanged(ActionID, Linkage) end


---@class UBGWVolumeManagerBase : UObject
---@field RegisteredVolumes TArray<ABGWVolumeBase>
UBGWVolumeManagerBase = {}



---@class UBGWWorldSubSystem : UWorldSubsystem
UBGWWorldSubSystem = {}

function UBGWWorldSubSystem:PostInitializeCS() end
---@param World UWorld
function UBGWWorldSubSystem:OnWorldComponentsUpdatedCS(World) end
---@param InWorld UWorld
function UBGWWorldSubSystem:OnWorldBeginPlayCS(InWorld) end
---@return UWorld
function UBGWWorldSubSystem:GetWorldRefCS() end
---@param WorldType int32
---@return boolean
function UBGWWorldSubSystem:DoesSupportWorldTypeCS(WorldType) end


---@class UBGW_EventCollection : UObject
---@field TestWorldEvent FBGW_EventCollectionTestWorldEvent
---@field FBWE_OldMKBorn FBGW_EventCollectionFBWE_OldMKBorn
---@field FBWE_TianBing04Dead FBGW_EventCollectionFBWE_TianBing04Dead
---@field FBWE_UnitBeAttack FBGW_EventCollectionFBWE_UnitBeAttack
---@field FBWE_TianJiangQTEEnd FBGW_EventCollectionFBWE_TianJiangQTEEnd
---@field FBWE_DemoTianJiangBorn FBGW_EventCollectionFBWE_DemoTianJiangBorn
---@field FBWE_DemoEnterCloudPlatform FBGW_EventCollectionFBWE_DemoEnterCloudPlatform
UBGW_EventCollection = {}



---@class UBTDecorator_USharpBase : UBTDecorator
---@field AIOwner AAIController
---@field bShowPropertyDetails boolean
UBTDecorator_USharpBase = {}

---@param NewNodeName FString
function UBTDecorator_USharpBase:SetNodeNameInCS(NewNodeName) end
function UBTDecorator_USharpBase:RefreshNodeInfoInEditor() end
---@param MemberName FString
---@param PropertyName FString
function UBTDecorator_USharpBase:OnPropertyChanged(MemberName, PropertyName) end


---@class UBTService_USharpBase : UBTService
---@field AIOwner AAIController
---@field ActorOwner AActor
---@field bShowPropertyDetails boolean
---@field bShowEventDetails boolean
UBTService_USharpBase = {}

---@param NewNodeName FString
function UBTService_USharpBase:SetNodeNameInCS(NewNodeName) end
function UBTService_USharpBase:RefreshNodeInfoInEditor() end
---@param MemberName FString
---@param PropertyName FString
function UBTService_USharpBase:OnPropertyChanged(MemberName, PropertyName) end
---@return boolean
function UBTService_USharpBase:IsServiceActive() end


---@class UBTTask_USharpBase : UBTTaskNode
---@field AIOwner AAIController
---@field ActorOwner AActor
---@field TickInterval FIntervalCountdown
---@field bShowPropertyDetails boolean
UBTTask_USharpBase = {}

---@param NewNodeName FString
function UBTTask_USharpBase:SetNodeNameInCS(NewNodeName) end
function UBTTask_USharpBase:RefreshNodeInfoInEditor() end
---@param MemberName FString
---@param PropertyName FString
function UBTTask_USharpBase:OnPropertyChanged(MemberName, PropertyName) end
---@return boolean
function UBTTask_USharpBase:IsTaskExecuting() end
---@return boolean
function UBTTask_USharpBase:IsTaskAborting() end
---@param bSuccess boolean
function UBTTask_USharpBase:FinishExecute(bSuccess) end
function UBTTask_USharpBase:FinishAbort() end


---@class UBUC_ACharacterComponent : UObject
---@field OwnerCharacter ACharacter
---@field OwnerMovement UBGUCharacterMovementComponent
---@field OwnerShapeComponent UShapeComponent
---@field MainSkinMesh USkeletalMeshComponent
---@field OwnerController AController
UBUC_ACharacterComponent = {}



---@class UBUC_AIComponent : UObject
---@field AIController ABGUAIController
---@field PerceptionComp UAIPerceptionComponent
UBUC_AIComponent = {}



---@class UBUC_GameplayTagData : UObject
---@field TagInts TMap<FName, int32>
---@field TagFloats TMap<FName, float>
---@field TagVectors TMap<FName, FVector>
---@field TagEnums TMap<FName, uint8>
---@field TagNames TMap<FName, FName>
---@field TagObjects TMap<FName, TWeakObjectPtr<UObject>>
UBUC_GameplayTagData = {}



---@class UBUS_EventCollection : UActorComponent
---@field FBUE_BounceCheck FBUS_EventCollectionFBUE_BounceCheck
---@field FBUE_BP_UnitDie FBUS_EventCollectionFBUE_BP_UnitDie
---@field FBUE_BP_ClearCameraLock FBUS_EventCollectionFBUE_BP_ClearCameraLock
---@field FBUE_BP_AI_FSMEventTrigger FBUS_EventCollectionFBUE_BP_AI_FSMEventTrigger
---@field FBUE_GrantItemsDeferred_CS FBUS_EventCollectionFBUE_GrantItemsDeferred_CS
UBUS_EventCollection = {}



---@class UBUS_UtilComm : UBlueprintFunctionLibrary
UBUS_UtilComm = {}

---@param CurCharacter ACharacter
---@param TargetPos float
function UBUS_UtilComm:SetCurActiveMontagePos(CurCharacter, TargetPos) end
---@param CurCharacter ACharacter
---@param PlayRate float
---@return boolean
function UBUS_UtilComm:SafeSetCharacterMontagePlayingRate(CurCharacter, PlayRate) end
---@param CurCharacter ACharacter
---@param IsPlaying boolean
---@return boolean
function UBUS_UtilComm:SafeSetCharacterMontagePlaying(CurCharacter, IsPlaying) end
---@param CurCharacter ACharacter
---@param AnimMontage UAnimMontage
---@return boolean
function UBUS_UtilComm:PlayMontage(CurCharacter, AnimMontage) end
---@param Caster AActor
---@param CameraShakeCls UClass
---@return UMatineeCameraShake
function UBUS_UtilComm:PlayCameraShakeByClass(Caster, CameraShakeCls) end
---@param CurCharacter ACharacter
---@param TimeRate float
function UBUS_UtilComm:ParticleSystemComponentTrailSetTimeRate(CurCharacter, TimeRate) end
---@param ResPath FString
---@param DefaultDelayTime float
---@return UParticleSystem
function UBUS_UtilComm:LoadParticleSystemFromString(ResPath, DefaultDelayTime) end
---@param ResPath FString
---@return ULevelSequence
function UBUS_UtilComm:LoadLevelSequenceFromString(ResPath) end
---@param ResPath FString
---@return UCurveFloat
function UBUS_UtilComm:LoadCurveFloatFromString(ResPath) end
---@param ResPath FString
---@return UClass
function UBUS_UtilComm:LoadCameraShakeFromString(ResPath) end
---@param ResPath FString
---@return UAnimMontage
function UBUS_UtilComm:LoadAnimMontageFromString(ResPath) end
---@param ResPath FString
---@return UObject
function UBUS_UtilComm:LoadAKEventFromString(ResPath) end
---@param CurCharacter ACharacter
---@return boolean
function UBUS_UtilComm:IsCharacterStoped(CurCharacter) end
---@param Start FRotator
---@param End FRotator
---@param alpha float
---@param GSBlendTypeG EGSBlendTypeG
---@param EaseExp float
---@param IsShortestPath boolean
---@return FRotator
function UBUS_UtilComm:GSEaseRotator(Start, End, alpha, GSBlendTypeG, EaseExp, IsShortestPath) end
---@param Start float
---@param End float
---@param alpha float
---@param GSBlendTypeG EGSBlendTypeG
---@param EaseExp float
---@return float
function UBUS_UtilComm:GSEase(Start, End, alpha, GSBlendTypeG, EaseExp) end
---@param CameraShake UMatineeCameraShake
---@return float
function UBUS_UtilComm:GetUMatineeCameraShakeBlendOutTime(CameraShake) end
---@param GSBlengTypeG EGSBlendTypeG
---@return int32
function UBUS_UtilComm:GetEasingFuncType(GSBlengTypeG) end
---@param CurCharacter ACharacter
---@return float
function UBUS_UtilComm:GetCurActiveMontagePos(CurCharacter) end
---@param TargetLocation FVector
---@param FromLocation FVector
---@return FRotator
function UBUS_UtilComm:CalcYawRotator(TargetLocation, FromLocation) end
---@param CurCharacter ACharacter
---@param ForwardVal float
---@param RightVal float
---@return FRotator
function UBUS_UtilComm:CalcDirWithInput(CurCharacter, ForwardVal, RightVal) end
---@param AVector FVector
---@param BVector FVector
---@return float
function UBUS_UtilComm:CalcDegreeFromVectorsProjectInXYPlane(AVector, BVector) end
---@param ARotator FRotator
---@param BRotator FRotator
---@return float
function UBUS_UtilComm:CalcDegreeFromRotatorsInYaw(ARotator, BRotator) end


---@class UBWC_DispLibEnvRuntimeSubsystem : UEngineSubsystem
UBWC_DispLibEnvRuntimeSubsystem = {}


---@class UBWS_DispLibEnvSystemConf : UBGWDataAsset
---@field DayLength float
---@field NightLength float
---@field SunnyTimeRange FVector2D
---@field WeatherTimeRange FVector2D
---@field WeatherChangeDuration float
UBWS_DispLibEnvSystemConf = {}



---@class UBWS_DispLibEnvWeatherSetting : UBGWDataAsset
---@field Setting FBWC_DispLibEnvSettings
UBWS_DispLibEnvWeatherSetting = {}



---@class UBaseActorComp : UActorComponent
---@field DebugID int32
---@field LogLvl int32
---@field ActorCompContainer UActorCompContainer
UBaseActorComp = {}

function UBaseActorComp:PostInitPropertiesCS() end
function UBaseActorComp:OnUnregisterCS() end
function UBaseActorComp:OnRegisterCS() end
function UBaseActorComp:OnAttachInCS() end
function UBaseActorComp:InitializeCS() end
---@return int32
function UBaseActorComp:GetLogLvl() end
---@return int32
function UBaseActorComp:GetDebugID() end
---@param EndPlayReason EEndPlayReason::Type
function UBaseActorComp:EndPlayInCS(EndPlayReason) end
function UBaseActorComp:BeginPlayInCS() end
---@param InOffset FVector
---@param bWorldShift boolean
function UBaseActorComp:ApplyWorldOffsetCS(InOffset, bWorldShift) end


---@class UBaseActorCompTickable : UBaseActorComp
UBaseActorCompTickable = {}

---@param DeltaTime float
function UBaseActorCompTickable:TickComponentInCS(DeltaTime) end


---@class UBaseEditorTickableActorComp : UBaseActorCompTickable
UBaseEditorTickableActorComp = {}

---@param MemberName FString
---@param PropertyName FString
function UBaseEditorTickableActorComp:OnPropertyChanged(MemberName, PropertyName) end


---@class UDEPRECATED_AnimNotify_GSPlayFX : UAnimNotify_PlayParticleEffect
---@field TemporaryClose boolean
---@field AttachRule EAttachLocation::Type
---@field InstanceParameters TArray<FParticleSysParam>
---@field NiagaraSystem UNiagaraSystem
---@field bIsTraceObject boolean
---@field bIsDebug boolean
---@field TraceObjectType TArray<EObjectTypeQuery>
---@field TraceObjectClass TArray<UClass>
---@field TraceOffset FVector
UDEPRECATED_AnimNotify_GSPlayFX = {}



---@class UEditorOnlyCompBase : UActorComponent
UEditorOnlyCompBase = {}

function UEditorOnlyCompBase:PreSaveCS() end
---@param ParentPropertyName FString
---@param PropertyName FString
---@param OutParamArray TArray<FCalliopeGuid>
function UEditorOnlyCompBase:GetPossibleParamsCS(ParentPropertyName, PropertyName, OutParamArray) end
---@param PropertyName FString
---@param ConfigGuid FCalliopeGuid
---@return FString
function UEditorOnlyCompBase:GetParamDisplayNameCS(PropertyName, ConfigGuid) end


---@class UGSDescPropertyDetailCustomizationHelper : UObject
UGSDescPropertyDetailCustomizationHelper = {}

---@param OutStrings TArray<FString>
---@param OutRestrictedItems TArray<boolean>
function UGSDescPropertyDetailCustomizationHelper:OnGetRowStrings(OutStrings, OutRestrictedItems) end
---@param DescID int32
---@param RowName FName
---@return boolean
function UGSDescPropertyDetailCustomizationHelper:GetRowNameByDescId(DescID, RowName) end
---@param RowName FName
---@return int32
function UGSDescPropertyDetailCustomizationHelper:FindDescIdByRowName(RowName) end


---@class UGSEQCBase : UEnvQueryContext
---@field EQCQueryType EBGUEQCQueryType
---@field SingleActorResult AActor
---@field SingleLocationResult FVector
---@field ActorsSetResult TArray<AActor>
---@field LocationsSetResult TArray<FVector>
UGSEQCBase = {}

---@param QuerierObject UObject
---@param QuerierActor AActor
function UGSEQCBase:ProvideSingleLocationCS(QuerierObject, QuerierActor) end
---@param QuerierObject UObject
---@param QuerierActor AActor
function UGSEQCBase:ProvideSingleActorCS(QuerierObject, QuerierActor) end
---@param QuerierObject UObject
---@param QuerierActor AActor
function UGSEQCBase:ProvideLocationsSetCS(QuerierObject, QuerierActor) end
---@param QuerierObject UObject
---@param QuerierActor AActor
function UGSEQCBase:ProvideActorsSetCS(QuerierObject, QuerierActor) end


---@class UGSEQGBase_ProjectedPoint : UEnvQueryGenerator
---@field ProjectionData FEnvTraceData
---@field GeneratorsActionDescription FText
---@field Context TSubclassOf<UEnvQueryContext>
---@field GenerateItemList TArray<FVector>
---@field TraceData FEnvTraceData
UGSEQGBase_ProjectedPoint = {}

---@param Points TArray<FVector>
---@param SourcePt FVector
---@return TArray<FVector>
function UGSEQGBase_ProjectedPoint:RunNavRaycastsInCS(Points, SourcePt) end
---@param Points TArray<FVector>
---@return TArray<FVector>
function UGSEQGBase_ProjectedPoint:ProjectAndFilterNavPointsInCS(Points) end
---@return UObject
function UGSEQGBase_ProjectedPoint:GetQuerier() end
---@param ContextLocations TArray<FVector>
function UGSEQGBase_ProjectedPoint:DoItemGenerationCS(ContextLocations) end
---@param GeneratedVector FVector
function UGSEQGBase_ProjectedPoint:AddGeneratedVector(GeneratedVector) end
---@param GeneratedActor AActor
function UGSEQGBase_ProjectedPoint:AddGeneratedActor(GeneratedActor) end


---@class UGSEQG_Circle : UGSEQG_SimpleTeleport
---@field CircleRadius float
---@field SpaceBetween float
---@field NumberOfPoints int32
---@field PointOnCircleSpacingMethod EGSPointOnCircleSpacingMethod
---@field AngleCenterDirection EGSAngleCenterDirection
---@field LeftAngle float
---@field RightAngle float
UGSEQG_Circle = {}



---@class UGSEQG_Donut : UGSEQG_SimpleTeleport
---@field InnerRadius float
---@field OuterRadius float
---@field NumberOfRings int32
---@field PointsPerRing int32
---@field AngleCenterDirection EGSAngleCenterDirection
---@field LeftAngle float
---@field RightAngle float
UGSEQG_Donut = {}



---@class UGSEQG_SimpleGrid : UGSEQG_SimpleTeleport
---@field GridHalfSize float
---@field SpaceBetween float
UGSEQG_SimpleGrid = {}



---@class UGSEQG_SimpleTeleport : UEnvQueryGenerator
---@field bUseCustomCapsuleSize boolean
---@field CustomCapsuleHalfHeight float
---@field CustomCapsuleRadius float
---@field ContextBase EGSEnvContextBase
---@field CustomActorContext TSubclassOf<UEnvQueryContext>
---@field SceneItemTag FName
---@field SceneItemClass TSubclassOf<AActor>
---@field QuerierContext TSubclassOf<UEnvQueryContext>
---@field PlayerContext TSubclassOf<UEnvQueryContext>
---@field TargetContext TSubclassOf<UEnvQueryContext>
---@field bContextNavProjection boolean
---@field NavProjectionMaxRange int32
---@field bEnableNavigationTrace boolean
---@field bEnableCapsuleTrace boolean
---@field bEnableNavigationProjection boolean
---@field bCapsuleHalfHeightAsVerticalOffset boolean
---@field bEnableCapsuleProjection boolean
---@field bQuerierNavPathExist boolean
---@field bPlayerNavPathExist boolean
---@field bTestCapsuleOverlap boolean
---@field MaxNavCost float
---@field NavProjectionTest UGSEQT_Project
---@field CapsuleProjectionTest UGSEQT_Project
---@field PlayerNavPathExistTest UGSEQT_ProjectionPathFinding
---@field QuerierNavPathExistTest UGSEQT_ProjectionPathFinding
---@field CapsuleOverlapTest UGSEQT_Overlap
UGSEQG_SimpleTeleport = {}



---@class UGSEQTBase : UEnvQueryTest
---@field Context TSubclassOf<UEnvQueryContext>
UGSEQTBase = {}

---@return boolean
function UGSEQTBase:ShouldUseCustomItemScore() end
---@return boolean
function UGSEQTBase:ShouldPrepareContext() end
---@param bWorkOnFloats boolean
function UGSEQTBase:SetWorkOnFloatValuesCS(bWorkOnFloats) end
---@param Score float
function UGSEQTBase:SetItemScoreFloat(Score) end
---@param bScore boolean
function UGSEQTBase:SetItemScoreBool(bScore) end
---@param World UWorld
---@param ItemLocation FVector
---@param ItemActor AActor
---@param Querier AActor
---@return boolean
function UGSEQTBase:ProcessItemCS(World, ItemLocation, ItemActor, Querier) end
---@param Item FGSEnvQueryTestItem
function UGSEQTBase:ProcessCustomItemScoreCS(Item) end
---@param ContextActors TArray<AActor>
---@param ContextLocations TArray<FVector>
function UGSEQTBase:PreProcessItems(ContextActors, ContextLocations) end
function UGSEQTBase:PostProcessItems() end
---@param MemberName FString
---@param PropertyName FString
function UGSEQTBase:OnPropertyChanged(MemberName, PropertyName) end
---@return boolean
function UGSEQTBase:GetWorkOnFloatValuesCS() end
---@return FString
function UGSEQTBase:GetDescriptionTitleCS() end
---@return FString
function UGSEQTBase:GetDescriptionDetailsCS() end
function UGSEQTBase:ForceItemStatePassed() end
function UGSEQTBase:ForceItemStateFailed() end


---@class UGSEQT_Overlap : UEnvQueryTest
---@field OverlapData FEnvOverlapData
UGSEQT_Overlap = {}



---@class UGSEQT_Project : UEnvQueryTest
---@field ProjectionData FEnvTraceData
UGSEQT_Project = {}



---@class UGSEQT_ProjectionPathFinding : UEnvQueryTest_Pathfinding
---@field ProjectionData FProjectionData
UGSEQT_ProjectionPathFinding = {}



---@class UGSE_OnlineFuncLib : UBlueprintFunctionLibrary
UGSE_OnlineFuncLib = {}

---@param Parent UObject
---@param Class UClass
---@param InBaseName FName
---@return FName
function UGSE_OnlineFuncLib:SlowMakeUniqueObjectName(Parent, Class, InBaseName) end
---@param NewMap FString
function UGSE_OnlineFuncLib:SetGameDefaultMap(NewMap) end
---@param Actor AActor
---@param PlayerController APlayerController
---@return int64
function UGSE_OnlineFuncLib:ServerReplicateOneActorToPlayer(Actor, PlayerController) end
---@param Guid int64
---@param NetConnection UNetConnection
function UGSE_OnlineFuncLib:ResetNetGuidAckStat(Guid, NetConnection) end
---@param Guid int64
---@param Obj UObject
function UGSE_OnlineFuncLib:RegisterNetGuid(Guid, Obj) end
---@param Actor AActor
function UGSE_OnlineFuncLib:MarkActorRoleDirty(Actor) end
---@param Actor AActor
---@param PlayerController APlayerController
---@return boolean
function UGSE_OnlineFuncLib:IsActorChannelReadyForServer(Actor, PlayerController) end
---@param Actor AActor
---@return boolean
function UGSE_OnlineFuncLib:IsActorChannelReadyForClient(Actor) end
---@param WorldCtx UObject
---@return boolean
function UGSE_OnlineFuncLib:InServerReal(WorldCtx) end
---@param PlayerState APlayerState
---@return FString
function UGSE_OnlineFuncLib:GetUniqueNetIdStringByPlayerState(PlayerState) end
---@param Controller APlayerController
---@return FString
function UGSE_OnlineFuncLib:GetUniqueNetIdStringByPlayerController(Controller) end
---@param UniqueId FUniqueNetIdRepl
---@return FString
function UGSE_OnlineFuncLib:GetUniqueNetIdStringByFUniqueNetIdRepl(UniqueId) end
---@param WorldCtx UObject
---@return UObject
function UGSE_OnlineFuncLib:GetReplicationGraph(WorldCtx) end
---@param Channel UActorChannel
---@return int64
function UGSE_OnlineFuncLib:GetObjNetGuidByChannel(Channel) end
---@param Obj UObject
---@return int64
function UGSE_OnlineFuncLib:GetObjNetGuid(Obj) end
---@param WorldCtx UObject
---@param Guid int64
---@return UObject
function UGSE_OnlineFuncLib:GetObjByNetGuid(WorldCtx, Guid) end
---@return FString
function UGSE_OnlineFuncLib:GetGameDefaultMap() end
---@param Channel UActorChannel
---@return AActor
function UGSE_OnlineFuncLib:GetActorChannelActor(Channel) end
---@param World UWorld
function UGSE_OnlineFuncLib:GEngineHandleDisconnect(World) end
---@param Obj UObject
---@return boolean
function UGSE_OnlineFuncLib:ForceRemoveNetGuid(Obj) end
---@param CloseResult EGSNetCloseResult
---@param WorldContext UObject
function UGSE_OnlineFuncLib:CloseServerConnection(CloseResult, WorldContext) end
---@param CloseResult EGSNetCloseResult
---@param ClientPlayerController APlayerController
function UGSE_OnlineFuncLib:CloseClientConnection(CloseResult, ClientPlayerController) end
---@param Actor AActor
---@param PlayerController APlayerController
---@param CloseReason int32
---@return boolean
function UGSE_OnlineFuncLib:CloseActorChannelByActorAndPlayerController(Actor, PlayerController, CloseReason) end
---@param Actor AActor
---@param PlayerController APlayerController
---@return boolean
function UGSE_OnlineFuncLib:ActorChannelValid(Actor, PlayerController) end
---@param Actor AActor
---@param PlayerController APlayerController
---@return boolean
function UGSE_OnlineFuncLib:ActorChannelOpenAcked(Actor, PlayerController) end


---@class UGSEnvQueryAsset : UDataAsset
---@field EnvQueryTemplate UEnvQuery
---@field QueryConfig TArray<FAIDynamicParam>
UGSEnvQueryAsset = {}



---@class UGSEnvQueryManager : UEnvQueryManager
UGSEnvQueryManager = {}


---@class UGSLocalPlayer : ULocalPlayer
UGSLocalPlayer = {}

---@return FString
function UGSLocalPlayer:GetGameLoginOptionsCS() end


---@class UGSVersionSettings : UDeveloperSettings
---@field AppVersion FString
---@field PS5MasterVersion FString
---@field XBoxMasterVersion FString
---@field Revision int32
UGSVersionSettings = {}



---@class UHitMoveOverlapOtherActorCollisionsInfo : UObject
---@field OtherActor AActor
---@field OtherActorWeight float
---@field OtherCollisions TArray<UShapeComponent>
---@field OtherCollisionDirections TArray<int32>
---@field SelfCollisions TArray<UShapeComponent>
---@field SelfCollisionDirections TArray<int32>
---@field OtherCollisionsLastTickCounts TArray<int32>
UHitMoveOverlapOtherActorCollisionsInfo = {}



---@class USceneComponentTickable : USceneComponent
USceneComponentTickable = {}

---@param DeltaTime float
function USceneComponentTickable:TickComponentGS(DeltaTime) end
---@param EndPlayReason EEndPlayReason::Type
function USceneComponentTickable:EndPlayGS(EndPlayReason) end
function USceneComponentTickable:BeginPlayGS() end


---@class UU3DebugUtil : UBlueprintFunctionLibrary
UU3DebugUtil = {}

---@param InWorld UWorld
function UU3DebugUtil:U3FlushPersistentDebugLines(InWorld) end
---@param InWorld UWorld
function UU3DebugUtil:U3FlushDebugStrings(InWorld) end
---@param InWorld UWorld
---@param TextLocation FVector
---@param Text FString
---@param TestBaseActor AActor
---@param TextColor FColor
---@param Duration float
---@param bDrawShadow boolean
---@param FontScale float
function UU3DebugUtil:U3DrawDebugString(InWorld, TextLocation, Text, TestBaseActor, TextColor, Duration, bDrawShadow, FontScale) end
---@param InWorld UWorld
---@param Center FVector
---@param Radius float
---@param Segments int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugSphere(InWorld, Center, Radius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param P FPlane
---@param Loc FVector
---@param Extents FVector2D
---@param Color FColor
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UU3DebugUtil:U3DrawDebugSolidPlane2(InWorld, P, Loc, Extents, Color, bPersistent, LifeTime, DepthPriority) end
---@param InWorld UWorld
---@param P FPlane
---@param Loc FVector
---@param Size float
---@param Color FColor
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UU3DebugUtil:U3DrawDebugSolidPlane(InWorld, P, Loc, Size, Color, bPersistent, LifeTime, DepthPriority) end
---@param InWorld UWorld
---@param Center FVector
---@param Extent FVector
---@param Rotation FQuat
---@param Color FColor
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UU3DebugUtil:U3DrawDebugSolidBox3(InWorld, Center, Extent, Rotation, Color, bPersistent, LifeTime, DepthPriority) end
---@param InWorld UWorld
---@param Center FVector
---@param Extent FVector
---@param Color FColor
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UU3DebugUtil:U3DrawDebugSolidBox2(InWorld, Center, Extent, Color, bPersistent, LifeTime, DepthPriority) end
---@param InWorld UWorld
---@param Box FBox
---@param Color FColor
---@param Transform FTransform
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UU3DebugUtil:U3DrawDebugSolidBox(InWorld, Box, Color, Transform, bPersistent, LifeTime, DepthPriority) end
---@param InWorld UWorld
---@param position FVector
---@param Size float
---@param PointColor FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
function UU3DebugUtil:U3DrawDebugPoint(InWorld, position, Size, PointColor, bPersistentLines, LifeTime, DepthPriority) end
---@param InWorld UWorld
---@param Verts TArray<FVector>
---@param Indices TArray<int32>
---@param Color FColor
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UU3DebugUtil:U3DrawDebugMesh(InWorld, Verts, Indices, Color, bPersistent, LifeTime, DepthPriority) end
---@param InWorld UWorld
---@param LineStart FVector
---@param LineEnd FVector
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugLine(InWorld, LineStart, LineEnd, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param FrustumToWorld FMatrix
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugFrustum(InWorld, FrustumToWorld, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param LineStart FVector
---@param LineEnd FVector
---@param ArrowSize float
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugDirectionalArrow(InWorld, LineStart, LineEnd, ArrowSize, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param Start FVector
---@param End FVector
---@param Radius float
---@param Segments int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugCylinder(InWorld, Start, End, Radius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param AxisLoc FVector
---@param AxisRot FRotator
---@param Scale float
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
function UU3DebugUtil:U3DrawDebugCrosshairs(InWorld, AxisLoc, AxisRot, Scale, Color, bPersistentLines, LifeTime, DepthPriority) end
---@param InWorld UWorld
---@param AxisLoc FVector
---@param AxisRot FRotator
---@param Scale float
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugCoordinateSystem(InWorld, AxisLoc, AxisRot, Scale, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param Origin FVector
---@param Direction FVector
---@param Length float
---@param AngleWidth float
---@param AngleHeight float
---@param NumSides int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugCone(InWorld, Origin, Direction, Length, AngleWidth, AngleHeight, NumSides, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param Center FVector
---@param Radius float
---@param Segments int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
---@param YAxis FVector
---@param ZAxis FVector
---@param bDrawAxis boolean
function UU3DebugUtil:U3DrawDebugCircle2(InWorld, Center, Radius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness, YAxis, ZAxis, bDrawAxis) end
---@param InWorld UWorld
---@param TransformMatrix FMatrix
---@param Radius float
---@param Segments int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
---@param bDrawAxis boolean
function UU3DebugUtil:U3DrawDebugCircle(InWorld, TransformMatrix, Radius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness, bDrawAxis) end
---@param InWorld UWorld
---@param Center FVector
---@param HalfHeight float
---@param Radius float
---@param Rotation FQuat
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugCapsule(InWorld, Center, HalfHeight, Radius, Rotation, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param Canvas UCanvas
---@param Base FVector
---@param Color FColor
---@param Radius float
---@param NumSides int32
function UU3DebugUtil:U3DrawDebugCanvasWireSphere(Canvas, Base, Color, Radius, NumSides) end
---@param Canvas UCanvas
---@param Transform FTransform
---@param ConeRadius float
---@param ConeAngle float
---@param ConeSides int32
---@param Color FColor
function UU3DebugUtil:U3DrawDebugCanvasWireCone(Canvas, Transform, ConeRadius, ConeAngle, ConeSides, Color) end
---@param Canvas UCanvas
---@param Start FVector
---@param End FVector
---@param LineColor FLinearColor
function UU3DebugUtil:U3DrawDebugCanvasLine(Canvas, Start, End, LineColor) end
---@param Canvas UCanvas
---@param Base FVector
---@param X FVector
---@param Y FVector
---@param Color FColor
---@param Radius float
---@param NumSides int32
function UU3DebugUtil:U3DrawDebugCanvasCircle(Canvas, Base, X, Y, Color, Radius, NumSides) end
---@param Canvas UCanvas
---@param StartPosition FVector2D
---@param EndPosition FVector2D
---@param LineColor FLinearColor
---@param LineThickness float
function UU3DebugUtil:U3DrawDebugCanvas2DLine2(Canvas, StartPosition, EndPosition, LineColor, LineThickness) end
---@param Canvas UCanvas
---@param Start FVector
---@param End FVector
---@param LineColor FLinearColor
function UU3DebugUtil:U3DrawDebugCanvas2DLine(Canvas, Start, End, LineColor) end
---@param Canvas UCanvas
---@param Center FVector2D
---@param Radius float
---@param NumSides int32
---@param LineColor FLinearColor
---@param LineThickness float
function UU3DebugUtil:U3DrawDebugCanvas2DCircle(Canvas, Center, Radius, NumSides, LineColor, LineThickness) end
---@param Canvas UCanvas
---@param Box FBox2D
---@param LineColor FLinearColor
---@param LineThickness float
function UU3DebugUtil:U3DrawDebugCanvas2DBox(Canvas, Box, LineColor, LineThickness) end
---@param InWorld UWorld
---@param Location FVector
---@param Rotation FRotator
---@param FOVDeg float
---@param Scale float
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
function UU3DebugUtil:U3DrawDebugCamera(InWorld, Location, Rotation, FOVDeg, Scale, Color, bPersistentLines, LifeTime, DepthPriority) end
---@param InWorld UWorld
---@param Center FVector
---@param Extent FVector
---@param Rotation FQuat
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugBox2(InWorld, Center, Extent, Rotation, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param Center FVector
---@param Extent FVector
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugBox(InWorld, Center, Extent, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param Origin FVector
---@param Rotation FRotator
---@param Length float
---@param AngleWidth float
---@param AngleHeight float
---@param DrawColor FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebugAltCone(InWorld, Origin, Rotation, Length, AngleWidth, AngleHeight, DrawColor, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param TransformMatrix FMatrix
---@param InnerRadius float
---@param OuterRadius float
---@param Segments int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawDebug2DDonut(InWorld, TransformMatrix, InnerRadius, OuterRadius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param InWorld UWorld
---@param Base FVector
---@param X FVector
---@param Y FVector
---@param Color FColor
---@param Radius float
---@param NumSides int32
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UU3DebugUtil:U3DrawCircle(InWorld, Base, X, Y, Color, Radius, NumSides, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param WorldCtx UObject
function UU3DebugUtil:DisableAllScreenMessages(WorldCtx) end


---@class UWorldActorContainer : UObject
---@field AllocID int32
---@field ActorCompsMap TMap<int32, UActorCompContainer>
---@field ActorMap TMap<int32, AActor>
---@field PlayerCtrlMap TMap<int32, APlayerController>
UWorldActorContainer = {}



---@class UX2DebugUtil : UBlueprintFunctionLibrary
UX2DebugUtil = {}

---@param DebugTag boolean
---@param InWorld UWorld
function UX2DebugUtil:X2FlushPersistentDebugLines(DebugTag, InWorld) end
---@param DebugTag boolean
---@param InWorld UWorld
function UX2DebugUtil:X2FlushDebugStrings(DebugTag, InWorld) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param TextLocation FVector
---@param Text FString
---@param TestBaseActor AActor
---@param TextColor FColor
---@param Duration float
---@param bDrawShadow boolean
---@param FontScale float
function UX2DebugUtil:X2DrawDebugString(DebugTag, InWorld, TextLocation, Text, TestBaseActor, TextColor, Duration, bDrawShadow, FontScale) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Center FVector
---@param Radius float
---@param Segments int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugSphere(DebugTag, InWorld, Center, Radius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param P FPlane
---@param Loc FVector
---@param Extents FVector2D
---@param Color FColor
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UX2DebugUtil:X2DrawDebugSolidPlane2(DebugTag, InWorld, P, Loc, Extents, Color, bPersistent, LifeTime, DepthPriority) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param P FPlane
---@param Loc FVector
---@param Size float
---@param Color FColor
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UX2DebugUtil:X2DrawDebugSolidPlane(DebugTag, InWorld, P, Loc, Size, Color, bPersistent, LifeTime, DepthPriority) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Center FVector
---@param Extent FVector
---@param Rotation FQuat
---@param Color FColor
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UX2DebugUtil:X2DrawDebugSolidBox3(DebugTag, InWorld, Center, Extent, Rotation, Color, bPersistent, LifeTime, DepthPriority) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Center FVector
---@param Extent FVector
---@param Color FColor
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UX2DebugUtil:X2DrawDebugSolidBox2(DebugTag, InWorld, Center, Extent, Color, bPersistent, LifeTime, DepthPriority) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Box FBox
---@param Color FColor
---@param Transform FTransform
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UX2DebugUtil:X2DrawDebugSolidBox(DebugTag, InWorld, Box, Color, Transform, bPersistent, LifeTime, DepthPriority) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param position FVector
---@param Size float
---@param PointColor FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
function UX2DebugUtil:X2DrawDebugPoint(DebugTag, InWorld, position, Size, PointColor, bPersistentLines, LifeTime, DepthPriority) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Verts TArray<FVector>
---@param Indices TArray<int32>
---@param Color FColor
---@param bPersistent boolean
---@param LifeTime float
---@param DepthPriority uint8
function UX2DebugUtil:X2DrawDebugMesh(DebugTag, InWorld, Verts, Indices, Color, bPersistent, LifeTime, DepthPriority) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param LineStart FVector
---@param LineEnd FVector
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugLine(DebugTag, InWorld, LineStart, LineEnd, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param FrustumToWorld FMatrix
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugFrustum(DebugTag, InWorld, FrustumToWorld, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param LineStart FVector
---@param LineEnd FVector
---@param ArrowSize float
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugDirectionalArrow(DebugTag, InWorld, LineStart, LineEnd, ArrowSize, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Start FVector
---@param End FVector
---@param Radius float
---@param Segments int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugCylinder(DebugTag, InWorld, Start, End, Radius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param AxisLoc FVector
---@param AxisRot FRotator
---@param Scale float
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
function UX2DebugUtil:X2DrawDebugCrosshairs(DebugTag, InWorld, AxisLoc, AxisRot, Scale, Color, bPersistentLines, LifeTime, DepthPriority) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param AxisLoc FVector
---@param AxisRot FRotator
---@param Scale float
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugCoordinateSystem(DebugTag, InWorld, AxisLoc, AxisRot, Scale, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Origin FVector
---@param Direction FVector
---@param Length float
---@param AngleWidth float
---@param AngleHeight float
---@param NumSides int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugCone(DebugTag, InWorld, Origin, Direction, Length, AngleWidth, AngleHeight, NumSides, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Center FVector
---@param Radius float
---@param Segments int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
---@param YAxis FVector
---@param ZAxis FVector
---@param bDrawAxis boolean
function UX2DebugUtil:X2DrawDebugCircle2(DebugTag, InWorld, Center, Radius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness, YAxis, ZAxis, bDrawAxis) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param TransformMatrix FMatrix
---@param Radius float
---@param Segments int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
---@param bDrawAxis boolean
function UX2DebugUtil:X2DrawDebugCircle(DebugTag, InWorld, TransformMatrix, Radius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness, bDrawAxis) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Center FVector
---@param HalfHeight float
---@param Radius float
---@param Rotation FQuat
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugCapsule(DebugTag, InWorld, Center, HalfHeight, Radius, Rotation, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param Canvas UCanvas
---@param Base FVector
---@param Color FColor
---@param Radius float
---@param NumSides int32
function UX2DebugUtil:X2DrawDebugCanvasWireSphere(DebugTag, Canvas, Base, Color, Radius, NumSides) end
---@param DebugTag boolean
---@param Canvas UCanvas
---@param Transform FTransform
---@param ConeRadius float
---@param ConeAngle float
---@param ConeSides int32
---@param Color FColor
function UX2DebugUtil:X2DrawDebugCanvasWireCone(DebugTag, Canvas, Transform, ConeRadius, ConeAngle, ConeSides, Color) end
---@param DebugTag boolean
---@param Canvas UCanvas
---@param Start FVector
---@param End FVector
---@param LineColor FLinearColor
function UX2DebugUtil:X2DrawDebugCanvasLine(DebugTag, Canvas, Start, End, LineColor) end
---@param DebugTag boolean
---@param Canvas UCanvas
---@param Base FVector
---@param X FVector
---@param Y FVector
---@param Color FColor
---@param Radius float
---@param NumSides int32
function UX2DebugUtil:X2DrawDebugCanvasCircle(DebugTag, Canvas, Base, X, Y, Color, Radius, NumSides) end
---@param DebugTag boolean
---@param Canvas UCanvas
---@param StartPosition FVector2D
---@param EndPosition FVector2D
---@param LineColor FLinearColor
---@param LineThickness float
function UX2DebugUtil:X2DrawDebugCanvas2DLine2(DebugTag, Canvas, StartPosition, EndPosition, LineColor, LineThickness) end
---@param DebugTag boolean
---@param Canvas UCanvas
---@param Start FVector
---@param End FVector
---@param LineColor FLinearColor
function UX2DebugUtil:X2DrawDebugCanvas2DLine(DebugTag, Canvas, Start, End, LineColor) end
---@param DebugTag boolean
---@param Canvas UCanvas
---@param Center FVector2D
---@param Radius float
---@param NumSides int32
---@param LineColor FLinearColor
---@param LineThickness float
function UX2DebugUtil:X2DrawDebugCanvas2DCircle(DebugTag, Canvas, Center, Radius, NumSides, LineColor, LineThickness) end
---@param DebugTag boolean
---@param Canvas UCanvas
---@param Box FBox2D
---@param LineColor FLinearColor
---@param LineThickness float
function UX2DebugUtil:X2DrawDebugCanvas2DBox(DebugTag, Canvas, Box, LineColor, LineThickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Location FVector
---@param Rotation FRotator
---@param FOVDeg float
---@param Scale float
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
function UX2DebugUtil:X2DrawDebugCamera(DebugTag, InWorld, Location, Rotation, FOVDeg, Scale, Color, bPersistentLines, LifeTime, DepthPriority) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Center FVector
---@param Extent FVector
---@param Rotation FQuat
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugBox2(DebugTag, InWorld, Center, Extent, Rotation, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Center FVector
---@param Extent FVector
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugBox(DebugTag, InWorld, Center, Extent, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Origin FVector
---@param Rotation FRotator
---@param Length float
---@param AngleWidth float
---@param AngleHeight float
---@param DrawColor FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebugAltCone(DebugTag, InWorld, Origin, Rotation, Length, AngleWidth, AngleHeight, DrawColor, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param TransformMatrix FMatrix
---@param InnerRadius float
---@param OuterRadius float
---@param Segments int32
---@param Color FColor
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawDebug2DDonut(DebugTag, InWorld, TransformMatrix, InnerRadius, OuterRadius, Segments, Color, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param DebugTag boolean
---@param InWorld UWorld
---@param Base FVector
---@param X FVector
---@param Y FVector
---@param Color FColor
---@param Radius float
---@param NumSides int32
---@param bPersistentLines boolean
---@param LifeTime float
---@param DepthPriority uint8
---@param Thickness float
function UX2DebugUtil:X2DrawCircle(DebugTag, InWorld, Base, X, Y, Color, Radius, NumSides, bPersistentLines, LifeTime, DepthPriority, Thickness) end
---@param WorldCtx UObject
function UX2DebugUtil:DisableAllScreenMessages(WorldCtx) end


