---@meta

---@class FSubstanceConnection
---@field OutputIdentifier FString
---@field InputImageIdentifier FString
FSubstanceConnection = {}



---@class FSubstanceFloatInputDesc : FSubstanceInputDesc
---@field Min TArray<float>
---@field Max TArray<float>
---@field Default TArray<float>
FSubstanceFloatInputDesc = {}



---@class FSubstanceInputDesc
---@field Name FString
---@field Type ESubstanceInputType
FSubstanceInputDesc = {}



---@class FSubstanceInstanceDesc
---@field Name FString
---@field Inputs TArray<FSubstanceInputDesc>
FSubstanceInstanceDesc = {}



---@class FSubstanceIntInputDesc : FSubstanceInputDesc
---@field Min TArray<int32>
---@field Max TArray<int32>
---@field Default TArray<int32>
FSubstanceIntInputDesc = {}



---@class USubstanceGraphInstance : UObject
---@field PackageURL FString
---@field ParentFactory USubstanceInstanceFactory
---@field ImageSources TMap<uint32, USubstanceImageInput>
---@field CreatedMaterial UMaterial
---@field OutputTextureLinkData TMap<int32, FGuid>
---@field bIsFrozen boolean
USubstanceGraphInstance = {}

---@param Identifier FString
---@param Value FString
function USubstanceGraphInstance:SetInputString(Identifier, Value) end
---@param Identifier FString
---@param InputValues TArray<int32>
function USubstanceGraphInstance:SetInputInt(Identifier, InputValues) end
---@param InputName FString
---@param Value UObject
---@return boolean
function USubstanceGraphInstance:SetInputImg(InputName, Value) end
---@param Identifier FString
---@param InputValues TArray<float>
function USubstanceGraphInstance:SetInputFloat(Identifier, InputValues) end
---@param Identifier FString
---@param Color FLinearColor
function USubstanceGraphInstance:SetInputColor(Identifier, Color) end
---@param Identifier FString
---@param Bool boolean
function USubstanceGraphInstance:SetInputBool(Identifier, Bool) end
---@param Identifier FString
---@return FSubstanceIntInputDesc
function USubstanceGraphInstance:GetIntInputDesc(Identifier) end
---@return FSubstanceInstanceDesc
function USubstanceGraphInstance:GetInstanceDesc() end
---@param InputName FString
---@return ESubstanceInputType
function USubstanceGraphInstance:GetInputType(InputName) end
---@param Identifier FString
---@return FString
function USubstanceGraphInstance:GetInputString(Identifier) end
---@return TArray<FString>
function USubstanceGraphInstance:GetInputNames() end
---@param Identifier FString
---@return TArray<int32>
function USubstanceGraphInstance:GetInputInt(Identifier) end
---@param Identifier FString
---@return TArray<float>
function USubstanceGraphInstance:GetInputFloat(Identifier) end
---@param Identifier FString
---@return FLinearColor
function USubstanceGraphInstance:GetInputColor(Identifier) end
---@param Identifier FString
---@return boolean
function USubstanceGraphInstance:GetInputBool(Identifier) end
---@param Identifier FString
---@return FSubstanceFloatInputDesc
function USubstanceGraphInstance:GetFloatInputDesc(Identifier) end


---@class USubstanceImageInput : UObject
---@field CompressionLevelRGB int32
---@field CompressionLevelAlpha int32
---@field SizeX int32
---@field SizeY int32
---@field NumComponents int32
---@field SourceFilePath FString
---@field SourceFileTimestamp FString
---@field Consumers TArray<USubstanceGraphInstance>
USubstanceImageInput = {}



---@class USubstanceInstanceFactory : UObject
---@field mGraphInstances TArray<USubstanceGraphInstance>
---@field RelativeSourceFilePath FString
---@field AbsoluteSourceFilePath FString
---@field SourceFileTimestamp FString
---@field GenerationMode ESubstanceGenerationMode
USubstanceInstanceFactory = {}



