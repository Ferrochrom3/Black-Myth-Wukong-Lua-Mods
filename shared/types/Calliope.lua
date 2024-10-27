---@meta

---@class ACalliopeLevelSequenceActor : ALevelSequenceActor
---@field DurationTime float
ACalliopeLevelSequenceActor = {}

---@param bInPaused boolean
function ACalliopeLevelSequenceActor:SetPaused(bInPaused) end
---@param bEnable boolean
---@param OutPerformers TSet<AActor>
function ACalliopeLevelSequenceActor:SetAllPerformerTickEnabled(bEnable, OutPerformers) end
---@param bEnable boolean
function ACalliopeLevelSequenceActor:SetAllMeshPropertyInSequence(bEnable) end
---@param InSequence ULevelSequence
function ACalliopeLevelSequenceActor:ReSetSequence(InSequence) end
---@param Mesh UMeshComponent
---@param bEnable boolean
function ACalliopeLevelSequenceActor:MeshSetClothLocalSpaceSimulation(Mesh, bEnable) end
---@param Mesh UMeshComponent
---@param DurationTimeSeconds float
---@param bEnable boolean
function ACalliopeLevelSequenceActor:MeshPrestreamTextures(Mesh, DurationTimeSeconds, bEnable) end
function ACalliopeLevelSequenceActor:LocateBoundActors() end
---@param OutBindingTags TSet<FName>
---@return int32
function ACalliopeLevelSequenceActor:GetBindingTags(OutBindingTags) end
---@param TagActors TMap<FName, AActor>
function ACalliopeLevelSequenceActor:BindActorsByTag(TagActors) end
---@param BindingName FName
---@param BindingActor AActor
function ACalliopeLevelSequenceActor:BindActorByName(BindingName, BindingActor) end


---@class FCalliopeConnectedPin
---@field NodeGuid FCalliopeGuid
---@field PinName FName
FCalliopeConnectedPin = {}



---@class FCalliopeGuid
---@field A int32
---@field B int32
---@field C int32
---@field D int32
FCalliopeGuid = {}



---@class FCalliopeParameterMapping
---@field ParamType EGsManagedParamType
---@field ParamGuid FGuid
---@field ParamDisplayName FString
---@field Actor TSoftObjectPtr<AActor>
---@field ActorGuid FString
---@field SequenceID int32
---@field TaskStage int32
---@field BuffID int32
---@field GroupId int32
---@field AiConversationIDList TArray<int32>
---@field ArchiveLabel FName
---@field bKeepOriginal boolean
---@field ParameterString FString
---@field ParameterInt int32
---@field ParameterArrayInt TArray<int32>
FCalliopeParameterMapping = {}



---@class FCalliopeParameterMappingGroup
---@field GroupGuid FGuid
---@field Mappings TArray<FCalliopeParameterMapping>
---@field Comment FString
FCalliopeParameterMappingGroup = {}



---@class FCalliopeParameters
---@field FollowPartnerConfigIDCollection TArray<FGsManagedFollowPartnerConfigID>
---@field AssociationUnitConfigIDCollection TArray<FGsManagedAssociationUnitConfigID>
---@field AssociationOnFightSkillIDCollection TArray<FGsManagedAssociationOnFightSkillID>
---@field SequenceIDCollection TArray<FGsManagedSequenceID>
---@field TaskStageCollection TArray<FGsManagedTaskStage>
---@field TaskLineCollection TArray<FGsManagedTaskLine>
---@field BuffIDCollection TArray<FGsManagedBuffID>
---@field ArchiveLabelCollection TArray<FGsManagedArchiveLabel>
---@field GroupIDCollection TArray<FGsManagedGroupID>
---@field AiConversationIDCollection TArray<FGsManagedAiConversationID>
---@field TeamIDCollection TArray<FGsManagedTeamID>
---@field IdleAMIdxCollection TArray<FGsManagedIdleAMIdx>
---@field LeisureAnimIndexCollection TArray<FGsManagedLeisureAnimIndex>
---@field InteractGroupIDCollection TArray<FGsManagedInteractGroupID>
---@field DynamicObstacleCollection TArray<FGsManagedDynamicObstacle>
---@field OverlapCollection TArray<FGsManagedOverlap>
---@field InteractorCollection TArray<FGsManagedInteractor>
---@field SpawnerCollection TArray<FGsManagedSpawner>
---@field UnitCollection TArray<FGsManagedUnit>
---@field GroupUnitCollection TArray<FGsManagedGroupUnit>
---@field NPCUnitCollection TArray<FGsManagedNPCUnit>
---@field StreamingLevelCollection TArray<FGsManagedStreamingLevel>
---@field StreamingLevelStateConfigCollection TArray<FGsManagedStreamingLevelStateConfig>
FCalliopeParameters = {}



---@class FCalliopePin
---@field PinName FName
---@field PinToolTip FString
FCalliopePin = {}



---@class FGsCalliopeNodeParam
---@field NodeGuid FCalliopeGuid
FGsCalliopeNodeParam = {}



---@class FGsDynamicObstaclePoliceConfig : FGsSceneObjPoliceConfigBase
---@field ManagePolice EGsDynamicObstacleManagePolice
---@field State EGsDynamicObstacleState
---@field OutState EGsDynamicObstacleState
---@field DefaultState EGsDynamicObstacleState
---@field ActualManagePolice EGsDynamicObstacleManagePolice
FGsDynamicObstaclePoliceConfig = {}



