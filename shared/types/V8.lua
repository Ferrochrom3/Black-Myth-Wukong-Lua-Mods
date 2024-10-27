---@meta

---@class FDirectoryItem
---@field Name FString
---@field bIsDirectory boolean
FDirectoryItem = {}



---@class FJavascriptAsset
---@field Name FName
---@field Asset FSoftObjectPath
FJavascriptAsset = {}



---@class FJavascriptAutomatedTest
---@field Name FString
---@field bComplexTask boolean
---@field TestFlags int32
---@field RequiredDeviceNum int32
---@field TestFunctionNames TArray<FString>
---@field Function FJavascriptFunction
FJavascriptAutomatedTest = {}



---@class FJavascriptAutomatedTestInstance
FJavascriptAutomatedTestInstance = {}


---@class FJavascriptAutomatedTestParameters
---@field TestFunctionName FString
---@field Tester FJavascriptAutomatedTestInstance
FJavascriptAutomatedTestParameters = {}



---@class FJavascriptClassAsset
---@field Name FName
---@field Class UClass
FJavascriptClassAsset = {}



---@class FJavascriptCpuProfiler
FJavascriptCpuProfiler = {}


---@class FJavascriptFunction
FJavascriptFunction = {}


---@class FJavascriptHeapStatistics
---@field TotalHeapSize int32
---@field TotalHeapSizeExecutable int32
---@field TotalPhysicalSize int32
---@field TotalAvailableSize int32
---@field UsedHeapSize int32
---@field HeapSizeLimit int32
---@field MallocedMemory int32
---@field bDoesZapGarbage boolean
FJavascriptHeapStatistics = {}



---@class FJavascriptInternetAddr
FJavascriptInternetAddr = {}


---@class FJavascriptLogCategory
FJavascriptLogCategory = {}


---@class FJavascriptMemoryStruct
FJavascriptMemoryStruct = {}


---@class FJavascriptProfileNode
FJavascriptProfileNode = {}


---@class FJavascriptRawAccess
FJavascriptRawAccess = {}


---@class FJavascriptRawAccess_Data
FJavascriptRawAccess_Data = {}


---@class FJavascriptRef
FJavascriptRef = {}


---@class FJavascriptSocket
FJavascriptSocket = {}


---@class FJavascriptStat
FJavascriptStat = {}


---@class FJavascriptStreamableManager
FJavascriptStreamableManager = {}


---@class FJavascriptStubStruct
FJavascriptStubStruct = {}


---@class FJavascriptText
---@field String FString
---@field Namespace FString
---@field Key FString
---@field TableId FName
FJavascriptText = {}



---@class FJavscriptProperty
---@field Type FString
---@field Name FString
FJavscriptProperty = {}



---@class FReadStringFromFileAsyncData
---@field String FString
FReadStringFromFileAsyncData = {}



---@class FReadStringFromFileHandle
FReadStringFromFileHandle = {}


---@class UDefault__JavascriptGeneratedClass
UDefault__JavascriptGeneratedClass = {}


---@class UDefault__JavascriptGeneratedClass_Native
UDefault__JavascriptGeneratedClass_Native = {}


---@class UDirectoryWatcher : UObject
---@field Added TArray<FString>
---@field Modified TArray<FString>
---@field Removed TArray<FString>
---@field OnChanged FDirectoryWatcherOnChanged
UDirectoryWatcher = {}

---@param Directory FString
function UDirectoryWatcher:Watch(Directory) end
function UDirectoryWatcher:Unwatch() end
---@param file FString
---@return boolean
function UDirectoryWatcher:Contains(file) end


---@class UJavascriptComponent : UActorComponent
---@field ScriptSourceFile FString
---@field bActiveWithinEditor boolean
---@field JavascriptContext UJavascriptContext
---@field JavascriptIsolate UJavascriptIsolate
---@field OnTick FJavascriptComponentOnTick
---@field OnBeginPlay FJavascriptComponentOnBeginPlay
---@field OnEndPlay FJavascriptComponentOnEndPlay
---@field OnInvoke FJavascriptComponentOnInvoke
---@field Assets TArray<FJavascriptAsset>
---@field ClassAssets TArray<FJavascriptClassAsset>
UJavascriptComponent = {}