---@class USubstanceSettings : UObject
---@field MemoryBudgetMb int32
---@field CPUCores int32
---@field AsyncLoadMipClip int32
---@field MaxAsyncSubstancesRenderedPerFrame int32
---@field DefaultGenerationMode ESubstanceGenerationMode
---@field SubstanceEngine ESubstanceEngineType
---@field DefaultSubstanceOutputSizeX EDefaultSubstanceTextureSize
---@field DefaultSubstanceOutputSizeY EDefaultSubstanceTextureSize
USubstanceSettings = {}



---@class USubstanceTexture2D : UTexture2DDynamic
---@field ParentInstance USubstanceGraphInstance
---@field AddressX TextureAddress
---@field AddressY TextureAddress
---@field bCooked boolean
USubstanceTexture2D = {}

---@return ESubChannelType
function USubstanceTexture2D:GetChannel() end


---@class USubstanceUtility : UBlueprintFunctionLibrary
USubstanceUtility = {}

---@param InstancesToRender USubstanceGraphInstance
function USubstanceUtility:SyncRendering(InstancesToRender) end
---@param GraphInstance USubstanceGraphInstance
---@param Width int32
---@param Height int32
function USubstanceUtility:SetGraphInstanceOutputSizeInt(GraphInstance, Width, Height) end
---@param GraphInstance USubstanceGraphInstance
---@param Width ESubstanceTextureSize
---@param Height ESubstanceTextureSize
function USubstanceUtility:SetGraphInstanceOutputSize(GraphInstance, Width, Height) end
---@param GraphInstance USubstanceGraphInstance
function USubstanceUtility:ResetInputParameters(GraphInstance) end
---@param GraphInstance USubstanceGraphInstance
---@return TArray<USubstanceTexture2D>
function USubstanceUtility:GetSubstanceTextures(GraphInstance) end
---@param Material UMaterialInterface
---@return TArray<USubstanceGraphInstance>
function USubstanceUtility:GetSubstances(Material) end
---@return float
function USubstanceUtility:GetSubstanceLoadingProgress() end
---@param GraphInstance USubstanceGraphInstance
---@return FString
function USubstanceUtility:GetGraphName(GraphInstance) end
---@param GraphInstance USubstanceGraphInstance
---@return FString
function USubstanceUtility:GetFactoryName(GraphInstance) end
---@param WorldContextObject UObject
---@param GraphInstance USubstanceGraphInstance
---@param OutputIndices TArray<int32>
function USubstanceUtility:EnableInstanceOutputs(WorldContextObject, GraphInstance, OutputIndices) end
---@param WorldContextObject UObject
---@param GraphInstance USubstanceGraphInstance
---@return USubstanceGraphInstance
function USubstanceUtility:DuplicateGraphInstance(WorldContextObject, GraphInstance) end
---@param WorldContextObject UObject
---@param GraphInstance USubstanceGraphInstance
---@param OutputIndices TArray<int32>
function USubstanceUtility:DisableInstanceOutputs(WorldContextObject, GraphInstance, OutputIndices) end
---@param WorldContextObject UObject
---@param Factory USubstanceInstanceFactory
---@param GraphDescIndex int32
---@param InstanceName FString
---@return USubstanceGraphInstance
function USubstanceUtility:CreateGraphInstance(WorldContextObject, Factory, GraphDescIndex, InstanceName) end
---@param OutputFactory USubstanceInstanceFactory
---@param OutputFactoryGraphIndex int32
---@param InputFactory USubstanceInstanceFactory
---@param InputFactoryGraphIndex int32
---@param Connections TArray<FSubstanceConnection>
---@return USubstanceInstanceFactory
function USubstanceUtility:CreateAggregateSubstanceFactory(OutputFactory, OutputFactoryGraphIndex, InputFactory, InputFactoryGraphIndex, Connections) end
---@param SourceGraphInstance USubstanceGraphInstance
---@param DestGraphInstance USubstanceGraphInstance
function USubstanceUtility:CopyInputParameters(SourceGraphInstance, DestGraphInstance) end
function USubstanceUtility:ClearCache() end
---@param InstancesToRender USubstanceGraphInstance
function USubstanceUtility:AsyncRendering(InstancesToRender) end