---@class FGsInteractorPoliceConfig : FGsSceneObjPoliceConfigBase
---@field ManagePolice EGsInteractorManagePolice
---@field State EGsInteractorState
---@field DefaultState EGsInteractorState
---@field ActualManagePolice EGsInteractorManagePolice
---@field OutState EGsInteractorState
---@field bCanModify boolean
---@field ActualValue FGsSmartParam
---@field ModifyValue FGsSmartParam
---@field DefaultValue FGsSmartParam
FGsInteractorPoliceConfig = {}



---@class FGsManagedAiConversationID : FGsManagedParamBase
---@field AiConversationIDList TArray<int32>
FGsManagedAiConversationID = {}



---@class FGsManagedArchiveLabel : FGsManagedParamBase
---@field ArchiveLabel FName
FGsManagedArchiveLabel = {}



---@class FGsManagedAssociationOnFightSkillID : FGsManagedParamBase
---@field OnFightSkillID int32
FGsManagedAssociationOnFightSkillID = {}



---@class FGsManagedAssociationUnitConfigID : FGsManagedParamBase
---@field ConfigID int32
FGsManagedAssociationUnitConfigID = {}



---@class FGsManagedBuffID : FGsManagedParamBase
---@field BuffID int32
---@field NPCUnit FGsSmartParamArray
FGsManagedBuffID = {}



---@class FGsManagedDynamicObstacle : FGsManagedSceneObjBase
---@field Actor TSoftObjectPtr<AActor>
---@field State EGsDynamicObstacleState
FGsManagedDynamicObstacle = {}



---@class FGsManagedFollowPartnerConfigID : FGsManagedParamBase
---@field ConfigID int32
FGsManagedFollowPartnerConfigID = {}



---@class FGsManagedGroupID : FGsManagedParamBase
---@field InteractorGroupID int32
FGsManagedGroupID = {}



---@class FGsManagedGroupUnit : FGsManagedGroupUnitObjBase
---@field State EGsUnitResetType
FGsManagedGroupUnit = {}



---@class FGsManagedGroupUnitObjBase : FGsManagedParamBase
---@field GroupTag FGameplayTag
---@field bNeedStateManaged boolean
FGsManagedGroupUnitObjBase = {}



---@class FGsManagedIdleAMIdx : FGsManagedParamBase
---@field IdleAMIdx int32
FGsManagedIdleAMIdx = {}



---@class FGsManagedInteractGroupID : FGsManagedParamBase
---@field InteractGroupID int32
FGsManagedInteractGroupID = {}



---@class FGsManagedInteractor : FGsManagedSceneObjBase
---@field Actor TSoftObjectPtr<AActor>
---@field State EGsInteractorState
---@field GroupId FGsSmartParam
FGsManagedInteractor = {}



---@class FGsManagedLeisureAnimIndex : FGsManagedParamBase
---@field LeisureAnimIndex int32
FGsManagedLeisureAnimIndex = {}



---@class FGsManagedNPCUnit : FGsManagedSceneObjBase
---@field Actor TSoftObjectPtr<ACharacter>
---@field Tamer TSoftObjectPtr<AActor>
---@field NPCInstanceGroup TArray<FGsNPCReferenceInfo>
---@field TeamID int32
---@field TeamIDParam FGsSmartParam
---@field IdleAMIdx int32
---@field IdleAMIdxParam FGsSmartParam
---@field LeisureAnimIndex int32
---@field LeisureAnimIndexParam FGsSmartParam
---@field InteractGroupID int32
---@field InteractGroupIDParam FGsSmartParam
---@field ShowState EGsNPCShowState
---@field ActiveInstance FGuid
FGsManagedNPCUnit = {}



---@class FGsManagedOverlap : FGsManagedSceneObjBase
---@field Actor TSoftObjectPtr<AActor>
---@field State EGsOverlapState
FGsManagedOverlap = {}



---@class FGsManagedParamBase
---@field ParamType EGsManagedParamType
---@field ConfigGuid FGuid
---@field AliasName FName
FGsManagedParamBase = {}



---@class FGsManagedSceneObjBase : FGsManagedParamBase
---@field ActorGuid FString
---@field bNeedStateManaged boolean
FGsManagedSceneObjBase = {}



---@class FGsManagedSequenceID : FGsManagedParamBase
---@field SequenceID int32
FGsManagedSequenceID = {}



---@class FGsManagedSpawner : FGsManagedSceneObjBase
---@field Actor TSoftObjectPtr<AActor>
---@field State EGsSpawnerState
FGsManagedSpawner = {}



---@class FGsManagedStreamingLevel : FGsManagedParamBase
---@field PersistentLevelName FName
---@field StreamingLevelName FName
---@field State EGsStreamingLevelState
FGsManagedStreamingLevel = {}



---@class FGsManagedStreamingLevelStateConfig : FGsManagedParamBase
---@field LevelID int32
---@field DataAssetID int32
FGsManagedStreamingLevelStateConfig = {}



---@class FGsManagedTaskLine : FGsManagedParamBase
---@field TaskLineID int32
FGsManagedTaskLine = {}



---@class FGsManagedTaskStage : FGsManagedParamBase
---@field TaskStage int32
FGsManagedTaskStage = {}



---@class FGsManagedTeamID : FGsManagedParamBase
---@field TeamID int32
FGsManagedTeamID = {}



---@class FGsManagedUnit : FGsManagedSceneObjBase
---@field Actor TSoftObjectPtr<ACharacter>
---@field Tamer TSoftObjectPtr<AActor>
---@field State EGsUnitResetType
FGsManagedUnit = {}



---@class FGsNPCReferenceInfo
---@field ConfigGuid FGuid
---@field Tamer TSoftObjectPtr<AActor>
---@field ActorGuid FString
---@field AliasName FName
FGsNPCReferenceInfo = {}