---@param Name FName
---@return UClass
function UJavascriptComponent:ResolveClass(Name) end
---@param Name FName
---@param bTryLoad boolean
---@return UObject
function UJavascriptComponent:ResolveAsset(Name, bTryLoad) end
---@param DeltaSeconds float
function UJavascriptComponent:JavascriptTickSignature__DelegateSignature(DeltaSeconds) end
function UJavascriptComponent:JavascriptNoParamSignature__DelegateSignature() end
---@param Name FName
function UJavascriptComponent:JavascriptNameSignature__DelegateSignature(Name) end
---@param Name FName
function UJavascriptComponent:Invoke(Name) end
function UJavascriptComponent:ForceGC() end
---@param ExposedAs FString
---@param Object UObject
function UJavascriptComponent:Expose(ExposedAs, Object) end


---@class UJavascriptContext : UObject
---@field Paths TArray<FString>
UJavascriptContext = {}

---@param Target FString
---@param bIncludingTooltip boolean
---@return boolean
function UJavascriptContext:WriteDTS(Target, bIncludingTooltip) end
---@param Target FString
---@return boolean
function UJavascriptContext:WriteAliases(Target) end
---@param Command FString
function UJavascriptContext:UnregisterConsoleCommand(Command) end
---@param Name FString
function UJavascriptContext:SetContextId(Name) end
---@param Script FString
---@param bOutput boolean
---@return FString
function UJavascriptContext:RunScript(Script, bOutput) end
---@param Filename FString
function UJavascriptContext:RunFile(Filename) end
function UJavascriptContext:RequestV8GarbageCollection() end
---@param Command FString
---@param Help FString
---@param Function FJavascriptFunction
function UJavascriptContext:RegisterConsoleCommand(Command, Help, Function) end
---@param Filename FString
---@return FString
function UJavascriptContext:ReadScriptFile(Filename) end
---@return boolean
function UJavascriptContext:IsDebugContext() end
---@param Filename FString
---@return FString
function UJavascriptContext:GetScriptFileFullPath(Filename) end
---@param TargetRootPath FString
---@param TargetFileName FString
---@param OutFiles TArray<FString>
function UJavascriptContext:FindPathFile(TargetRootPath, TargetFileName, OutFiles) end
---@param Name FString
---@param Object UObject
function UJavascriptContext:Expose(Name, Object) end
function UJavascriptContext:DestroyInspector() end
---@param Port int32
function UJavascriptContext:CreateInspector(Port) end


---@class UJavascriptDelegate : UObject
UJavascriptDelegate = {}

function UJavascriptDelegate:Fire() end


---@class UJavascriptGeneratedClass : UBlueprintGeneratedClass
UJavascriptGeneratedClass = {}


---@class UJavascriptGeneratedClass_Native : UBlueprintGeneratedClass
UJavascriptGeneratedClass_Native = {}


---@class UJavascriptGeneratedFunction : UFunction
UJavascriptGeneratedFunction = {}


---@class UJavascriptGlobalDelegates : UObject
UJavascriptGlobalDelegates = {}

function UJavascriptGlobalDelegates:UnbindAll() end
---@param Key FString
function UJavascriptGlobalDelegates:Unbind(Key) end
---@param PackageName FString
---@param Redirector UObject
function UJavascriptGlobalDelegates:RedirectorFollowed(PackageName, Redirector) end
---@param MapName FString
function UJavascriptGlobalDelegates:PreLoadMap(MapName) end
function UJavascriptGlobalDelegates:PreGarbageCollectDelegate() end
---@param World UWorld
function UJavascriptGlobalDelegates:PostLoadMapWithWorld(World) end
function UJavascriptGlobalDelegates:PostGarbageCollect() end
function UJavascriptGlobalDelegates:PostDemoPlay() end
---@param Level ULevel
---@param World UWorld
---@param Offset FVector
---@param Flag boolean
function UJavascriptGlobalDelegates:PostApplyLevelOffset(Level, World, Offset, Flag) end
---@param InPackage UPackage
function UJavascriptGlobalDelegates:PackageCreatedForLoad(InPackage) end
---@param World UWorld
---@param bSessionEnded boolean
---@param bCleanupResources boolean
function UJavascriptGlobalDelegates:OnWorldCleanup(World, bSessionEnded, bCleanupResources) end
---@param World UWorld
function UJavascriptGlobalDelegates:OnPreWorldInitialization_Friendly(World) end
---@param World UWorld
function UJavascriptGlobalDelegates:OnPreWorldFinishDestroy(World) end
---@param InObject UObject
---@param Property TFieldPath<FProperty>
---@param MemberProperty TFieldPath<FProperty>
function UJavascriptGlobalDelegates:OnPreObjectPropertyChanged_Friendly(InObject, Property, MemberProperty) end
---@param World UWorld
function UJavascriptGlobalDelegates:OnPostWorldInitialization_Friendly(World) end
---@param World UWorld
function UJavascriptGlobalDelegates:OnPostWorldCreation(World) end
---@param World UWorld
---@param bDuplicateForPIE boolean
function UJavascriptGlobalDelegates:OnPostDuplicate_Friendly(World, bDuplicateForPIE) end
---@param Object UObject
function UJavascriptGlobalDelegates:OnObjectSaved(Object) end
---@param InObject UObject
---@param Property TFieldPath<FProperty>
---@param MemberProperty TFieldPath<FProperty>
---@param ChangeType int32
function UJavascriptGlobalDelegates:OnObjectPropertyChanged_Friendly(InObject, Property, MemberProperty, ChangeType) end
---@param Object UObject
function UJavascriptGlobalDelegates:OnObjectModified(Object) end
---@param Object UObject
function UJavascriptGlobalDelegates:OnAssetLoaded(Object) end
---@param Actor AActor
function UJavascriptGlobalDelegates:OnActorLabelChanged(Actor) end
---@param Level ULevel
---@param World UWorld
function UJavascriptGlobalDelegates:LevelRemovedFromWorld(Level, World) end
---@param Level ULevel
---@param World UWorld
function UJavascriptGlobalDelegates:LevelAddedToWorld(Level, World) end
---@param Key FString
function UJavascriptGlobalDelegates:Bind(Key) end


