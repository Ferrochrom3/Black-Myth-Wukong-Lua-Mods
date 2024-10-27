---@enum EDeterminismLevel
EDeterminismLevel = {
    None = 0,
    NoDeterminism = 0,
    Basic = 1,
    OrderOrthogonal = 2,
    OrderConsistent = 3,
    OrderIndependent = 4,
    Deterministic = 4,
    EDeterminismLevel_MAX = 5,
}

---@enum EPCGActorFilter
EPCGActorFilter = {
    Self = 0,
    Parent = 1,
    Root = 2,
    AllWorldActors = 3,
    Original = 4,
    EPCGActorFilter_MAX = 5,
}

---@enum EPCGActorSelection
EPCGActorSelection = {
    ByTag = 0,
    ByName = 1,
    ByClass = 2,
    Unknown = 3,
    EPCGActorSelection_MAX = 4,
}

---@enum EPCGAttachOptions
EPCGAttachOptions = {
    NotAttached = 0,
    Attached = 1,
    InFolder = 2,
    EPCGAttachOptions_MAX = 3,
}

---@enum EPCGAttributeAccessorFlags
EPCGAttributeAccessorFlags = {
    StrictType = 1,
    AllowBroadcast = 2,
    AllowConstructible = 4,
    AllowSetDefaultValue = 8,
    EPCGAttributeAccessorFlags_MAX = 9,
}

---@enum EPCGAttributeFilterOperation
EPCGAttributeFilterOperation = {
    KeepSelectedAttributes = 0,
    DeleteSelectedAttributes = 1,
    EPCGAttributeFilterOperation_MAX = 2,
}

---@enum EPCGAttributeNoiseMode
EPCGAttributeNoiseMode = {
    Set = 0,
    Minimum = 1,
    Maximum = 2,
    Add = 3,
    Multiply = 4,
    EPCGAttributeNoiseMode_MAX = 5,
}

---@enum EPCGAttributePropertySelection
EPCGAttributePropertySelection = {
    Attribute = 0,
    PointProperty = 1,
    ExtraProperty = 2,
    EPCGAttributePropertySelection_MAX = 3,
}

---@enum EPCGAttributeReduceOperation
EPCGAttributeReduceOperation = {
    Average = 0,
    Max = 1,
    Min = 2,
}

---@enum EPCGAttributeSelectAxis
EPCGAttributeSelectAxis = {
    X = 0,
    Y = 1,
    Z = 2,
    W = 3,
    CustomAxis = 4,
    EPCGAttributeSelectAxis_MAX = 5,
}

---@enum EPCGAttributeSelectOperation
EPCGAttributeSelectOperation = {
    Min = 0,
    Max = 1,
    Median = 2,
}

---@enum EPCGBoundsModifierMode
EPCGBoundsModifierMode = {
    Set = 0,
    Intersect = 1,
    Include = 2,
    Translate = 3,
    Scale = 4,
    EPCGBoundsModifierMode_MAX = 5,
}

---@enum EPCGChangeType
EPCGChangeType = {
    None = 0,
    Cosmetic = 1,
    Settings = 2,
    Input = 4,
    Edge = 8,
    Node = 16,
    Structural = 32,
    EPCGChangeType_MAX = 33,
}

---@enum EPCGComponentDirtyFlag
EPCGComponentDirtyFlag = {
    None = 0,
    Actor = 1,
    Landscape = 2,
    Input = 4,
    Data = 8,
    All = 15,
    EPCGComponentDirtyFlag_MAX = 16,
}

---@enum EPCGComponentGenerationTrigger
EPCGComponentGenerationTrigger = {
    GenerateOnLoad = 0,
    GenerateOnDemand = 1,
    EPCGComponentGenerationTrigger_MAX = 2,
}

---@enum EPCGComponentInput
EPCGComponentInput = {
    Actor = 0,
    Landscape = 1,
    Other = 2,
    EPCGComponentInput_MAX = 3,
}