---@class FGsNPCUnitBuffParamConfig
---@field ConfigGuid FGuid
---@field bCanModify boolean
---@field ActualParam EGsNPCBuffState
---@field ModifyParam EGsNPCBuffState
---@field DefaultParam EGsNPCBuffState
---@field OutParam EGsNPCBuffState
FGsNPCUnitBuffParamConfig = {}



---@class FGsNPCUnitGuidParamConfig
---@field bCanModify boolean
---@field ActualParam FGuid
---@field ModifyParam FGuid
---@field DefaultParam FGuid
---@field OutParam FGuid
FGsNPCUnitGuidParamConfig = {}



---@class FGsNPCUnitIntParamConfig
---@field bCanModify boolean
---@field ActualParam int32
---@field ModifyParam int32
---@field DefaultParam int32
---@field OutParam int32
FGsNPCUnitIntParamConfig = {}



---@class FGsNPCUnitPoliceConfig : FGsSceneObjPoliceConfigBase
---@field ManagedTeamID FGsNPCUnitIntParamConfig
---@field ManagedTeamIDParam FGsNPCUnitSmartParamConfig
---@field ManagedIdleAMIdx FGsNPCUnitIntParamConfig
---@field ManagedIdleAMIdxParam FGsNPCUnitSmartParamConfig
---@field ManagedLeisureAnimIndex FGsNPCUnitIntParamConfig
---@field ManagedLeisureAnimIndexParam FGsNPCUnitSmartParamConfig
---@field ManagedInteractGroupID FGsNPCUnitIntParamConfig
---@field ManagedInteractGroupIDParam FGsNPCUnitSmartParamConfig
---@field ManagedShowState FGsNPCUnitShowStateParamConfig
---@field ManagedActiveInstance FGsNPCUnitGuidParamConfig
---@field ManagedBuffIDList TArray<FGsNPCUnitBuffParamConfig>
FGsNPCUnitPoliceConfig = {}



---@class FGsNPCUnitShowStateParamConfig
---@field bCanModify boolean
---@field ActualParam EGsNPCShowState
---@field ModifyParam EGsNPCShowState
---@field DefaultParam EGsNPCShowState
---@field OutParam EGsNPCShowState
FGsNPCUnitShowStateParamConfig = {}



---@class FGsNPCUnitSmartParamConfig
---@field bCanModify boolean
---@field ActualParam FGsSmartParam
---@field ModifyParam FGsSmartParam
---@field DefaultParam FGsSmartParam
---@field OutParam FGsSmartParam
FGsNPCUnitSmartParamConfig = {}



---@class FGsOverlapPoliceConfig : FGsSceneObjPoliceConfigBase
---@field ManagePolice EGsOverlapManagePolice
---@field State EGsOverlapState
---@field OutState EGsOverlapState
---@field DefaultState EGsOverlapState
---@field ActualManagePolice EGsOverlapManagePolice
FGsOverlapPoliceConfig = {}



---@class FGsSceneObjPoliceConfig
---@field DynamicObstacleCollection TArray<FGsDynamicObstaclePoliceConfig>
---@field OverlapCollection TArray<FGsOverlapPoliceConfig>
---@field InteractorCollection TArray<FGsInteractorPoliceConfig>
---@field SpawnerCollection TArray<FGsSpawnerPoliceConfig>
---@field UnitCollection TArray<FGsUnitPoliceConfig>
---@field GroupUnitCollection TArray<FGsUnitPoliceConfig>
---@field NPCUnitCollection TArray<FGsNPCUnitPoliceConfig>
---@field StreamingLevelCollection TArray<FGsStreamingLevelPoliceConfig>
---@field StreamingLevelStateConfigCollection TArray<FGsStreamingLevelStateConfigPoliceConfig>
FGsSceneObjPoliceConfig = {}



---@class FGsSceneObjPoliceConfigBase
---@field ConfigGuid FGuid
FGsSceneObjPoliceConfigBase = {}



---@class FGsSmartParam
---@field ConfigGuid FGuid
FGsSmartParam = {}



---@class FGsSmartParamArray
---@field ConfigGuides TArray<FGuid>
FGsSmartParamArray = {}



---@class FGsSpawnerPoliceConfig : FGsSceneObjPoliceConfigBase
---@field ManagePolice EGsSpawnerManagePolice
---@field State EGsSpawnerState
---@field DefaultState EGsSpawnerState
---@field ActualManagePolice EGsSpawnerManagePolice
---@field OutState EGsSpawnerState
FGsSpawnerPoliceConfig = {}



---@class FGsStreamingLevelPoliceConfig : FGsSceneObjPoliceConfigBase
---@field ManagePolice EGsStreamingLevelManagePolice
---@field State EGsStreamingLevelState
---@field DefaultState EGsStreamingLevelState
---@field ActualManagePolice EGsStreamingLevelManagePolice
---@field OutState EGsStreamingLevelState
FGsStreamingLevelPoliceConfig = {}



---@class FGsStreamingLevelStateConfigIntParamConfig
---@field bCanModify boolean
---@field ActualParam int32
---@field ModifyParam int32
---@field DefaultParam int32
---@field OutParam int32
FGsStreamingLevelStateConfigIntParamConfig = {}



---@class FGsStreamingLevelStateConfigPoliceConfig : FGsSceneObjPoliceConfigBase
---@field ManagedDataAssetID FGsStreamingLevelStateConfigIntParamConfig
FGsStreamingLevelStateConfigPoliceConfig = {}