---@class UJavascriptIsolate : UObject
UJavascriptIsolate = {}

---@param bIsEditor boolean
function UJavascriptIsolate:Init(bIsEditor) end
---@param Statistics FJavascriptHeapStatistics
function UJavascriptIsolate:GetHeapStatistics(Statistics) end
---@return UJavascriptContext
function UJavascriptIsolate:CreateContext() end


---@class UJavascriptLibrary : UBlueprintFunctionLibrary
UJavascriptLibrary = {}

---@param Object UObject
---@param Filename FString
---@param Data FString
---@param EncodingOptions EJavascriptEncodingOptions::Type
---@return boolean
function UJavascriptLibrary:WriteStringToFile(Object, Filename, Data, EncodingOptions) end
---@param Object UObject
---@param Filename FString
---@return boolean
function UJavascriptLibrary:WriteFile(Object, Filename) end
---@param BudgetInSeconds float
function UJavascriptLibrary:V8_SetIdleTaskBudget(BudgetInSeconds) end
---@param V8Flags FString
function UJavascriptLibrary:V8_SetFlagsFromString(V8Flags) end
---@param ActorComponent UActorComponent
function UJavascriptLibrary:UnregisterComponent(ActorComponent) end
---@param Manager FJavascriptStreamableManager
---@param Target FSoftObjectPath
function UJavascriptLibrary:Unload(Manager, Target) end
---@param Path FString
---@return UObject
function UJavascriptLibrary:TryLoadByPath(Path) end
---@param Manager FJavascriptStreamableManager
---@param Target FSoftObjectPath
---@param Priority int32
function UJavascriptLibrary:SimpleAsyncLoad(Manager, Target, Priority) end
---@param Actor AActor
---@param Component USceneComponent
function UJavascriptLibrary:SetRootComponent(Actor, Component) end
---@param Addr FJavascriptInternetAddr
---@param Port int32
function UJavascriptLibrary:SetPort(Addr, Port) end
---@param Obj UObject
---@param Flags int32
function UJavascriptLibrary:SetObjectFlags(Obj, Flags) end
---@param SceneComponent USceneComponent
---@param Type EComponentMobility::Type
function UJavascriptLibrary:SetMobility(SceneComponent, Type) end
---@param SceneComponent USceneComponent
function UJavascriptLibrary:SetMobile(SceneComponent) end
---@param Addr FJavascriptInternetAddr
---@param ResolvedAddress FString
---@param bValid boolean
function UJavascriptLibrary:SetIp(Addr, ResolvedAddress, bValid) end
---@param Engine UEngine
---@param InWorld UWorld
---@param NextURL FString
---@param InTravelType ETravelType
function UJavascriptLibrary:SetClientTravel(Engine, InWorld, NextURL, InTravelType) end
---@param Actor AActor
---@param Flags int32
function UJavascriptLibrary:SetActorFlags(Actor, Flags) end
---@param Socket FJavascriptSocket
---@param ToAddr FJavascriptInternetAddr
---@param NumBytes int32
---@param BytesSent int32
---@return boolean
function UJavascriptLibrary:SendMemoryTo(Socket, ToAddr, NumBytes, BytesSent) end
---@param SegmentStartA FVector
---@param SegmentEndA FVector
---@param SegmentStartB FVector
---@param SegmentEndB FVector
---@param IntersectionPoint FVector
---@return boolean
function UJavascriptLibrary:SegmentIntersection2D(SegmentStartA, SegmentEndA, SegmentStartB, SegmentEndB, IntersectionPoint) end
---@param HostName FString
---@param OutIp FString
---@return boolean
function UJavascriptLibrary:ResolveIp(HostName, OutIp) end
---@param ActorComponent UActorComponent
function UJavascriptLibrary:ReregisterComponent(ActorComponent) end
---@param Actor AActor
function UJavascriptLibrary:ReregisterAllComponents(Actor) end
---@param Manager FJavascriptStreamableManager
---@param TargetsToStream TArray<FSoftObjectPath>
---@param DelegateToCall FJavascriptFunction
---@param Priority int32
function UJavascriptLibrary:RequestAsyncLoad(Manager, TargetsToStream, DelegateToCall, Priority) end
---@param ActorComponent UActorComponent
function UJavascriptLibrary:RegisterComponent(ActorComponent) end
---@param Object UObject
---@param Filename FString
---@param Function FJavascriptFunction
---@return FReadStringFromFileHandle
function UJavascriptLibrary:ReadStringFromFileAsync(Object, Filename, Function) end
---@param Object UObject
---@param Filename FString
---@return FString
function UJavascriptLibrary:ReadStringFromFile(Object, Filename) end
---@param Object UObject
---@param Filename FString
---@return boolean
function UJavascriptLibrary:ReadFile(Object, Filename) end
---@param Object UObject
---@param Directory FString
---@param OutItems TArray<FDirectoryItem>
---@return boolean
function UJavascriptLibrary:ReadDirectory(Object, Directory, OutItems) end
---@param InStatName FName
---@param InStatDesc FString
---@param InGroupName FName
---@param InGroupCategory FName
---@param InGroupDesc FString
---@param bDefaultEnable boolean
---@param bShouldClearEveryFrame boolean
---@param InStatType EJavascriptStatDataType
---@param bCycleStat boolean
---@param bSortByName boolean
---@return FJavascriptStat
function UJavascriptLibrary:NewStat(InStatName, InStatDesc, InGroupName, InGroupCategory, InGroupDesc, bDefaultEnable, bShouldClearEveryFrame, InStatType, bCycleStat, bSortByName) end
---@param Component UActorComponent
function UJavascriptLibrary:MarkRenderStateDirty(Component) end
---@param Path FString
---@param Tree boolean
---@return boolean
function UJavascriptLibrary:MakeDirectory(Path, Tree) end
---@param Category FJavascriptLogCategory
---@param Verbosity ELogVerbosity_JS
---@param Message FString
---@param Filename FString
---@param LineNumber int32
function UJavascriptLibrary:Log(Category, Verbosity, Message, Filename, LineNumber) end
---@param InOuter UPackage
---@param PackageName FString
---@return UPackage
function UJavascriptLibrary:LoadPackage(InOuter, PackageName) end
---@param Category FJavascriptLogCategory
---@param Verbosity ELogVerbosity_JS
---@return boolean
function UJavascriptLibrary:IsSuppressed(Category, Verbosity) end
---@param ActorComponent UActorComponent
---@return boolean
function UJavascriptLibrary:IsRegistered(ActorComponent) end
---@param World UWorld
---@return boolean
function UJavascriptLibrary:IsPlayInPreview(World) end
---@param World UWorld
---@return boolean
function UJavascriptLibrary:IsPlayInEditor(World) end
---@param InActor AActor
---@return boolean
function UJavascriptLibrary:IsPendingKill(InActor) end
---@param InClass UClass
---@return boolean
function UJavascriptLibrary:IsGeneratedByBlueprint(InClass) end
---@param World UWorld
---@return boolean
function UJavascriptLibrary:IsGameWorld(World) end
---@param Manager FJavascriptStreamableManager
---@param Target FSoftObjectPath
---@return boolean
function UJavascriptLibrary:IsAsyncLoadComplete(Manager, Target) end
---@param Engine UEngine
---@return boolean
function UJavascriptLibrary:HasUndo(Engine) end
---@param Package UPackage
---@param Flags int32
---@return boolean
function UJavascriptLibrary:HasAnyPackageFlags(Package, Flags) end
---@param Object UObject
---@param Flags int32
---@return boolean
function UJavascriptLibrary:HasAnyFlags(Object, Flags) end
---@param GameMode AGameModeBase
---@param C AController
function UJavascriptLibrary:HandleSeamlessTravelPlayer(GameMode, C) end
---@param InWorld UWorld
---@return FBox
function UJavascriptLibrary:GetWorldBounds(InWorld) end
---@param InClass UClass
---@return TArray<UClass>
function UJavascriptLibrary:GetSuperClasses(InClass) end
---@param StructName FString
---@param bIncludeSuper boolean
---@return TArray<FJavscriptProperty>
function UJavascriptLibrary:GetStructProperties(StructName, bIncludeSuper) end
---@param Node FJavascriptProfileNode
---@return FString
function UJavascriptLibrary:GetScriptResourceName(Node) end
---@param Node FJavascriptProfileNode
---@return int32
function UJavascriptLibrary:GetScriptId(Node) end
---@return FString
function UJavascriptLibrary:GetPlatformName() end
---@param Object UObject
---@return UObject
function UJavascriptLibrary:GetOutermost(Object) end
---@param Object UObject
---@return UObject
function UJavascriptLibrary:GetOuter(Object) end
---@param Outer UObject
---@param Results TArray<UObject>
---@param bIncludeNestedObjects boolean
---@param ExclusionFlags int32
---@param ExclusionInternalFlags int32
function UJavascriptLibrary:GetObjectsWithOuter(Outer, Results, bIncludeNestedObjects, ExclusionFlags, ExclusionInternalFlags) end
---@param ClassToLookFor UClass
---@param Results TArray<UObject>
---@param bIncludeDerivedClasses boolean
---@param ExcludeFlags int32
---@param ExclusionInternalFlags int32
function UJavascriptLibrary:GetObjectsOfClass(ClassToLookFor, Results, bIncludeDerivedClasses, ExcludeFlags, ExclusionInternalFlags) end
---@param Node FJavascriptProfileNode
---@return int32
function UJavascriptLibrary:GetNodeId(Node) end
---@param Object UObject
---@return FString
function UJavascriptLibrary:GetName(Object) end
---@param World UWorld
---@return UModel
function UJavascriptLibrary:GetModel(World) end
---@param Field UField
---@param Key FString
---@return FString
function UJavascriptLibrary:GetMetaData(Field, Key) end
---@param Node FJavascriptProfileNode
---@return int32
function UJavascriptLibrary:GetLineNumber(Node) end
---@param World UWorld
---@return TArray<ULevel>
function UJavascriptLibrary:GetLevels(World) end
---@param Actor AActor
---@return ULevel
function UJavascriptLibrary:GetLevel(Actor) end
---@param Actor AActor
---@return float
function UJavascriptLibrary:GetLastRenderTime(Actor) end
---@param Node FJavascriptProfileNode
---@return int32
function UJavascriptLibrary:GetHitLineCount(Node) end
---@param Node FJavascriptProfileNode
---@return int32
function UJavascriptLibrary:GetHitCount(Node) end
---@param Function UFunction
---@return int32
function UJavascriptLibrary:GetFunctionParmsSize(Function) end
---@param Node FJavascriptProfileNode
---@return FString
function UJavascriptLibrary:GetFunctionName(Node) end
---@param Object UObject
---@param Filename FString
---@return int32
function UJavascriptLibrary:GetFileSize(Object, Filename) end
---@param Object UObject
---@param bIncludeSuper boolean
---@return TArray<UField>
function UJavascriptLibrary:GetFields(Object, bIncludeSuper) end
---@param Outer UClass
---@param BindingObjectClass TSubclassOf<UDynamicBlueprintBinding>
---@return UDynamicBlueprintBinding
function UJavascriptLibrary:GetDynamicBinding(Outer, BindingObjectClass) end
---@param Object UObject
---@param WhichDir FString
---@return FString
function UJavascriptLibrary:GetDir(Object, WhichDir) end
---@param ClassToLookFor UClass
---@param Results TArray<UClass>
---@param bRecursive boolean
function UJavascriptLibrary:GetDerivedClasses(ClassToLookFor, Results, bRecursive) end
---@param Node FJavascriptProfileNode
---@param Index int32
---@return int32
function UJavascriptLibrary:GetDeoptInfosCount(Node, Index) end
---@param Node FJavascriptProfileNode
---@param Index int32
---@return FString
function UJavascriptLibrary:GetDeoptInfo_Stack(Node, Index) end
---@param Node FJavascriptProfileNode
---@param Index int32
---@return FString
function UJavascriptLibrary:GetDeoptInfo_Reason(Node, Index) end
---@return int32
function UJavascriptLibrary:GetCurrentProcessId() end
---@param Actor AActor
---@param ComponentClass TSubclassOf<UActorComponent>
---@return TArray<UActorComponent>
function UJavascriptLibrary:GetComponentsByClass(Actor, ComponentClass) end
---@param Node FJavascriptProfileNode
---@return int32
function UJavascriptLibrary:GetColumnNumber(Node) end
---@param Class UClass
---@return FString
function UJavascriptLibrary:GetClassPathName(Class) end
---@param Node FJavascriptProfileNode
---@return int32
function UJavascriptLibrary:GetChildrenCount(Node) end
---@param Node FJavascriptProfileNode
---@param Index int32
---@return FJavascriptProfileNode
function UJavascriptLibrary:GetChild(Node, Index) end
---@param Category FJavascriptLogCategory
---@return FName
function UJavascriptLibrary:GetCategoryName(Category) end
---@param Node FJavascriptProfileNode
---@return int32
function UJavascriptLibrary:GetCallUid(Node) end
---@param Path FString
---@return UClass
function UJavascriptLibrary:GetBlueprintGeneratedClassFromPath(Path) end
---@param Blueprint UBlueprint
---@return UClass
function UJavascriptLibrary:GetBlueprintGeneratedClass(Blueprint) end
---@param Node FJavascriptProfileNode
---@return FString
function UJavascriptLibrary:GetBailoutReason(Node) end
---@param Object UObject
---@return FString
function UJavascriptLibrary:GetArchetypePathName(Object) end
---@param WorldContextObject UObject
---@param ActorClass TSubclassOf<AActor>
---@param Tags_Accept TArray<FName>
---@param Tags_Deny TArray<FName>
---@param OutActors TArray<AActor>
function UJavascriptLibrary:GetAllActorsOfClassAndTagsInCurrentLevel(WorldContextObject, ActorClass, Tags_Accept, Tags_Deny, OutActors) end
---@param WorldContextObject UObject
---@param ActorClass TSubclassOf<AActor>
---@param Tags_Accept TArray<FName>
---@param Tags_Deny TArray<FName>
---@param OutActors TArray<AActor>
function UJavascriptLibrary:GetAllActorsOfClassAndTags(WorldContextObject, ActorClass, Tags_Accept, Tags_Deny, OutActors) end
---@param InWorld UWorld
---@param NavData ARecastNavMesh
function UJavascriptLibrary:GenerateNavigation(InWorld, NavData) end
---@param InOuter UObject
---@param PackageName FString
---@return UPackage
function UJavascriptLibrary:FindPackage(InOuter, PackageName) end
---@param Outer UObject
---@param ClassToLookFor UClass
---@param NameToLookFor FName
---@return UObject
function UJavascriptLibrary:FindObjectWithOuter(Outer, ClassToLookFor, NameToLookFor) end
---@param Filename FString
---@return boolean
function UJavascriptLibrary:FileExists(Filename) end
---@param Object UObject
---@param Outer UObject
---@param Name FName
---@return UObject
function UJavascriptLibrary:Duplicate(Object, Outer, Name) end
---@param InDirectory FString
---@return boolean
function UJavascriptLibrary:DirectoryExists(InDirectory) end
---@param Filename FString
---@param ReadOnly boolean
---@return boolean
function UJavascriptLibrary:DeleteFile(Filename, ReadOnly) end
---@param Path FString
---@param RequireExists boolean
---@param Tree boolean
---@return boolean
function UJavascriptLibrary:DeleteDirectory(Path, RequireExists, Tree) end
---@return FJavascriptStreamableManager
function UJavascriptLibrary:CreateStreamableManager() end
---@param SocketType FName
---@param Description FString
---@param bForceUDP boolean
---@return FJavascriptSocket
function UJavascriptLibrary:CreateSocket(SocketType, Description, bForceUDP) end
---@param Outer UObject
---@param PackageName FString
---@return UPackage
function UJavascriptLibrary:CreatePackage(Outer, PackageName) end
---@param CategoryName FString
---@param InDefaultVerbosity ELogVerbosity_JS
---@return FJavascriptLogCategory
function UJavascriptLibrary:CreateLogCategory(CategoryName, InDefaultVerbosity) end
---@return FJavascriptInternetAddr
function UJavascriptLibrary:CreateInternetAddr() end
---@param Outer UObject
---@param Name FName
---@param DisplayNames TArray<FName>
---@param Flags TArray<FString>
---@return UEnum
function UJavascriptLibrary:CreateEnum(Outer, Name, DisplayNames, Flags) end
---@param Object UObject
---@param RelativePath FString
---@return FString
function UJavascriptLibrary:ConvertRelativePathToFull(Object, RelativePath) end
---@return FString
function UJavascriptLibrary:ClipboardPaste() end
---@param String FString
function UJavascriptLibrary:ClipboardCopy(String) end
---@param Function FJavascriptFunction
---@param CustomStruct FJavascriptStubStruct
function UJavascriptLibrary:CallJS(Function, CustomStruct) end
---@param Stat FJavascriptStat
---@param InStatOperation EJavascriptStatOperation
---@param Value int32
---@param bIsCycle boolean
function UJavascriptLibrary:AddMessage_int(Stat, InStatOperation, Value, bIsCycle) end
---@param Stat FJavascriptStat
---@param InStatOperation EJavascriptStatOperation
---@param Value float
---@param bIsCycle boolean
function UJavascriptLibrary:AddMessage_float(Stat, InStatOperation, Value, bIsCycle) end
---@param Stat FJavascriptStat
---@param InStatOperation EJavascriptStatOperation
function UJavascriptLibrary:AddMessage(Stat, InStatOperation) end
---@param Outer UClass
---@param BindingObject UDynamicBlueprintBinding
function UJavascriptLibrary:AddDynamicBinding(Outer, BindingObject) end
---@param Actor AActor
---@return UWorld
function UJavascriptLibrary:Actor_GetWorld(Actor) end