---@enum EPCGCopyPointsInheritanceMode
EPCGCopyPointsInheritanceMode = {
    Relative = 0,
    Source = 1,
    Target = 2,
    EPCGCopyPointsInheritanceMode_MAX = 3,
}

---@enum EPCGCopyPointsMetadataInheritanceMode
EPCGCopyPointsMetadataInheritanceMode = {
    SourceFirst = 0,
    TargetFirst = 1,
    SourceOnly = 2,
    TargetOnly = 3,
    None = 4,
    EPCGCopyPointsMetadataInheritanceMode_MAX = 5,
}

---@enum EPCGCreateSplineMode
EPCGCreateSplineMode = {
    CreateDataOnly = 0,
    CreateComponent = 1,
    CreateNewActor = 2,
    EPCGCreateSplineMode_MAX = 3,
}

---@enum EPCGDataType
EPCGDataType = {
    None = 0,
    Point = 2,
    Spline = 4,
    LandscapeSpline = 8,
    PolyLine = 12,
    Landscape = 16,
    Texture = 32,
    RenderTarget = 64,
    BaseTexture = 96,
    Surface = 112,
    Volume = 128,
    Primitive = 256,
    Concrete = 510,
    Composite = 512,
    Spatial = 1022,
    Param = 134217728,
    Settings = 268435456,
    Other = 536870912,
    Any = 1073741823,
    EPCGDataType_MAX = 1073741824,
}

---@enum EPCGDebugVisScaleMethod
EPCGDebugVisScaleMethod = {
    Relative = 0,
    Absolute = 1,
    Extents = 2,
    EPCGDebugVisScaleMethod_MAX = 3,
}

---@enum EPCGDifferenceDensityFunction
EPCGDifferenceDensityFunction = {
    Minimum = 0,
    ClampedSubstraction = 1,
    Binary = 2,
    EPCGDifferenceDensityFunction_MAX = 3,
}

---@enum EPCGDifferenceMode
EPCGDifferenceMode = {
    Inferred = 0,
    Continuous = 1,
    Discrete = 2,
    EPCGDifferenceMode_MAX = 3,
}

---@enum EPCGExclusiveDataType
EPCGExclusiveDataType = {
    None = 0,
    Point = 1,
    Spline = 2,
    LandscapeSpline = 3,
    PolyLine = 4,
    Landscape = 5,
    Texture = 6,
    RenderTarget = 7,
    BaseTexture = 8,
    Surface = 9,
    Volume = 10,
    Primitive = 11,
    Concrete = 12,
    Composite = 13,
    Spatial = 14,
    Param = 15,
    Settings = 16,
    Other = 17,
    Any = 18,
    EPCGExclusiveDataType_MAX = 19,
}

---@enum EPCGExecutionPhase
EPCGExecutionPhase = {
    NotExecuted = 0,
    PrepareData = 1,
    Execute = 2,
    PostExecute = 3,
    Done = 4,
    EPCGExecutionPhase_MAX = 5,
}

---@enum EPCGExtraProperties
EPCGExtraProperties = {
    Index = 0,
    EPCGExtraProperties_MAX = 1,
}

---@enum EPCGFilterByTagOperation
EPCGFilterByTagOperation = {
    KeepTagged = 0,
    RemoveTagged = 1,
    EPCGFilterByTagOperation_MAX = 2,
}

---@enum EPCGGetDataFromActorMode
EPCGGetDataFromActorMode = {
    ParseActorComponents = 0,
    GetSinglePoint = 1,
    GetDataFromProperty = 2,
    GetDataFromPCGComponent = 3,
    GetDataFromPCGComponentOrParseComponents = 4,
    EPCGGetDataFromActorMode_MAX = 5,
}