---@class FGsUnitPoliceConfig : FGsSceneObjPoliceConfigBase
---@field ManagePolice EGsUnitManagePolice
---@field State EGsUnitResetType
---@field DefaultState EGsUnitResetType
---@field ActualManagePolice EGsUnitManagePolice
---@field OutState EGsUnitResetType
FGsUnitPoliceConfig = {}



---@class FMovieSceneCalliopeNormalTemplate : FMovieSceneCalliopeTemplateBase
---@field EventName FString
---@field Section UMovieSceneCalliopeNormalSection
FMovieSceneCalliopeNormalTemplate = {}



---@class FMovieSceneCalliopeNotifyStateTemplate : FMovieSceneCalliopeTemplateBase
---@field EventName FString
FMovieSceneCalliopeNotifyStateTemplate = {}



---@class FMovieSceneCalliopeNotifyTemplate : FMovieSceneCalliopeTemplateBase
---@field EventTimes TArray<FFrameNumber>
---@field EventNames TArray<FString>
FMovieSceneCalliopeNotifyTemplate = {}



---@class FMovieSceneCalliopeTemplateBase : FMovieSceneEvalTemplate
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
FMovieSceneCalliopeTemplateBase = {}



---@class ICalliopeInteract : IInterface
ICalliopeInteract = {}


---@class ICalliopeSequencePerformer : IInterface
ICalliopeSequencePerformer = {}


---@class IGsSmartParamObject : IInterface
IGsSmartParamObject = {}


---@class UCalliopeAsset : UObject
---@field CustomInputs FGameplayTagContainer
---@field CustomOutputs FGameplayTagContainer
---@field Nodes TMap<FCalliopeGuid, UCalliopeNode>
---@field PreloadedNodes TSet<UCalliopeNode>
---@field ActiveNodes TArray<UCalliopeNode>
---@field RecordedNodes TArray<UCalliopeNode>
---@field ExecuteHistory TArray<int32>
---@field LastEditedDocuments TArray<FEditedDocumentInfo>
---@field BranchGraphNames TSet<FName>
---@field BranchGraphSchema TSubclassOf<UEdGraphSchema>
---@field CategorySorting TArray<FName>
---@field NeedPreloadAssets TArray<FSoftObjectPath>
---@field CalliopeParameters FCalliopeParameters
---@field SearchNodeGuid FString
---@field SearchNodeIndex int32
---@field TemplateAsset UCalliopeAsset
---@field ActiveInstances TArray<UCalliopeAsset>
UCalliopeAsset = {}

---@param ObjectPath FString
---@param ActorGuid FString
---@param AliasName FName
function UCalliopeAsset:UpdateParameterActorReferenceAndAliasName(ObjectPath, ActorGuid, AliasName) end
---@param NodeGuid FCalliopeGuid
function UCalliopeAsset:UnregisterNode(NodeGuid) end
function UCalliopeAsset:StartInstance() end
---@param ParentInstance UCalliopeAsset
---@param InSubNodeGuid FCalliopeGuid
function UCalliopeAsset:StartAsSubInstance(ParentInstance, InSubNodeGuid) end
---@param InGuid FCalliopeGuid
---@param CalliopeAsset UCalliopeAsset
function UCalliopeAsset:SetSubGraphAssetInPIE(InGuid, CalliopeAsset) end
---@param GraphName FName
function UCalliopeAsset:RemoveBranchGraph(GraphName) end
---@param NewGuid FCalliopeGuid
---@param NewNode UCalliopeNode
function UCalliopeAsset:RegisterNode(NewGuid, NewNode) end
---@param InGuid FCalliopeGuid
---@param InPinName FName
function UCalliopeAsset:RecordOutput(InGuid, InPinName) end
---@param InGuid FCalliopeGuid
function UCalliopeAsset:RecordOnlyNode(InGuid) end
---@param InGuid FCalliopeGuid
---@param InPinName FName
function UCalliopeAsset:RecordInput(InGuid, InPinName) end
function UCalliopeAsset:PreFinishInstance() end
function UCalliopeAsset:PostStartInstance() end
function UCalliopeAsset:PostRefreshAssetInCS() end
---@param bDuplicateForPIE boolean
function UCalliopeAsset:PostDuplicateInCS(bDuplicateForPIE) end
function UCalliopeAsset:OnRefreshAssetInCS() end
---@param MemberName FString
---@param PropertyName FString
function UCalliopeAsset:OnPropertyChanged(MemberName, PropertyName) end
---@param Node UCalliopeNode
function UCalliopeAsset:OnNodeDeactivate(Node) end
---@param Node UCalliopeNode
function UCalliopeAsset:OnNodeActivate(Node) end
---@return boolean
function UCalliopeAsset:IsEditorOnlyCS() end
function UCalliopeAsset:HarvestNodeConnections() end
---@return ECalliopeViewType
function UCalliopeAsset:GetViewType() end
---@return UClass
function UCalliopeAsset:GetStartNodeClassInBranchGraph() end
---@return UClass
function UCalliopeAsset:GetStartNodeClass() end
---@return UClass
function UCalliopeAsset:GetRerouteNodeClassInBranchGraph() end
---@return UClass
function UCalliopeAsset:GetRerouteNodeClass() end
---@param InConfigGuid FCalliopeGuid
---@param OutTaskStageID int32
---@return boolean
function UCalliopeAsset:GetParameterTaskStateIDByConfigGuid(InConfigGuid, OutTaskStageID) end
---@param InConfigGuid FCalliopeGuid
---@param OutSequenceID int32
---@return boolean
function UCalliopeAsset:GetParameterSequenceIDByConfigGuid(InConfigGuid, OutSequenceID) end
---@param InConfigGuid FCalliopeGuid
---@param InPropertyName FString
---@param OutDisplayName FString
---@return boolean
function UCalliopeAsset:GetParameterDisplayNameByConfigGuid(InConfigGuid, InPropertyName, OutDisplayName) end
---@param ParamType EGsManagedParamType
---@param ParamValueString FString
---@param ParamValueInt int32
---@param ParamValueName FName
---@param OutGuid FCalliopeGuid
---@return boolean
function UCalliopeAsset:GetParameterConfigGuidByActorGuid(ParamType, ParamValueString, ParamValueInt, ParamValueName, OutGuid) end
---@param InConfigGuid FCalliopeGuid
---@param OutBuffID int32
---@return boolean
function UCalliopeAsset:GetParameterBuffIDByConfigGuid(InConfigGuid, OutBuffID) end
---@param InConfigGuid FCalliopeGuid
---@param OutActorGuid FString
---@return boolean
function UCalliopeAsset:GetParameterActorGuidByConfigGuid(InConfigGuid, OutActorGuid) end
---@return TMap<FCalliopeGuid, UCalliopeNode>
function UCalliopeAsset:GetNodes() end
---@param InGuid FCalliopeGuid
---@return UCalliopeNode
function UCalliopeAsset:GetNode(InGuid) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeAsset:GetExtraDefaultOutputNodesInBranchGraph(OutClasses) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeAsset:GetExtraDefaultOutputNodes(OutClasses) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeAsset:GetExtraDefaultInputNodesInBranchGraph(OutClasses) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeAsset:GetExtraDefaultInputNodes(OutClasses) end
---@return TArray<FName>
function UCalliopeAsset:GetCustomOutputs() end
---@return TArray<FName>
function UCalliopeAsset:GetCustomInputs() end
function UCalliopeAsset:FinishInstance() end
---@return boolean
function UCalliopeAsset:ExportToData() end
function UCalliopeAsset:ExecuteSubGraphReconstructionRequested() end
---@param InGuid FCalliopeGuid
function UCalliopeAsset:DeactivateNode(InGuid) end
---@param Owner UObject
---@param CalliopeAsset UCalliopeAsset
---@param InstancePrefixName FString
---@return UCalliopeAsset
function UCalliopeAsset:CreateInstance(Owner, CalliopeAsset, InstancePrefixName) end
function UCalliopeAsset:ClearRecordData() end
function UCalliopeAsset:ClearParameters() end
function UCalliopeAsset:ClearInvalidBranchGraph() end
function UCalliopeAsset:BroadcastRegenerateToolbars() end
---@param InConfigGuid FCalliopeGuid
---@param ObjectPath FString
function UCalliopeAsset:AssignParameterUnitTamerReference(InConfigGuid, ObjectPath) end
---@param ParamType EGsManagedParamType
---@param ObjectPath FString
---@param ActorGuid FString
---@param AliasName FName
---@param State int32
---@param OutConfigGuid FCalliopeGuid
---@return boolean
function UCalliopeAsset:AddParameter(ParamType, ObjectPath, ActorGuid, AliasName, State, OutConfigGuid) end
---@param GraphName FName
function UCalliopeAsset:AddBranchGraph(GraphName) end


