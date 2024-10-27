---@enum EGeometryScriptBooleanOperation
EGeometryScriptBooleanOperation = {
    Union = 0,
    Intersection = 1,
    Subtract = 2,
    EGeometryScriptBooleanOperation_MAX = 3,
}

---@enum EGeometryScriptCollisionGenerationMethod
EGeometryScriptCollisionGenerationMethod = {
    AlignedBoxes = 0,
    OrientedBoxes = 1,
    MinimalSpheres = 2,
    Capsules = 3,
    ConvexHulls = 4,
    SweptHulls = 5,
    MinVolumeShapes = 6,
    EGeometryScriptCollisionGenerationMethod_MAX = 7,
}

---@enum EGeometryScriptContainmentOutcomePins
EGeometryScriptContainmentOutcomePins = {
    Inside = 0,
    Outside = 1,
    EGeometryScriptContainmentOutcomePins_MAX = 2,
}

---@enum EGeometryScriptDebugMessageType
EGeometryScriptDebugMessageType = {
    ErrorMessage = 0,
    WarningMessage = 1,
    EGeometryScriptDebugMessageType_MAX = 2,
}

---@enum EGeometryScriptErrorType
EGeometryScriptErrorType = {
    NoError = 0,
    UnknownError = 1,
    InvalidInputs = 2,
    OperationFailed = 3,
    EGeometryScriptErrorType_MAX = 4,
}

---@enum EGeometryScriptFillHolesMethod
EGeometryScriptFillHolesMethod = {
    Automatic = 0,
    MinimalFill = 1,
    PolygonTriangulation = 2,
    TriangleFan = 3,
    PlanarProjection = 4,
    EGeometryScriptFillHolesMethod_MAX = 5,
}

---@enum EGeometryScriptFlareType
EGeometryScriptFlareType = {
    SinMode = 0,
    SinSquaredMode = 1,
    TriangleMode = 2,
    EGeometryScriptFlareType_MAX = 3,
}

---@enum EGeometryScriptGridSizingMethod
EGeometryScriptGridSizingMethod = {
    GridCellSize = 0,
    GridResolution = 1,
    EGeometryScriptGridSizingMethod_MAX = 2,
}

---@enum EGeometryScriptIndexType
EGeometryScriptIndexType = {
    Any = 0,
    Triangle = 1,
    Vertex = 2,
    MaterialID = 3,
    PolygroupID = 4,
    EGeometryScriptIndexType_MAX = 5,
}

---@enum EGeometryScriptLODType
EGeometryScriptLODType = {
    MaxAvailable = 0,
    HiResSourceModel = 1,
    SourceModel = 2,
    RenderData = 3,
    EGeometryScriptLODType_MAX = 4,
}

---@enum EGeometryScriptMathWarpType
EGeometryScriptMathWarpType = {
    SinWave1D = 0,
    SinWave2D = 1,
    SinWave3D = 2,
    EGeometryScriptMathWarpType_MAX = 3,
}

---@enum EGeometryScriptMorphologicalOpType
EGeometryScriptMorphologicalOpType = {
    Dilate = 0,
    Contract = 1,
    Close = 2,
    Open = 3,
    EGeometryScriptMorphologicalOpType_MAX = 4,
}

---@enum EGeometryScriptOutcomePins
EGeometryScriptOutcomePins = {
    Failure = 0,
    Success = 1,
    EGeometryScriptOutcomePins_MAX = 2,
}

---@enum EGeometryScriptPrimitiveOriginMode
EGeometryScriptPrimitiveOriginMode = {
    Center = 0,
    Base = 1,
    EGeometryScriptPrimitiveOriginMode_MAX = 2,
}

---@enum EGeometryScriptPrimitivePolygroupMode
EGeometryScriptPrimitivePolygroupMode = {
    SingleGroup = 0,
    PerFace = 1,
    PerQuad = 2,
    EGeometryScriptPrimitivePolygroupMode_MAX = 3,
}

---@enum EGeometryScriptPrimitiveUVMode
EGeometryScriptPrimitiveUVMode = {
    Uniform = 0,
    ScaleToFill = 1,
    EGeometryScriptPrimitiveUVMode_MAX = 2,
}

---@enum EGeometryScriptRemoveHiddenTrianglesMethod
EGeometryScriptRemoveHiddenTrianglesMethod = {
    FastWindingNumber = 0,
    RaycastOcclusionTest = 1,
    EGeometryScriptRemoveHiddenTrianglesMethod_MAX = 2,
}

---@enum EGeometryScriptRemoveMeshSimplificationType
EGeometryScriptRemoveMeshSimplificationType = {
    StandardQEM = 0,
    VolumePreserving = 1,
    AttributeAware = 2,
    EGeometryScriptRemoveMeshSimplificationType_MAX = 3,
}

---@enum EGeometryScriptSearchOutcomePins
EGeometryScriptSearchOutcomePins = {
    Found = 0,
    NotFound = 1,
    EGeometryScriptSearchOutcomePins_MAX = 2,
}

---@enum EGeometryScriptSweptHullAxis
EGeometryScriptSweptHullAxis = {
    X = 0,
    Y = 1,
    Z = 2,
    SmallestBoxDimension = 3,
    SmallestVolume = 4,
    EGeometryScriptSweptHullAxis_MAX = 5,
}

---@enum EGeometryScriptTangentTypes
EGeometryScriptTangentTypes = {
    FastMikkT = 0,
    PerTriangle = 1,
    EGeometryScriptTangentTypes_MAX = 2,
}

---@enum EGeometryScriptUVFlattenMethod
EGeometryScriptUVFlattenMethod = {
    ExpMap = 0,
    Conformal = 1,
    EGeometryScriptUVFlattenMethod_MAX = 2,
}

---@enum EGeometryScriptUVIslandSource
EGeometryScriptUVIslandSource = {
    PolyGroups = 0,
    UVIslands = 1,
    EGeometryScriptUVIslandSource_MAX = 2,
}