---@enum EPCGHiGenGrid
EPCGHiGenGrid = {
    Uninitialized = 0,
    Grid32 = 32,
    Grid64 = 64,
    Grid128 = 128,
    Grid256 = 256,
    Grid512 = 512,
    Grid1024 = 1024,
    Grid2048 = 2048,
    GridMin = 32,
    GridMax = 2048,
    Unbounded = 4096,
    GenerationDefault = 8192,
    EPCGHiGenGrid_MAX = 8193,
}

---@enum EPCGIntersectionDensityFunction
EPCGIntersectionDensityFunction = {
    Multiply = 0,
    Minimum = 1,
    EPCGIntersectionDensityFunction_MAX = 2,
}

---@enum EPCGMedadataBitwiseOperation
EPCGMedadataBitwiseOperation = {
    And = 0,
    Not = 1,
    Or = 2,
    Xor = 3,
    EPCGMedadataBitwiseOperation_MAX = 4,
}

---@enum EPCGMedadataBooleanOperation
EPCGMedadataBooleanOperation = {
    And = 0,
    Not = 1,
    Or = 2,
    Xor = 3,
    EPCGMedadataBooleanOperation_MAX = 4,
}

---@enum EPCGMedadataCompareOperation
EPCGMedadataCompareOperation = {
    Equal = 0,
    NotEqual = 1,
    Greater = 2,
    GreaterOrEqual = 3,
    Less = 4,
    LessOrEqual = 5,
    EPCGMedadataCompareOperation_MAX = 6,
}

---@enum EPCGMedadataMathsOperation
EPCGMedadataMathsOperation = {
    UnaryOp = 1024,
    Sign = 1025,
    Frac = 1026,
    Truncate = 1027,
    Round = 1028,
    Sqrt = 1029,
    Abs = 1030,
    Floor = 1031,
    Ceil = 1032,
    OneMinus = 1033,
    BinaryOp = 2048,
    Add = 2049,
    Subtract = 2050,
    Multiply = 2051,
    Divide = 2052,
    Max = 2053,
    Min = 2054,
    Pow = 2055,
    ClampMin = 2056,
    ClampMax = 2057,
    Modulo = 2058,
    Set = 2059,
    TernaryOp = 4096,
    Clamp = 4097,
    Lerp = 4098,
}

---@enum EPCGMedadataRotatorOperation
EPCGMedadataRotatorOperation = {
    RotatorOp = 0,
    Combine = 1,
    Invert = 2,
    Lerp = 3,
    Normalize = 4,
    TransformOp = 100,
    TransformRotation = 101,
    InverseTransformRotation = 102,
    EPCGMedadataRotatorOperation_MAX = 103,
}

---@enum EPCGMedadataTransformOperation
EPCGMedadataTransformOperation = {
    Compose = 0,
    Invert = 1,
    Lerp = 2,
    EPCGMedadataTransformOperation_MAX = 3,
}

---@enum EPCGMedadataTrigOperation
EPCGMedadataTrigOperation = {
    Acos = 0,
    Asin = 1,
    Atan = 2,
    Atan2 = 3,
    Cos = 4,
    Sin = 5,
    Tan = 6,
    DegToRad = 7,
    RadToDeg = 8,
    EPCGMedadataTrigOperation_MAX = 9,
}

---@enum EPCGMedadataVectorOperation
EPCGMedadataVectorOperation = {
    VectorOp = 0,
    Cross = 1,
    Dot = 2,
    Distance = 3,
    Normalize = 4,
    Length = 5,
    RotateAroundAxis = 6,
    TransformOp = 100,
    TransformDirection = 101,
    TransformLocation = 102,
    InverseTransformDirection = 103,
    InverseTransformLocation = 104,
    EPCGMedadataVectorOperation_MAX = 105,
}

---@enum EPCGMeshSelectorMaterialOverrideMode
EPCGMeshSelectorMaterialOverrideMode = {
    NoOverride = 0,
    StaticOverride = 1,
    ByAttributeOverride = 2,
    EPCGMeshSelectorMaterialOverrideMode_MAX = 3,
}