---@class UCalliopeFunctionLibrary : UBlueprintFunctionLibrary
UCalliopeFunctionLibrary = {}

---@param InSequence UMovieScene
function UCalliopeFunctionLibrary:MarkDirtyAllCalliopeTrack(InSequence) end


---@class UCalliopeGameplayTagLibrary : UBlueprintGameplayTagLibrary
UCalliopeGameplayTagLibrary = {}

---@param TagStr FString
---@return FGameplayTag
function UCalliopeGameplayTagLibrary:MakeGameplayTagFromString(TagStr) end
---@param TagName FName
---@return FGameplayTag
function UCalliopeGameplayTagLibrary:MakeGameplayTagFromName(TagName) end
---@return FGameplayTagContainer
function UCalliopeGameplayTagLibrary:MakeGameplayTagContainer() end
---@param TagContainer FGameplayTagContainer
---@param TagName FName
---@param bExactMatch boolean
---@return boolean
function UCalliopeGameplayTagLibrary:HasTagName(TagContainer, TagName, bExactMatch) end
---@param Container FGameplayTagContainer
---@param OtherContainer FGameplayTagContainer
---@param bExactMatch boolean
---@return FGameplayTagContainer
function UCalliopeGameplayTagLibrary:FilterTags(Container, OtherContainer, bExactMatch) end
---@param Container FGameplayTagContainer
---@param Tag FGameplayTag
---@param bExactMatch boolean
---@return FGameplayTagContainer
function UCalliopeGameplayTagLibrary:FilterTag(Container, Tag, bExactMatch) end
---@param NewTag FString
---@param Comment FString
---@param TagSourceName FName
---@param bIsRestrictedTag boolean
---@param bAllowNonRestrictedChildren boolean
---@return boolean
function UCalliopeGameplayTagLibrary:AddGamePlayTagToINI(NewTag, Comment, TagSourceName, bIsRestrictedTag, bAllowNonRestrictedChildren) end


---@class UCalliopeInteractor : UObject
UCalliopeInteractor = {}