---@class UJavascriptMemoryObject : UObject
UJavascriptMemoryObject = {}


---@class UJavascriptObject : UObject
---@field Ref FJavascriptRef
---@field Func FJavascriptFunction
UJavascriptObject = {}



---@class UJavascriptOutputDevice : UObject
UJavascriptOutputDevice = {}

---@param Message FString
---@param Verbosity ELogVerbosity_JS
---@param Category FName
function UJavascriptOutputDevice:OnMessage(Message, Verbosity, Category) end
---@param Category FName
---@param Verbosity ELogVerbosity_JS
---@param Filename FString
---@param LineNumber int32
---@param Message FString
function UJavascriptOutputDevice:Log(Category, Verbosity, Filename, LineNumber, Message) end
function UJavascriptOutputDevice:Kill() end


---@class UJavascriptProcess : UObject
UJavascriptProcess = {}

---@param Message FString
---@param OutWritten FString
---@return boolean
function UJavascriptProcess:WriteToPipe(Message, OutWritten) end
function UJavascriptProcess:Wait() end
---@param KillTree boolean
function UJavascriptProcess:Terminate(KillTree) end
---@param Seconds float
function UJavascriptProcess:Sleep(Seconds) end
---@param KeyEvent int32
function UJavascriptProcess:SimulateKeypress(KeyEvent) end
---@param VarName FString
---@param VarValue FString
function UJavascriptProcess:SetEnvironmentVar(VarName, VarValue) end
---@return FString
function UJavascriptProcess:ReadFromPipe() end
---@param Array TArray<uint8>
---@return boolean
function UJavascriptProcess:ReadArrayFromPipe(Array) end
---@param ProcessId int32
---@return UJavascriptProcess
function UJavascriptProcess:Open_PID(ProcessId) end
---@param ProcName FString
---@return UJavascriptProcess
function UJavascriptProcess:Open(ProcName) end
---@param URL FString
---@param Parms FString
---@param Error FString
function UJavascriptProcess:LaunchURL(URL, Parms, Error) end
---@return boolean
function UJavascriptProcess:IsRunning() end
---@param ProcessId int32
---@return boolean
function UJavascriptProcess:IsApplicationRunning_PID(ProcessId) end
---@param ProcName FString
---@return boolean
function UJavascriptProcess:IsApplicationRunning(ProcName) end
---@param Key FString
---@param bFlag boolean
---@return FString
function UJavascriptProcess:GetString(Key, bFlag) end
---@param ReturnCode int32
---@return boolean
function UJavascriptProcess:GetReturnCode(ReturnCode) end
---@param VarName FString
---@return FString
function UJavascriptProcess:GetEnvironmentVar(VarName) end
---@return int32
function UJavascriptProcess:GetCurrentProcessId() end
---@param ProcessId int32
---@return FString
function UJavascriptProcess:GetApplicationName(ProcessId) end
---@param URL FString
---@param Parms FString
---@param bLaunchDetached boolean
---@param bLaunchHidden boolean
---@param bLaunchReallyHidden boolean
---@param PriorityModifier int32
---@param OptionalWorkingDirectory FString
---@param bUsePipe boolean
---@return UJavascriptProcess
function UJavascriptProcess:Create(URL, Parms, bLaunchDetached, bLaunchHidden, bLaunchReallyHidden, PriorityModifier, OptionalWorkingDirectory, bUsePipe) end
function UJavascriptProcess:Close() end
---@param URL FString
---@return boolean
function UJavascriptProcess:CanLaunchURL(URL) end