---@enum EPCGMetadataFilterMode
EPCGMetadataFilterMode = {
    ExcludeAttributes = 0,
    IncludeAttributes = 1,
    EPCGMetadataFilterMode_MAX = 2,
}

---@enum EPCGMetadataMakeRotatorOp
EPCGMetadataMakeRotatorOp = {
    MakeRotFromX = 0,
    MakeRotFromY = 1,
    MakeRotFromZ = 2,
    MakeRotFromXY = 3,
    MakeRotFromYX = 4,
    MakeRotFromXZ = 5,
    MakeRotFromZX = 6,
    MakeRotFromYZ = 7,
    MakeRotFromZY = 8,
    MakeRotFromAxes = 9,
    MakeRotFromAngles = 10,
    EPCGMetadataMakeRotatorOp_MAX = 11,
}

---@enum EPCGMetadataMakeVector3
EPCGMetadataMakeVector3 = {
    ThreeValues = 0,
    Vector2AndValue = 1,
    EPCGMetadataMakeVector3_MAX = 2,
}

---@enum EPCGMetadataMakeVector4
EPCGMetadataMakeVector4 = {
    FourValues = 0,
    Vector2AndTwoValues = 1,
    TwoVector2 = 2,
    Vector3AndValue = 3,
    EPCGMetadataMakeVector4_MAX = 4,
}

---@enum EPCGMetadataOp
EPCGMetadataOp = {
    Min = 0,
    Max = 1,
    Sub = 2,
    Add = 3,
    Mul = 4,
    Div = 5,
    SourceValue = 6,
    TargetValue = 7,
}

---@enum EPCGMetadataOperationTarget
EPCGMetadataOperationTarget = {
    PropertyToAttribute = 0,
    AttributeToProperty = 1,
    AttributeToAttribute = 2,
    EPCGMetadataOperationTarget_MAX = 3,
}

---@enum EPCGMetadataSettingsBaseMode
EPCGMetadataSettingsBaseMode = {
    Inferred = 0,
    NoBroadcast = 1,
    Broadcast = 2,
    EPCGMetadataSettingsBaseMode_MAX = 3,
}

---@enum EPCGMetadataSettingsBaseTypes
EPCGMetadataSettingsBaseTypes = {
    AutoUpcastTypes = 0,
    StrictTypes = 1,
    EPCGMetadataSettingsBaseTypes_MAX = 2,
}

---@enum EPCGMetadataStringOperation
EPCGMetadataStringOperation = {
    Append = 0,
    EPCGMetadataStringOperation_MAX = 1,
}

---@enum EPCGMetadataTypes
EPCGMetadataTypes = {
    Float = 0,
    Double = 1,
    Integer32 = 2,
    Integer64 = 3,
    Vector2 = 4,
    Vector = 5,
    Vector4 = 6,
    Quaternion = 7,
    Transform = 8,
    String = 9,
    Boolean = 10,
    Rotator = 11,
    Name = 12,
    Count = 13,
    Unknown = 255,
    EPCGMetadataTypes_MAX = 256,
}

---@enum EPCGMetadataTypesConstantStructStringMode
EPCGMetadataTypesConstantStructStringMode = {
    String = 0,
    SoftObjectPath = 1,
    SoftClassPath = 2,
    EPCGMetadataTypesConstantStructStringMode_MAX = 3,
}

---@enum EPCGPointExtentsModifierMode
EPCGPointExtentsModifierMode = {
    Set = 0,
    Minimum = 1,
    Maximum = 2,
    Add = 3,
    Multiply = 4,
    EPCGPointExtentsModifierMode_MAX = 5,
}

---@enum EPCGPointFilterConstantType
EPCGPointFilterConstantType = {
    Integer64 = 0,
    Float = 1,
    Vector = 2,
    Vector4 = 3,
    String = 4,
    Unknown = 5,
    EPCGPointFilterConstantType_MAX = 6,
}