function UCalliopeInteractor:UnregisterInstance() end
---@param Node UCalliopeNode
---@param InEventName FName
---@return boolean
function UCalliopeInteractor:SetCustomOutputNodeEventName(Node, InEventName) end
---@param Node UCalliopeNode
---@param InEventName FName
---@return boolean
function UCalliopeInteractor:SetCustomInputNodeEventName(Node, InEventName) end
---@param Instance UCalliopeInteractor
function UCalliopeInteractor:RegisterInstance(Instance) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeInteractor:GetSubGraphNodeClasses(OutClasses) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeInteractor:GetStartNodeClasses(OutClasses) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeInteractor:GetRerouteNodeClasses(OutClasses) end
---@return UCalliopeInteractor
function UCalliopeInteractor:GetInstanceChecked() end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeInteractor:GetFinishNodeClasses(OutClasses) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeInteractor:GetExecutionSequenceNodeClasses(OutClasses) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeInteractor:GetExecutionMultiGateNodeClasses(OutClasses) end
---@param Node UCalliopeNode
---@param OutEventName FName
---@return boolean
function UCalliopeInteractor:GetCustomOutputNodeEventName(Node, OutEventName) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeInteractor:GetCustomOutputNodeClasses(OutClasses) end
---@param Node UCalliopeNode
---@param OutEventName FName
---@return boolean
function UCalliopeInteractor:GetCustomInputNodeEventName(Node, OutEventName) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeInteractor:GetCustomInputNodeClasses(OutClasses) end
---@param OutClasses TArray<UClass>
---@return int32
function UCalliopeInteractor:GetComponentObserverNodeClasses(OutClasses) end
---@param InViewType ECalliopeViewType
---@return UClass
function UCalliopeInteractor:GetAssetClass(InViewType) end
---@param InCalliopeGuid FCalliopeGuid
---@return FGuid
function UCalliopeInteractor:ConvertCalliopeGuidToGuid(InCalliopeGuid) end


---@class UCalliopeLevelSequencePlayer : ULevelSequencePlayer
---@field MovieInstanceIndex int32
---@field SeqJumpError float
---@field EventReceiver UObject
UCalliopeLevelSequencePlayer = {}

---@param InFrameLabel FString
---@param OutTimeSecond float
---@return boolean
function UCalliopeLevelSequencePlayer:TryGetMarkedSecond(InFrameLabel, OutTimeSecond) end
---@param InFrameLabel FString
---@param OutFrameTime FFrameTime
---@return boolean
function UCalliopeLevelSequencePlayer:TryGetMarkedFrameTime(InFrameLabel, OutFrameTime) end
function UCalliopeLevelSequencePlayer:StopLooping() end
---@param InEventReceiver UObject
function UCalliopeLevelSequencePlayer:SetEventReceiver(InEventReceiver) end
---@return UObject
function UCalliopeLevelSequencePlayer:GetPlaybackContext() end
---@param InMovieScene UMovieScene
function UCalliopeLevelSequencePlayer:FixSectionData(InMovieScene) end
---@param WorldContextObject UObject
---@param LevelSequence ULevelSequence
---@param Settings FMovieSceneSequencePlaybackSettings
---@param CameraSettings FLevelSequenceCameraSettings
---@param OutActor ACalliopeLevelSequenceActor
---@return UCalliopeLevelSequencePlayer
function UCalliopeLevelSequencePlayer:CreateCalliopeLevelSequencePlayer(WorldContextObject, LevelSequence, Settings, CameraSettings, OutActor) end


---@class UCalliopeMovieSceneCameraCutSection : UMovieSceneSection
---@field bLockPreviousCamera boolean
---@field CameraGuid FGuid
---@field CameraBindingID FMovieSceneObjectBindingID
---@field InitialCameraCutTransform FTransform
---@field bHasInitialCameraCutTransform boolean
UCalliopeMovieSceneCameraCutSection = {}

---@param InCameraBindingID FMovieSceneObjectBindingID
function UCalliopeMovieSceneCameraCutSection:SetCameraBindingID(InCameraBindingID) end
---@return FMovieSceneObjectBindingID
function UCalliopeMovieSceneCameraCutSection:GetCameraBindingID() end


---@class UCalliopeMovieSceneCameraCutTrack : UMovieSceneNameableTrack
---@field bCanBlend boolean
---@field Sections TArray<UMovieSceneSection>
UCalliopeMovieSceneCameraCutTrack = {}



---@class UCalliopeMovieSceneCameraCutTrackInstance : UMovieSceneTrackInstance
UCalliopeMovieSceneCameraCutTrackInstance = {}


---@class UCalliopeMovieSceneCinematicShotTrack : UMovieSceneSubTrack
UCalliopeMovieSceneCinematicShotTrack = {}


---@class UCalliopeNode : UObject
---@field GraphNode UEdGraphNode
---@field bSupportsContextPins boolean
---@field Category FString
---@field NodeStyle ECalliopeNodeStyle
---@field InputPins TArray<FCalliopePin>
---@field OutputPins TArray<FCalliopePin>
---@field Connections TMap<FName, FCalliopeConnectedPin>
---@field NodeGuid FGuid
---@field bNodeHasError boolean
---@field bBossPhaseRequireActive boolean
---@field NodeIndex int32
---@field InputNames TArray<FName>
---@field OutputNames TArray<FName>
---@field ParentNode FGsCalliopeNodeParam
---@field SceneObjPoliceConfig FGsSceneObjPoliceConfig
UCalliopeNode = {}