---@class UJavascriptProfile : UObject
UJavascriptProfile = {}

---@param Profiler FJavascriptCpuProfiler
---@param Title FString
---@return UJavascriptProfile
function UJavascriptProfile:Stop(Profiler, Title) end
---@param Title FString
---@param bRecordSamples boolean
---@return FJavascriptCpuProfiler
function UJavascriptProfile:Start(Title, bRecordSamples) end
---@param Profiler FJavascriptCpuProfiler
---@param us int32
function UJavascriptProfile:SetSamplingInterval(Profiler, us) end
---@param Profiler FJavascriptCpuProfiler
---@param is_idle boolean
function UJavascriptProfile:SetIdle(Profiler, is_idle) end
---@return FJavascriptProfileNode
function UJavascriptProfile:GetTopDownRoot() end
---@param Index int32
---@return float
function UJavascriptProfile:GetSampleTimestamp(Index) end
---@return int32
function UJavascriptProfile:GetSamplesCount() end
---@param Index int32
---@return FJavascriptProfileNode
function UJavascriptProfile:GetSample(Index) end


---@class UJavascriptSemaphore : UObject
UJavascriptSemaphore = {}

function UJavascriptSemaphore:Unlock() end
---@param NanosecondsToWait int32
---@return boolean
function UJavascriptSemaphore:TryLock(NanosecondsToWait) end
function UJavascriptSemaphore:Lock() end
function UJavascriptSemaphore:Dispose() end
---@param Name FName
---@param bCreate boolean
---@param MaxLocks int32
---@return UJavascriptSemaphore
function UJavascriptSemaphore:Create(Name, bCreate, MaxLocks) end