---@enum EPCGPointFilterOperator
EPCGPointFilterOperator = {
    Greater = 0,
    GreaterOrEqual = 1,
    Lesser = 2,
    LesserOrEqual = 3,
    Equal = 4,
    NotEqual = 5,
    InRange = 6,
    Substring = 7,
    Matches = 8,
    EPCGPointFilterOperator_MAX = 9,
}

---@enum EPCGPointProperties
EPCGPointProperties = {
    Density = 0,
    BoundsMin = 1,
    BoundsMax = 2,
    Extents = 3,
    Color = 4,
    Position = 5,
    Rotation = 6,
    Scale = 7,
    Transform = 8,
    Steepness = 9,
    LocalCenter = 10,
    Seed = 11,
    EPCGPointProperties_MAX = 12,
}

---@enum EPCGPointTargetFilterType
EPCGPointTargetFilterType = {
    Property = 0,
    Metadata = 1,
    EPCGPointTargetFilterType_MAX = 2,
}

---@enum EPCGPointThresholdType
EPCGPointThresholdType = {
    Property = 0,
    Metadata = 1,
    Constant = 2,
    EPCGPointThresholdType_MAX = 3,
}

---@enum EPCGSelfPruningType
EPCGSelfPruningType = {
    LargeToSmall = 0,
    SmallToLarge = 1,
    AllEqual = 2,
    None = 3,
    RemoveDuplicates = 4,
    EPCGSelfPruningType_MAX = 5,
}

---@enum EPCGSettingsExecutionMode
EPCGSettingsExecutionMode = {
    Enabled = 0,
    Debug = 1,
    Isolated = 2,
    Disabled = 3,
    EPCGSettingsExecutionMode_MAX = 4,
}

---@enum EPCGSettingsType
EPCGSettingsType = {
    InputOutput = 0,
    Spatial = 1,
    Density = 2,
    Blueprint = 3,
    Metadata = 4,
    Filter = 5,
    Sampler = 6,
    Spawner = 7,
    Subgraph = 8,
    Debug = 9,
    Generic = 10,
    Param = 11,
    HierarchicalGeneration = 12,
    ControlFlow = 13,
    EPCGSettingsType_MAX = 14,
}

---@enum EPCGSpawnActorGenerationTrigger
EPCGSpawnActorGenerationTrigger = {
    Default = 0,
    ForceGenerate = 1,
    DoNotGenerateInEditor = 2,
    DoNotGenerate = 3,
    EPCGSpawnActorGenerationTrigger_MAX = 4,
}

---@enum EPCGSpawnActorOption
EPCGSpawnActorOption = {
    CollapseActors = 0,
    MergePCGOnly = 1,
    NoMerging = 2,
    EPCGSpawnActorOption_MAX = 3,
}

---@enum EPCGSplineSamplingDimension
EPCGSplineSamplingDimension = {
    OnSpline = 0,
    OnHorizontal = 1,
    OnVertical = 2,
    OnVolume = 3,
    OnInterior = 4,
    EPCGSplineSamplingDimension_MAX = 5,
}

---@enum EPCGSplineSamplingFill
EPCGSplineSamplingFill = {
    Fill = 0,
    EdgesOnly = 1,
    EPCGSplineSamplingFill_MAX = 2,
}

---@enum EPCGSplineSamplingInteriorOrientation
EPCGSplineSamplingInteriorOrientation = {
    Uniform = 0,
    FollowCurvature = 1,
    EPCGSplineSamplingInteriorOrientation_MAX = 2,
}

---@enum EPCGSplineSamplingMode
EPCGSplineSamplingMode = {
    Subdivision = 0,
    Distance = 1,
    EPCGSplineSamplingMode_MAX = 2,
}

---@enum EPCGTextureColorChannel
EPCGTextureColorChannel = {
    Red = 0,
    Green = 1,
    Blue = 2,
    Alpha = 3,
    EPCGTextureColorChannel_MAX = 4,
}