---@param Asset UCalliopeAsset
function UCalliopeNode:UnBindAssetOnSubGraphReconstructionRequested(Asset) end
function UCalliopeNode:SyncSceneObjPoliceConfig() end
---@param InSubGraphAsset UCalliopeAsset
function UCalliopeNode:SetSubGraphAssetInPIE(InSubGraphAsset) end
---@param InOutputPins TArray<FCalliopePin>
function UCalliopeNode:SetOutputPins(InOutputPins) end
---@param InInputPins TArray<FCalliopePin>
function UCalliopeNode:SetInputPins(InInputPins) end
---@param InConnections TMap<FName, FCalliopeConnectedPin>
function UCalliopeNode:SetConnections(InConnections) end
function UCalliopeNode:ResetRecordsInCS() end
---@param PreviousNode UCalliopeNode
function UCalliopeNode:RefreshSceneObjPoliceConfig(PreviousNode) end
function UCalliopeNode:RefreshParentNode() end
---@param PinName FName
function UCalliopeNode:RecordOutput(PinName) end
---@param PinName FName
function UCalliopeNode:RecordInput(PinName) end
---@param PropertyName FString
function UCalliopeNode:PrePropertyChanged(PropertyName) end
---@param MemberName FString
---@param PropertyName FString
function UCalliopeNode:PostPropertyChanged(MemberName, PropertyName) end
function UCalliopeNode:PostLoadInCS() end
function UCalliopeNode:OnSelectNodeInCS() end
function UCalliopeNode:OnRefreshAssetInCS() end
---@param Message FString
function UCalliopeNode:LogError(Message) end
---@param AssetPtr TSoftObjectPtr<UCalliopeAsset>
---@return UCalliopeAsset
function UCalliopeNode:LoadAssetInCS(AssetPtr) end
function UCalliopeNode:JumpToMe() end
---@param InViewType ECalliopeViewType
---@return boolean
function UCalliopeNode:IsSupportViewType(InViewType) end
---@return boolean
function UCalliopeNode:IsSubGraphNode() end
---@return boolean
function UCalliopeNode:IsPreloaded() end
---@return boolean
function UCalliopeNode:IsPlayInEditor() end
---@param TargetNodeGuid FCalliopeGuid
---@return boolean
function UCalliopeNode:IsOutputConnectTo(TargetNodeGuid) end
---@return boolean
function UCalliopeNode:IsCalliopeWasActive() end
---@return boolean
function UCalliopeNode:IsCalliopeNeverActivated() end
---@return boolean
function UCalliopeNode:IsCalliopeActive() end
---@return boolean
function UCalliopeNode:IsBranchGraphNode() end
---@return boolean
function UCalliopeNode:IsBattleStateNode() end
---@return FString
function UCalliopeNode:GetStatusStringInCS() end
---@return TArray<FCalliopeGuid>
function UCalliopeNode:GetParentNodes() end
---@return TArray<FCalliopePin>
function UCalliopeNode:GetOutputPins() end
---@return TArray<FName>
function UCalliopeNode:GetOutputNames() end
---@return FString
function UCalliopeNode:GetNodeDescriptionInCS() end
---@return TArray<FCalliopePin>
function UCalliopeNode:GetInputPins() end
---@return TArray<FName>
function UCalliopeNode:GetInputNames() end
---@return FCalliopeGuid
function UCalliopeNode:GetGuid() end
---@return UEdGraphNode
function UCalliopeNode:GetGraphNodeInCS() end
---@param OutGraphIdentifier FName
---@return boolean
function UCalliopeNode:GetGraphIdentifierInCS(OutGraphIdentifier) end
---@param OutGraphGuid FCalliopeGuid
---@return boolean
function UCalliopeNode:GetGraphGuidInCS(OutGraphGuid) end
---@return FCalliopePin
function UCalliopeNode:GetDefaultOutputPin() end
---@return FCalliopePin
function UCalliopeNode:GetDefaultInputPin() end
---@return TArray<FName>
function UCalliopeNode:GetContextOutputsInCS() end
---@return TArray<FName>
function UCalliopeNode:GetContextInputsInCS() end
---@return TMap<FName, FCalliopeConnectedPin>
function UCalliopeNode:GetConnections() end
---@param OutputName FName
---@return FCalliopeConnectedPin
function UCalliopeNode:GetConnection(OutputName) end
---@return UCalliopeAsset
function UCalliopeNode:GetCalliopeAsset() end
---@param OutBranchGraphIdentifier FString
---@return boolean
function UCalliopeNode:GetBranchGraphToEditInCS(OutBranchGraphIdentifier) end
---@return UObject
function UCalliopeNode:GetAssetToEditInCS() end
---@return FString
function UCalliopeNode:GetAssetPathInCS() end
---@return AActor
function UCalliopeNode:GetActorToFocusInCS() end
function UCalliopeNode:ForceRefreshDetailView() end
function UCalliopeNode:ExecuteOnReconstructionRequested() end
function UCalliopeNode:Deactivate() end
function UCalliopeNode:Cleanup() end
---@param PreviousNodeGuid FCalliopeGuid
---@return boolean
function UCalliopeNode:CheckCanPassNodeInfo(PreviousNodeGuid) end
---@return boolean
function UCalliopeNode:CanUserAddOutputInCS() end
---@return boolean
function UCalliopeNode:CanUserAddInputInCS() end
---@param Asset UCalliopeAsset
function UCalliopeNode:BindAssetOnSubGraphReconstructionRequested(Asset) end
---@param InIndex int32
---@param InGroupIDIndex int32
function UCalliopeNode:AssignInteractorGroupIDPolice(InIndex, InGroupIDIndex) end
---@param PinNames TArray<FName>
function UCalliopeNode:AddOutputPins(PinNames) end
---@param PinNames TArray<FName>
function UCalliopeNode:AddInputPins(PinNames) end
function UCalliopeNode:Activate() end


---@class UCalliopeParameterMappingDataAsset : UPrimaryDataAsset
---@field MappedAsset TSoftObjectPtr<UCalliopeAsset>
---@field bRunTemplateInstance boolean
---@field Groups TArray<FCalliopeParameterMappingGroup>
UCalliopeParameterMappingDataAsset = {}