---@class UJavascriptSettings : UObject
---@field V8Flags FString
UJavascriptSettings = {}



---@class UJavascriptSharedMemoryRegion : UJavascriptMemoryObject
UJavascriptSharedMemoryRegion = {}

function UJavascriptSharedMemoryRegion:Dispose() end
---@param Name FName
---@param bCreate boolean
---@param bRead boolean
---@param bWrite boolean
---@param Size int32
---@return UJavascriptSharedMemoryRegion
function UJavascriptSharedMemoryRegion:Create(Name, bCreate, bRead, bWrite, Size) end


---@class UJavascriptStaticCache : UObject
---@field Isolates TArray<UJavascriptIsolate>
---@field bExecuteTestModePIE boolean
UJavascriptStaticCache = {}



---@class UJavascriptTestLibrary : UBlueprintFunctionLibrary
UJavascriptTestLibrary = {}

---@param Test FJavascriptAutomatedTestInstance
---@param bInContinue boolean
function UJavascriptTestLibrary:SetContinue(Test, bInContinue) end
function UJavascriptTestLibrary:PushFrameCounter() end
function UJavascriptTestLibrary:PopFrameCounter() end
---@return UWorld
function UJavascriptTestLibrary:NewWorld() end
---@param World UWorld
---@param URL FURL
function UJavascriptTestLibrary:InitializeActorsForPlay(World, URL) end
---@param World UWorld
function UJavascriptTestLibrary:DestroyWorld(World) end
---@param Object UObject
function UJavascriptTestLibrary:DestroyUObject(Object) end
---@param Test FJavascriptAutomatedTestInstance
function UJavascriptTestLibrary:Destroy(Test) end
---@param Test FJavascriptAutomatedTest
---@return FJavascriptAutomatedTestInstance
function UJavascriptTestLibrary:Create(Test) end
---@param Test FJavascriptAutomatedTestInstance
function UJavascriptTestLibrary:ClearExecutionInfo(Test) end
---@param World UWorld
function UJavascriptTestLibrary:BeginPlay(World) end
---@param Test FJavascriptAutomatedTestInstance
---@param InWarning FString
function UJavascriptTestLibrary:AddWarning(Test, InWarning) end
---@param Test FJavascriptAutomatedTestInstance
---@param InLogItem FString
function UJavascriptTestLibrary:AddLogItem(Test, InLogItem) end
---@param Test FJavascriptAutomatedTestInstance
---@param InError FString
function UJavascriptTestLibrary:AddError(Test, InError) end
---@param Test FJavascriptAutomatedTestInstance
---@param InAnalyticsItem FString
function UJavascriptTestLibrary:AddAnalyticsItem(Test, InAnalyticsItem) end


---@class UV8Config : UObject
---@field bGenAltPropAccessorForAllProp boolean
---@field bGenGetStructRefArrayFunction boolean
UV8Config = {}