---@enum EPCGTextureDensityFunction
EPCGTextureDensityFunction = {
    Ignore = 0,
    Multiply = 1,
    EPCGTextureDensityFunction_MAX = 2,
}

---@enum EPCGTransformLerpMode
EPCGTransformLerpMode = {
    QuatInterp = 0,
    EulerInterp = 1,
    DualQuatInterp = 2,
    EPCGTransformLerpMode_MAX = 3,
}

---@enum EPCGTypeConversion
EPCGTypeConversion = {
    NoConversionRequired = 0,
    CollapseToPoint = 1,
    Filter = 2,
    MakeConcrete = 3,
    Failed = 4,
    EPCGTypeConversion_MAX = 5,
}

---@enum EPCGUnionDensityFunction
EPCGUnionDensityFunction = {
    Maximum = 0,
    ClampedAddition = 1,
    Binary = 2,
    EPCGUnionDensityFunction_MAX = 3,
}

---@enum EPCGUnionType
EPCGUnionType = {
    LeftToRightPriority = 0,
    RightToLeftPriority = 1,
    KeepAll = 2,
    EPCGUnionType_MAX = 3,
}

---@enum EPCGUnitTestDummyEnum
EPCGUnitTestDummyEnum = {
    One = 0,
    Two = 1,
    Three = 2,
    EPCGUnitTestDummyEnum_MAX = 3,
}

---@enum EPCGWorldQueryFilterByTag
EPCGWorldQueryFilterByTag = {
    NoTagFilter = 0,
    IncludeTagged = 1,
    ExcludeTagged = 2,
    EPCGWorldQueryFilterByTag_MAX = 3,
}

---@enum EPropertyBagContainerType
EPropertyBagContainerType = {
    None = 0,
    Array = 1,
    Count = 2,
    EPropertyBagContainerType_MAX = 3,
}

---@enum EPropertyBagMissingEnum
EPropertyBagMissingEnum = {
    Missing = 0,
    EPropertyBagMissingEnum_MAX = 1,
}

---@enum EPropertyBagPropertyType
EPropertyBagPropertyType = {
    None = 0,
    Bool = 1,
    Byte = 2,
    Int32 = 3,
    Int64 = 4,
    Float = 5,
    Double = 6,
    Name = 7,
    String = 8,
    Text = 9,
    Enum = 10,
    Struct = 11,
    Object = 12,
    SoftObject = 13,
    Class = 14,
    SoftClass = 15,
    Count = 16,
    EPropertyBagPropertyType_MAX = 17,
}

---@enum EPropertyBagResult
EPropertyBagResult = {
    Success = 0,
    TypeMismatch = 1,
    OutOfBounds = 2,
    PropertyNotFound = 3,
    EPropertyBagResult_MAX = 4,
}

---@enum PCGDistanceShape
PCGDistanceShape = {
    SphereBounds = 0,
    BoxBounds = 1,
    Center = 2,
    PCGDistanceShape_MAX = 3,
}

---@enum PCGNormalToDensityMode
PCGNormalToDensityMode = {
    Set = 0,
    Minimum = 1,
    Maximum = 2,
    Add = 3,
    Subtract = 4,
    Multiply = 5,
    Divide = 6,
    PCGNormalToDensityMode_MAX = 7,
}

---@enum PCGSpatialNoiseMask2DMode
PCGSpatialNoiseMask2DMode = {
    Perlin = 0,
    Caustic = 1,
    FractionalBrownian = 2,
    PCGSpatialNoiseMask2DMode_MAX = 3,
}

---@enum PCGSpatialNoiseMode
PCGSpatialNoiseMode = {
    Perlin2D = 0,
    Caustic2D = 1,
    Voronoi2D = 2,
    FractionalBrownian2D = 3,
    EdgeMask2D = 4,
    PCGSpatialNoiseMode_MAX = 5,
}