function UCalliopeParameterMappingDataAsset:RefreshParameters() end
function UCalliopeParameterMappingDataAsset:RefreshGroupsParameterValue() end


---@class UCalliopeSettings : UDeveloperSettings
---@field bEnableDebugLogs boolean
---@field bCreateCalliopeSubsystemOnClients boolean
---@field DefaultPreloadDepth TMap<TSubclassOf<UCalliopeNode>, int32>
UCalliopeSettings = {}



---@class UMovieSceneCalliopeNormalSection : UMovieSceneCalliopeSectionBase
---@field SectionNameForShow FName
UMovieSceneCalliopeNormalSection = {}

---@param InSectionData UMovieSceneCalliopeSectionData
function UMovieSceneCalliopeNormalSection:SectionBeingDestroyed(InSectionData) end
---@return UMovieSceneCalliopeSectionData
function UMovieSceneCalliopeNormalSection:MakeSectionData() end
---@return float
function UMovieSceneCalliopeNormalSection:GetStartTime() end
---@return float
function UMovieSceneCalliopeNormalSection:GetMovieMaxDuration() end
---@return float
function UMovieSceneCalliopeNormalSection:GetEndTime() end
---@return float
function UMovieSceneCalliopeNormalSection:GetDurationTime() end
---@param InSectionData UMovieSceneCalliopeSectionData
function UMovieSceneCalliopeNormalSection:Evaluate(InSectionData) end


---@class UMovieSceneCalliopeNotifySection : UMovieSceneCalliopeSectionBase
---@field NotifyNameForShow FName
UMovieSceneCalliopeNotifySection = {}

---@param InPlaybackContext UObject
---@param InStatus int32
---@param bInBackwards boolean
function UMovieSceneCalliopeNotifySection:OnPreviewNotify(InPlaybackContext, InStatus, bInBackwards) end
---@param Player UCalliopeLevelSequencePlayer
---@param InStatus int32
---@param bInBackwards boolean
function UMovieSceneCalliopeNotifySection:OnNotify(Player, InStatus, bInBackwards) end
---@return float
function UMovieSceneCalliopeNotifySection:GetDurationTime() end


---@class UMovieSceneCalliopeNotifyStateSection : UMovieSceneCalliopeSectionBase
---@field NotifyStateNameForShow FName
UMovieSceneCalliopeNotifyStateSection = {}

---@param InPlaybackContext UObject
---@param InStatus int32
---@param bInBackwards boolean
function UMovieSceneCalliopeNotifyStateSection:OnPreviewNotifyTick(InPlaybackContext, InStatus, bInBackwards) end
---@param InPlaybackContext UObject
---@param InStatus int32
---@param bInBackwards boolean
function UMovieSceneCalliopeNotifyStateSection:OnPreviewNotifyEnd(InPlaybackContext, InStatus, bInBackwards) end
---@param InPlaybackContext UObject
---@param InStatus int32
---@param bInBackwards boolean
function UMovieSceneCalliopeNotifyStateSection:OnPreviewNotifyBegin(InPlaybackContext, InStatus, bInBackwards) end
---@param Player UCalliopeLevelSequencePlayer
---@param InStatus int32
---@param bInBackwards boolean
function UMovieSceneCalliopeNotifyStateSection:OnNotifyTick(Player, InStatus, bInBackwards) end
---@param Player UCalliopeLevelSequencePlayer
---@param InStatus int32
---@param bInBackwards boolean
function UMovieSceneCalliopeNotifyStateSection:OnNotifyEnd(Player, InStatus, bInBackwards) end
---@param Player UCalliopeLevelSequencePlayer
---@param InStatus int32
---@param bInBackwards boolean
function UMovieSceneCalliopeNotifyStateSection:OnNotifyBegin(Player, InStatus, bInBackwards) end
---@return float
function UMovieSceneCalliopeNotifyStateSection:GetDurationTime() end


---@class UMovieSceneCalliopeSectionBase : UMovieSceneSection
---@field PlaybackRange FMovieSceneFrameRange
UMovieSceneCalliopeSectionBase = {}

---@return FString
function UMovieSceneCalliopeSectionBase:GetDisplayName() end


---@class UMovieSceneCalliopeSectionData : UObject
---@field bValid boolean
---@field bIsPreview boolean
UMovieSceneCalliopeSectionData = {}

---@return boolean
function UMovieSceneCalliopeSectionData:IsSilent() end
---@return boolean
function UMovieSceneCalliopeSectionData:IsOperandValid() end
---@return boolean
function UMovieSceneCalliopeSectionData:IsForwardPlay() end
---@return boolean
function UMovieSceneCalliopeSectionData:HasJumped() end
---@return float
function UMovieSceneCalliopeSectionData:GetTimeInSeconds() end
---@return EMovieScenePlayerStatus::Type
function UMovieSceneCalliopeSectionData:GetStatus() end
---@return int32
function UMovieSceneCalliopeSectionData:GetSequenceID() end
---@return UObject
function UMovieSceneCalliopeSectionData:GetPlaybackContext() end
---@return FCalliopeGuid
function UMovieSceneCalliopeSectionData:GetObjectBindingID() end
---@return UCalliopeLevelSequencePlayer
function UMovieSceneCalliopeSectionData:GetCalliopePlayer() end


---@class UMovieSceneCalliopeTrack : UMovieSceneNameableTrack
---@field bFireEventsWhenForwards boolean
---@field bFireEventsWhenBackwards boolean
---@field EventPosition EFireEventsAtPosition
---@field Sections TArray<UMovieSceneSection>
UMovieSceneCalliopeTrack = {}



