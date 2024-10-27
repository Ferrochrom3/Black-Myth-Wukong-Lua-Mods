---@meta

---@class FGeometryScript3DGridParameters
---@field SizeMethod EGeometryScriptGridSizingMethod
---@field GridCellSize float
---@field GridResolution int32
FGeometryScript3DGridParameters = {}



---@class FGeometryScriptBendWarpOptions
---@field bSymmetricExtents boolean
---@field LowerExtent float
---@field bBidirectional boolean
FGeometryScriptBendWarpOptions = {}



---@class FGeometryScriptCalculateNormalsOptions
---@field bAngleWeighted boolean
---@field bAreaWeighted boolean
FGeometryScriptCalculateNormalsOptions = {}



---@class FGeometryScriptCollisionFromMeshOptions
---@field bEmitTransaction boolean
---@field Method EGeometryScriptCollisionGenerationMethod
---@field bAutoDetectSpheres boolean
---@field bAutoDetectBoxes boolean
---@field bAutoDetectCapsules boolean
---@field MinThickness float
---@field bSimplifyHulls boolean
---@field ConvexHullTargetFaceCount int32
---@field SweptHullSimplifyTolerance float
---@field SweptHullAxis EGeometryScriptSweptHullAxis
---@field bRemoveFullyContainedShapes boolean
---@field MaxShapeCount int32
FGeometryScriptCollisionFromMeshOptions = {}



---@class FGeometryScriptColorFlags
---@field bRed boolean
---@field bGreen boolean
---@field bBlue boolean
---@field bAlpha boolean
FGeometryScriptColorFlags = {}



---@class FGeometryScriptColorList
FGeometryScriptColorList = {}


---@class FGeometryScriptConvexHullOptions
---@field bPrefilterVertices boolean
---@field PrefilterGridResolution int32
---@field SimplifyToFaceCount int32
FGeometryScriptConvexHullOptions = {}



---@class FGeometryScriptCopyMeshFromAssetOptions
---@field bApplyBuildSettings boolean
---@field bRequestTangents boolean
---@field bIgnoreRemoveDegenerates boolean
FGeometryScriptCopyMeshFromAssetOptions = {}



---@class FGeometryScriptCopyMeshFromComponentOptions
---@field bWantNormals boolean
---@field bWantTangents boolean
---@field RequestedLOD FGeometryScriptMeshReadLOD
FGeometryScriptCopyMeshFromComponentOptions = {}



---@class FGeometryScriptCopyMeshToAssetOptions
---@field bEnableRecomputeNormals boolean
---@field bEnableRecomputeTangents boolean
---@field bEnableRemoveDegenerates boolean
---@field bReplaceMaterials boolean
---@field NewMaterials TArray<UMaterialInterface>
---@field NewMaterialSlotNames TArray<FName>
---@field bApplyNaniteSettings boolean
---@field NaniteSettings FGeometryScriptNaniteOptions
---@field bEmitTransaction boolean
---@field bDeferMeshPostEditChange boolean
FGeometryScriptCopyMeshToAssetOptions = {}



---@class FGeometryScriptDebugMessage
---@field MessageType EGeometryScriptDebugMessageType
---@field ErrorType EGeometryScriptErrorType
---@field Message FText
FGeometryScriptDebugMessage = {}



---@class FGeometryScriptDisplaceFromTextureOptions
---@field Magnitude float
---@field UVScale FVector2D
---@field UVOffset FVector2D
---@field Center float
---@field ImageChannel int32
FGeometryScriptDisplaceFromTextureOptions = {}



---@class FGeometryScriptDynamicMeshBVH
FGeometryScriptDynamicMeshBVH = {}


---@class FGeometryScriptExpMapUVOptions
---@field NormalSmoothingRounds int32
---@field NormalSmoothingAlpha float
FGeometryScriptExpMapUVOptions = {}



---@class FGeometryScriptFillHolesOptions
---@field FillMethod EGeometryScriptFillHolesMethod
FGeometryScriptFillHolesOptions = {}



---@class FGeometryScriptFlareWarpOptions
---@field bSymmetricExtents boolean
---@field LowerExtent float
---@field FlareType EGeometryScriptFlareType
FGeometryScriptFlareWarpOptions = {}



---@class FGeometryScriptGroupLayer
---@field bDefaultLayer boolean
---@field ExtendedLayerIndex int32
FGeometryScriptGroupLayer = {}



---@class FGeometryScriptIndexList
---@field IndexType EGeometryScriptIndexType
FGeometryScriptIndexList = {}



---@class FGeometryScriptIsSameMeshOptions
---@field bCheckConnectivity boolean
---@field bCheckEdgeIDs boolean
---@field bCheckNormals boolean
---@field bCheckColors boolean
---@field bCheckUVs boolean
---@field bCheckGroups boolean
---@field bCheckAttributes boolean
---@field Epsilon float
FGeometryScriptIsSameMeshOptions = {}



---@class FGeometryScriptIterativeMeshSmoothingOptions
---@field NumIterations int32
---@field alpha float
FGeometryScriptIterativeMeshSmoothingOptions = {}



---@class FGeometryScriptMathWarpOptions
---@field Magnitude float
---@field Frequency float
---@field FrequencyShift float
FGeometryScriptMathWarpOptions = {}



---@class FGeometryScriptMeasureMeshDistanceOptions
---@field bSymmetric boolean
FGeometryScriptMeasureMeshDistanceOptions = {}



---@class FGeometryScriptMeshBevelOptions
---@field BevelDistance float
---@field bInferMaterialID boolean
---@field SetMaterialID int32
---@field bApplyFilterBox boolean
---@field FilterBox FBox
---@field FilterBoxTransform FTransform
---@field bFullyContained boolean
FGeometryScriptMeshBevelOptions = {}



---@class FGeometryScriptMeshBooleanOptions
---@field bFillHoles boolean
---@field bSimplifyOutput boolean
---@field SimplifyPlanarTolerance float
FGeometryScriptMeshBooleanOptions = {}



---@class FGeometryScriptMeshExtrudeOptions
---@field ExtrudeDistance float
---@field ExtrudeDirection FVector
---@field UVScale float
---@field bSolidsToShells boolean
FGeometryScriptMeshExtrudeOptions = {}



---@class FGeometryScriptMeshMirrorOptions
---@field bApplyPlaneCut boolean
---@field bFlipCutSide boolean
---@field bWeldAlongPlane boolean
FGeometryScriptMeshMirrorOptions = {}



---@class FGeometryScriptMeshOffsetOptions
---@field OffsetDistance float
---@field bFixedBoundary boolean
---@field SolveSteps int32
---@field SmoothAlpha float
---@field bReprojectDuringSmoothing boolean
---@field BoundaryAlpha float
FGeometryScriptMeshOffsetOptions = {}



---@class FGeometryScriptMeshPlaneCutOptions
---@field bFillHoles boolean
---@field bFillSpans boolean
---@field bFlipCutSide boolean
---@field UVWorldDimension float
FGeometryScriptMeshPlaneCutOptions = {}



---@class FGeometryScriptMeshPlaneSliceOptions
---@field bFillHoles boolean
---@field bFillSpans boolean
---@field GapWidth float
---@field UVWorldDimension float
FGeometryScriptMeshPlaneSliceOptions = {}



---@class FGeometryScriptMeshReadLOD
---@field LODType EGeometryScriptLODType
---@field LODIndex int32
FGeometryScriptMeshReadLOD = {}



---@class FGeometryScriptMeshSelfUnionOptions
---@field bFillHoles boolean
---@field bTrimFlaps boolean
---@field bSimplifyOutput boolean
---@field SimplifyPlanarTolerance float
---@field WindingThreshold float
FGeometryScriptMeshSelfUnionOptions = {}



---@class FGeometryScriptMeshWriteLOD
---@field bWriteHiResSource boolean
---@field LODIndex int32
FGeometryScriptMeshWriteLOD = {}



---@class FGeometryScriptMorphologyOptions
---@field SDFGridParameters FGeometryScript3DGridParameters
---@field bUseSeparateMeshGrid boolean
---@field MeshGridParameters FGeometryScript3DGridParameters
---@field Operation EGeometryScriptMorphologicalOpType
---@field Distance float
FGeometryScriptMorphologyOptions = {}



---@class FGeometryScriptNaniteOptions
---@field bEnabled boolean
---@field FallbackPercentTriangles float
---@field FallbackRelativeError float
FGeometryScriptNaniteOptions = {}



---@class FGeometryScriptPNTessellateOptions
---@field bRecomputeNormals boolean
FGeometryScriptPNTessellateOptions = {}



---@class FGeometryScriptPatchBuilderOptions
---@field InitialPatchCount int32
---@field MinPatchSize int32
---@field PatchCurvatureAlignmentWeight float
---@field PatchMergingMetricThresh float
---@field PatchMergingAngleThresh float
---@field ExpMapOptions FGeometryScriptExpMapUVOptions
---@field bRespectInputGroups boolean
---@field GroupLayer FGeometryScriptGroupLayer
---@field bAutoPack boolean
---@field PackingOptions FGeometryScriptRepackUVsOptions
FGeometryScriptPatchBuilderOptions = {}



---@class FGeometryScriptPerlinNoiseLayerOptions
---@field Magnitude float
---@field Frequency float
---@field FrequencyShift FVector
---@field RandomSeed int32
FGeometryScriptPerlinNoiseLayerOptions = {}



---@class FGeometryScriptPerlinNoiseOptions
---@field BaseLayer FGeometryScriptPerlinNoiseLayerOptions
---@field bApplyAlongNormal boolean
FGeometryScriptPerlinNoiseOptions = {}



---@class FGeometryScriptPlanarSimplifyOptions
---@field AngleThreshold float
FGeometryScriptPlanarSimplifyOptions = {}



---@class FGeometryScriptPolygroupSimplifyOptions
---@field AngleThreshold float
FGeometryScriptPolygroupSimplifyOptions = {}



---@class FGeometryScriptPrimitiveOptions
---@field PolygroupMode EGeometryScriptPrimitivePolygroupMode
---@field bFlipOrientation boolean
---@field UVMode EGeometryScriptPrimitiveUVMode
FGeometryScriptPrimitiveOptions = {}



---@class FGeometryScriptRayHitResult
---@field bHit boolean
---@field RayParameter float
---@field HitTriangleID int32
---@field HitPosition FVector
---@field HitBaryCoords FVector
FGeometryScriptRayHitResult = {}



---@class FGeometryScriptRecomputeUVsOptions
---@field Method EGeometryScriptUVFlattenMethod
---@field IslandSource EGeometryScriptUVIslandSource
---@field ExpMapOptions FGeometryScriptExpMapUVOptions
---@field GroupLayer FGeometryScriptGroupLayer
---@field bAutoAlignIslandsWithAxes boolean
FGeometryScriptRecomputeUVsOptions = {}



---@class FGeometryScriptRemoveHiddenTrianglesOptions
---@field Method EGeometryScriptRemoveHiddenTrianglesMethod
---@field SamplesPerTriangle int32
---@field ShrinkSelection int32
---@field WindingIsoValue float
---@field RaysPerSample int32
---@field NormalOffset float
---@field bCompactResult boolean
FGeometryScriptRemoveHiddenTrianglesOptions = {}



---@class FGeometryScriptRemoveSmallComponentOptions
---@field MinVolume float
---@field MinArea float
---@field MinTriangleCount int32
FGeometryScriptRemoveSmallComponentOptions = {}



---@class FGeometryScriptRepackUVsOptions
---@field TargetImageWidth int32
---@field bOptimizeIslandRotation boolean
FGeometryScriptRepackUVsOptions = {}



---@class FGeometryScriptRevolveOptions
---@field RevolveDegrees float
---@field DegreeOffset float
---@field bReverseDirection boolean
---@field bHardNormals boolean
---@field HardNormalAngle float
---@field bProfileAtMidpoint boolean
---@field bFillPartialRevolveEndcaps boolean
FGeometryScriptRevolveOptions = {}



---@class FGeometryScriptSetSimpleCollisionOptions
---@field bEmitTransaction boolean
FGeometryScriptSetSimpleCollisionOptions = {}



---@class FGeometryScriptSimpleMeshBuffers
---@field Vertices TArray<FVector>
---@field Normals TArray<FVector>
---@field UV0 TArray<FVector2D>
---@field UV1 TArray<FVector2D>
---@field UV2 TArray<FVector2D>
---@field UV3 TArray<FVector2D>
---@field UV4 TArray<FVector2D>
---@field UV5 TArray<FVector2D>
---@field UV6 TArray<FVector2D>
---@field UV7 TArray<FVector2D>
---@field VertexColors TArray<FLinearColor>
---@field Triangles TArray<FIntVector>
---@field TriGroupIDs TArray<int32>
FGeometryScriptSimpleMeshBuffers = {}



---@class FGeometryScriptSimplifyMeshOptions
---@field Method EGeometryScriptRemoveMeshSimplificationType
---@field bAllowSeamCollapse boolean
---@field bAllowSeamSmoothing boolean
---@field bAllowSeamSplits boolean
---@field bPreserveVertexPositions boolean
---@field bRetainQuadricMemory boolean
FGeometryScriptSimplifyMeshOptions = {}



---@class FGeometryScriptSolidifyOptions
---@field GridParameters FGeometryScript3DGridParameters
---@field WindingThreshold float
---@field bSolidAtBoundaries boolean
---@field ExtendBounds float
---@field SurfaceSearchSteps int32
FGeometryScriptSolidifyOptions = {}



---@class FGeometryScriptSpatialQueryOptions
---@field MaxDistance float
---@field bAllowUnsafeModifiedQueries boolean
---@field WindingIsoThreshold float
FGeometryScriptSpatialQueryOptions = {}



---@class FGeometryScriptSplitNormalsOptions
---@field bSplitByOpeningAngle boolean
---@field OpeningAngleDeg float
---@field bSplitByFaceGroup boolean
---@field GroupLayer FGeometryScriptGroupLayer
FGeometryScriptSplitNormalsOptions = {}



---@class FGeometryScriptSweptHullOptions
---@field bPrefilterVertices boolean
---@field PrefilterGridResolution int32
---@field MinThickness float
---@field bSimplify boolean
---@field MinEdgeLength float
---@field SimplifyTolerance float
FGeometryScriptSweptHullOptions = {}



---@class FGeometryScriptTangentsOptions
---@field Type EGeometryScriptTangentTypes
---@field UVLayer int32
FGeometryScriptTangentsOptions = {}



---@class FGeometryScriptTriangle
---@field Vector0 FVector
---@field Vector1 FVector
---@field Vector2 FVector
FGeometryScriptTriangle = {}



---@class FGeometryScriptTriangleList
FGeometryScriptTriangleList = {}


---@class FGeometryScriptTrianglePoint
---@field bValid boolean
---@field TriangleID int32
---@field position FVector
---@field BaryCoords FVector
FGeometryScriptTrianglePoint = {}



---@class FGeometryScriptTwistWarpOptions
---@field bSymmetricExtents boolean
---@field LowerExtent float
---@field bBidirectional boolean
FGeometryScriptTwistWarpOptions = {}



---@class FGeometryScriptUVList
FGeometryScriptUVList = {}


---@class FGeometryScriptUVTriangle
---@field UV0 FVector2D
---@field UV1 FVector2D
---@field UV2 FVector2D
FGeometryScriptUVTriangle = {}



---@class FGeometryScriptVectorList
FGeometryScriptVectorList = {}


---@class FGeometryScriptWeldEdgesOptions
---@field Tolerance float
---@field bOnlyUniquePairs boolean
FGeometryScriptWeldEdgesOptions = {}



---@class FGeometryScriptXAtlasOptions
---@field MaxIterations int32
FGeometryScriptXAtlasOptions = {}



---@class UGeometryScriptDebug : UObject
---@field Messages TArray<FGeometryScriptDebugMessage>
UGeometryScriptDebug = {}



---@class UGeometryScriptLibrary_CollisionFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_CollisionFunctions = {}

---@param FromDynamicMesh UDynamicMesh
---@param ToStaticMeshAsset UStaticMesh
---@param Options FGeometryScriptCollisionFromMeshOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_CollisionFunctions:SetStaticMeshCollisionFromMesh(FromDynamicMesh, ToStaticMeshAsset, Options, Debug) end
---@param StaticMeshAsset UStaticMesh
---@param SourceComponent UPrimitiveComponent
---@param Options FGeometryScriptSetSimpleCollisionOptions
---@param Debug UGeometryScriptDebug
function UGeometryScriptLibrary_CollisionFunctions:SetStaticMeshCollisionFromComponent(StaticMeshAsset, SourceComponent, Options, Debug) end
---@param FromDynamicMesh UDynamicMesh
---@param ToDynamicMeshComponent UDynamicMeshComponent
---@param Options FGeometryScriptCollisionFromMeshOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_CollisionFunctions:SetDynamicMeshCollisionFromMesh(FromDynamicMesh, ToDynamicMeshComponent, Options, Debug) end
---@param Component UDynamicMeshComponent
---@param bEmitTransaction boolean
---@param Debug UGeometryScriptDebug
function UGeometryScriptLibrary_CollisionFunctions:ResetDynamicMeshCollision(Component, bEmitTransaction, Debug) end


---@class UGeometryScriptLibrary_ContainmentFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_ContainmentFunctions = {}

---@param TargetMesh UDynamicMesh
---@param CopyToMesh UDynamicMesh
---@param CopyToMeshOut UDynamicMesh
---@param ProjectionFrame FTransform
---@param Options FGeometryScriptSweptHullOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_ContainmentFunctions:ComputeMeshSweptHull(TargetMesh, CopyToMesh, CopyToMeshOut, ProjectionFrame, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param CopyToMesh UDynamicMesh
---@param CopyToMeshOut UDynamicMesh
---@param Options FGeometryScriptConvexHullOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_ContainmentFunctions:ComputeMeshConvexHull(TargetMesh, CopyToMesh, CopyToMeshOut, Options, Debug) end


---@class UGeometryScriptLibrary_ListUtilityFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_ListUtilityFunctions = {}

---@param VectorList FGeometryScriptVectorList
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetVectorListLength(VectorList) end
---@param VectorList FGeometryScriptVectorList
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetVectorListLastIndex(VectorList) end
---@param VectorList FGeometryScriptVectorList
---@param Index int32
---@param bIsValidIndex boolean
---@return FVector
function UGeometryScriptLibrary_ListUtilityFunctions:GetVectorListItem(VectorList, Index, bIsValidIndex) end
---@param UVList FGeometryScriptUVList
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetUVListLength(UVList) end
---@param UVList FGeometryScriptUVList
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetUVListLastIndex(UVList) end
---@param UVList FGeometryScriptUVList
---@param Index int32
---@param bIsValidIndex boolean
---@return FVector2D
function UGeometryScriptLibrary_ListUtilityFunctions:GetUVListItem(UVList, Index, bIsValidIndex) end
---@param TriangleList FGeometryScriptTriangleList
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetTriangleListLength(TriangleList) end
---@param TriangleList FGeometryScriptTriangleList
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetTriangleListLastTriangle(TriangleList) end
---@param TriangleList FGeometryScriptTriangleList
---@param Triangle int32
---@param bIsValidTriangle boolean
---@return FIntVector
function UGeometryScriptLibrary_ListUtilityFunctions:GetTriangleListItem(TriangleList, Triangle, bIsValidTriangle) end
---@param IndexList FGeometryScriptIndexList
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetIndexListLength(IndexList) end
---@param IndexList FGeometryScriptIndexList
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetIndexListLastIndex(IndexList) end
---@param IndexList FGeometryScriptIndexList
---@param Index int32
---@param bIsValidIndex boolean
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetIndexListItem(IndexList, Index, bIsValidIndex) end
---@param ColorList FGeometryScriptColorList
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetColorListLength(ColorList) end
---@param ColorList FGeometryScriptColorList
---@return int32
function UGeometryScriptLibrary_ListUtilityFunctions:GetColorListLastIndex(ColorList) end
---@param ColorList FGeometryScriptColorList
---@param Index int32
---@param bIsValidIndex boolean
---@return FLinearColor
function UGeometryScriptLibrary_ListUtilityFunctions:GetColorListItem(ColorList, Index, bIsValidIndex) end
---@param VectorList FGeometryScriptVectorList
---@param VectorArray TArray<FVector>
function UGeometryScriptLibrary_ListUtilityFunctions:ConvertVectorListToArray(VectorList, VectorArray) end
---@param UVList FGeometryScriptUVList
---@param UVArray TArray<FVector2D>
function UGeometryScriptLibrary_ListUtilityFunctions:ConvertUVListToArray(UVList, UVArray) end
---@param TriangleList FGeometryScriptTriangleList
---@param TriangleArray TArray<FIntVector>
function UGeometryScriptLibrary_ListUtilityFunctions:ConvertTriangleListToArray(TriangleList, TriangleArray) end
---@param IndexList FGeometryScriptIndexList
---@param IndexArray TArray<int32>
function UGeometryScriptLibrary_ListUtilityFunctions:ConvertIndexListToArray(IndexList, IndexArray) end
---@param ColorList FGeometryScriptColorList
---@param ColorArray TArray<FLinearColor>
function UGeometryScriptLibrary_ListUtilityFunctions:ConvertColorListToArray(ColorList, ColorArray) end
---@param VectorArray TArray<FVector>
---@param VectorList FGeometryScriptVectorList
function UGeometryScriptLibrary_ListUtilityFunctions:ConvertArrayToVectorList(VectorArray, VectorList) end
---@param UVArray TArray<FVector2D>
---@param UVList FGeometryScriptUVList
function UGeometryScriptLibrary_ListUtilityFunctions:ConvertArrayToUVList(UVArray, UVList) end
---@param TriangleArray TArray<FIntVector>
---@param TriangleList FGeometryScriptTriangleList
function UGeometryScriptLibrary_ListUtilityFunctions:ConvertArrayToTriangleList(TriangleArray, TriangleList) end
---@param IndexArray TArray<int32>
---@param IndexList FGeometryScriptIndexList
---@param IndexType EGeometryScriptIndexType
function UGeometryScriptLibrary_ListUtilityFunctions:ConvertArrayToIndexList(IndexArray, IndexList, IndexType) end
---@param ColorArray TArray<FLinearColor>
---@param ColorList FGeometryScriptColorList
function UGeometryScriptLibrary_ListUtilityFunctions:ConvertArrayToColorList(ColorArray, ColorList) end


---@class UGeometryScriptLibrary_MeshBasicEditFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshBasicEditFunctions = {}

---@param TargetMesh UDynamicMesh
---@param VertexID int32
---@param NewPosition FVector
---@param bIsValidVertex boolean
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:SetVertexPosition(TargetMesh, VertexID, NewPosition, bIsValidVertex, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:DiscardMeshAttributes(TargetMesh, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param VertexList FGeometryScriptIndexList
---@param NumDeleted int32
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:DeleteVerticesFromMesh(TargetMesh, VertexList, NumDeleted, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param VertexID int32
---@param bWasVertexDeleted boolean
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:DeleteVertexFromMesh(TargetMesh, VertexID, bWasVertexDeleted, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param TriangleList FGeometryScriptIndexList
---@param NumDeleted int32
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:DeleteTrianglesFromMesh(TargetMesh, TriangleList, NumDeleted, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param TriangleID int32
---@param bWasTriangleDeleted boolean
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:DeleteTriangleFromMesh(TargetMesh, TriangleID, bWasTriangleDeleted, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param AppendMesh UDynamicMesh
---@param AppendTransform FTransform
---@param RepeatCount int32
---@param bApplyTransformToFirstInstance boolean
---@param bDeferChangeNotifications boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:AppendMeshRepeated(TargetMesh, AppendMesh, AppendTransform, RepeatCount, bApplyTransformToFirstInstance, bDeferChangeNotifications, Debug) end
---@param TargetMesh UDynamicMesh
---@param AppendMesh UDynamicMesh
---@param AppendTransform FTransform
---@param bDeferChangeNotifications boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:AppendMesh(TargetMesh, AppendMesh, AppendTransform, bDeferChangeNotifications, Debug) end
---@param TargetMesh UDynamicMesh
---@param Buffers FGeometryScriptSimpleMeshBuffers
---@param NewTriangleIndicesList FGeometryScriptIndexList
---@param MaterialID int32
---@param bDeferChangeNotifications boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:AppendBuffersToMesh(TargetMesh, Buffers, NewTriangleIndicesList, MaterialID, bDeferChangeNotifications, Debug) end
---@param TargetMesh UDynamicMesh
---@param NewPositionsList FGeometryScriptVectorList
---@param NewIndicesList FGeometryScriptIndexList
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:AddVerticesToMesh(TargetMesh, NewPositionsList, NewIndicesList, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param NewPosition FVector
---@param NewVertexIndex int32
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:AddVertexToMesh(TargetMesh, NewPosition, NewVertexIndex, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param NewTriangle FIntVector
---@param NewTriangleIndex int32
---@param NewTriangleGroupID int32
---@param bDeferChangeNotifications boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:AddTriangleToMesh(TargetMesh, NewTriangle, NewTriangleIndex, NewTriangleGroupID, bDeferChangeNotifications, Debug) end
---@param TargetMesh UDynamicMesh
---@param NewTrianglesList FGeometryScriptTriangleList
---@param NewIndicesList FGeometryScriptIndexList
---@param NewTriangleGroupID int32
---@param bDeferChangeNotifications boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBasicEditFunctions:AddTrianglesToMesh(TargetMesh, NewTrianglesList, NewIndicesList, NewTriangleGroupID, bDeferChangeNotifications, Debug) end


---@class UGeometryScriptLibrary_MeshBooleanFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshBooleanFunctions = {}

---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptMeshSelfUnionOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBooleanFunctions:ApplyMeshSelfUnion(TargetMesh, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param CutFrame FTransform
---@param Options FGeometryScriptMeshPlaneSliceOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBooleanFunctions:ApplyMeshPlaneSlice(TargetMesh, CutFrame, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param CutFrame FTransform
---@param Options FGeometryScriptMeshPlaneCutOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBooleanFunctions:ApplyMeshPlaneCut(TargetMesh, CutFrame, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param MirrorFrame FTransform
---@param Options FGeometryScriptMeshMirrorOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBooleanFunctions:ApplyMeshMirror(TargetMesh, MirrorFrame, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param TargetTransform FTransform
---@param ToolMesh UDynamicMesh
---@param ToolTransform FTransform
---@param Operation EGeometryScriptBooleanOperation
---@param Options FGeometryScriptMeshBooleanOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshBooleanFunctions:ApplyMeshBoolean(TargetMesh, TargetTransform, ToolMesh, ToolTransform, Operation, Options, Debug) end


---@class UGeometryScriptLibrary_MeshComparisonFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshComparisonFunctions = {}

---@param TargetMesh UDynamicMesh
---@param OtherMesh UDynamicMesh
---@param Options FGeometryScriptMeasureMeshDistanceOptions
---@param MaxDistance double
---@param MinDistance double
---@param AverageDistance double
---@param RootMeanSqrDeviation double
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshComparisonFunctions:MeasureDistancesBetweenMeshes(TargetMesh, OtherMesh, Options, MaxDistance, MinDistance, AverageDistance, RootMeanSqrDeviation, Debug) end
---@param TargetMesh UDynamicMesh
---@param OtherMesh UDynamicMesh
---@param Options FGeometryScriptIsSameMeshOptions
---@param bIsSameMesh boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshComparisonFunctions:IsSameMeshAs(TargetMesh, OtherMesh, Options, bIsSameMesh, Debug) end
---@param TargetMesh UDynamicMesh
---@param TargetTransform FTransform
---@param OtherMesh UDynamicMesh
---@param OtherTransform FTransform
---@param bIsIntersecting boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshComparisonFunctions:IsIntersectingMesh(TargetMesh, TargetTransform, OtherMesh, OtherTransform, bIsIntersecting, Debug) end


---@class UGeometryScriptLibrary_MeshDecompositionFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshDecompositionFunctions = {}

---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param ComponentMeshes TArray<UDynamicMesh>
---@param ComponentPolygroups TArray<int32>
---@param MeshPool UDynamicMeshPool
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDecompositionFunctions:SplitMeshByPolygroups(TargetMesh, GroupLayer, ComponentMeshes, ComponentPolygroups, MeshPool, Debug) end
---@param TargetMesh UDynamicMesh
---@param ComponentMeshes TArray<UDynamicMesh>
---@param ComponentMaterialIDs TArray<int32>
---@param MeshPool UDynamicMeshPool
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDecompositionFunctions:SplitMeshByMaterialIDs(TargetMesh, ComponentMeshes, ComponentMaterialIDs, MeshPool, Debug) end
---@param TargetMesh UDynamicMesh
---@param ComponentMeshes TArray<UDynamicMesh>
---@param MeshPool UDynamicMeshPool
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDecompositionFunctions:SplitMeshByComponents(TargetMesh, ComponentMeshes, MeshPool, Debug) end
---@param TargetMesh UDynamicMesh
---@param StoreToSubmesh UDynamicMesh
---@param TriangleList FGeometryScriptIndexList
---@param StoreToSubmeshOut UDynamicMesh
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDecompositionFunctions:GetSubMeshFromMesh(TargetMesh, StoreToSubmesh, TriangleList, StoreToSubmeshOut, Debug) end
---@param CopyFromMesh UDynamicMesh
---@param CopyToMesh UDynamicMesh
---@param CopyToMeshOut UDynamicMesh
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDecompositionFunctions:CopyMeshToMesh(CopyFromMesh, CopyToMesh, CopyToMeshOut, Debug) end


---@class UGeometryScriptLibrary_MeshDeformFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshDeformFunctions = {}

---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptTwistWarpOptions
---@param TwistOrientation FTransform
---@param TwistAngle float
---@param TwistExtent float
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDeformFunctions:ApplyTwistWarpToMesh(TargetMesh, Options, TwistOrientation, TwistAngle, TwistExtent, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptPerlinNoiseOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDeformFunctions:ApplyPerlinNoiseToMesh(TargetMesh, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param WarpOrientation FTransform
---@param WarpType EGeometryScriptMathWarpType
---@param Options FGeometryScriptMathWarpOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDeformFunctions:ApplyMathWarpToMesh(TargetMesh, WarpOrientation, WarpType, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptIterativeMeshSmoothingOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDeformFunctions:ApplyIterativeSmoothingToMesh(TargetMesh, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptFlareWarpOptions
---@param FlareOrientation FTransform
---@param FlarePercentX float
---@param FlarePercentY float
---@param FlareExtent float
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDeformFunctions:ApplyFlareWarpToMesh(TargetMesh, Options, FlareOrientation, FlarePercentX, FlarePercentY, FlareExtent, Debug) end
---@param TargetMesh UDynamicMesh
---@param Texture UTexture2D
---@param Options FGeometryScriptDisplaceFromTextureOptions
---@param UVLayer int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDeformFunctions:ApplyDisplaceFromTextureMap(TargetMesh, Texture, Options, UVLayer, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptBendWarpOptions
---@param BendOrientation FTransform
---@param BendAngle float
---@param BendExtent float
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshDeformFunctions:ApplyBendWarpToMesh(TargetMesh, Options, BendOrientation, BendAngle, BendExtent, Debug) end


---@class UGeometryScriptLibrary_MeshMaterialFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshMaterialFunctions = {}

---@param TargetMesh UDynamicMesh
---@param TriangleID int32
---@param MaterialID int32
---@param bIsValidTriangle boolean
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshMaterialFunctions:SetTriangleMaterialID(TargetMesh, TriangleID, MaterialID, bIsValidTriangle, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param PolygroupID int32
---@param MaterialID int32
---@param bIsValidPolygroupID boolean
---@param bDeferChangeNotifications boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshMaterialFunctions:SetPolygroupMaterialID(TargetMesh, GroupLayer, PolygroupID, MaterialID, bIsValidPolygroupID, bDeferChangeNotifications, Debug) end
---@param TargetMesh UDynamicMesh
---@param TriangleMaterialIDList FGeometryScriptIndexList
---@param bDeferChangeNotifications boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshMaterialFunctions:SetAllTriangleMaterialIDs(TargetMesh, TriangleMaterialIDList, bDeferChangeNotifications, Debug) end
---@param TargetMesh UDynamicMesh
---@param FromMaterialID int32
---@param ToMaterialID int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshMaterialFunctions:RemapMaterialIDs(TargetMesh, FromMaterialID, ToMaterialID, Debug) end
---@param TargetMesh UDynamicMesh
---@param TriangleID int32
---@param bIsValidTriangle boolean
---@return int32
function UGeometryScriptLibrary_MeshMaterialFunctions:GetTriangleMaterialID(TargetMesh, TriangleID, bIsValidTriangle) end
---@param TargetMesh UDynamicMesh
---@param bHasMaterialIDs boolean
---@return int32
function UGeometryScriptLibrary_MeshMaterialFunctions:GetMaxMaterialID(TargetMesh, bHasMaterialIDs) end
---@param TargetMesh UDynamicMesh
---@param MaterialIDList FGeometryScriptIndexList
---@param bHasMaterialIDs boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshMaterialFunctions:GetAllTriangleMaterialIDs(TargetMesh, MaterialIDList, bHasMaterialIDs) end
---@param TargetMesh UDynamicMesh
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshMaterialFunctions:EnableMaterialIDs(TargetMesh, Debug) end
---@param TargetMesh UDynamicMesh
---@param MaterialID int32
---@param NumDeleted int32
---@param bDeferChangeNotifications boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshMaterialFunctions:DeleteTrianglesByMaterialID(TargetMesh, MaterialID, NumDeleted, bDeferChangeNotifications, Debug) end
---@param TargetMesh UDynamicMesh
---@param SourceMaterialList TArray<UMaterialInterface>
---@param CompactedMaterialList TArray<UMaterialInterface>
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshMaterialFunctions:CompactMaterialIDs(TargetMesh, SourceMaterialList, CompactedMaterialList, Debug) end
---@param TargetMesh UDynamicMesh
---@param ClearValue int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshMaterialFunctions:ClearMaterialIDs(TargetMesh, ClearValue, Debug) end


---@class UGeometryScriptLibrary_MeshModelingFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshModelingFunctions = {}

---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptMeshOffsetOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshModelingFunctions:ApplyMeshShell(TargetMesh, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptMeshBevelOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshModelingFunctions:ApplyMeshPolygroupBevel(TargetMesh, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptMeshOffsetOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshModelingFunctions:ApplyMeshOffset(TargetMesh, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptMeshExtrudeOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshModelingFunctions:ApplyMeshExtrude(TargetMesh, Options, Debug) end


---@class UGeometryScriptLibrary_MeshNormalsFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshNormalsFunctions = {}

---@param TargetMesh UDynamicMesh
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshNormalsFunctions:SetPerVertexNormals(TargetMesh, Debug) end
---@param TargetMesh UDynamicMesh
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshNormalsFunctions:SetPerFaceNormals(TargetMesh, Debug) end
---@param TargetMesh UDynamicMesh
---@param TriangleID int32
---@param Normals FGeometryScriptTriangle
---@param bIsValidTriangle boolean
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshNormalsFunctions:SetMeshTriangleNormals(TargetMesh, TriangleID, Normals, bIsValidTriangle, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param CalculateOptions FGeometryScriptCalculateNormalsOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshNormalsFunctions:RecomputeNormals(TargetMesh, CalculateOptions, Debug) end
---@param TargetMesh UDynamicMesh
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshNormalsFunctions:FlipNormals(TargetMesh, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptTangentsOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshNormalsFunctions:ComputeTangents(TargetMesh, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param SplitOptions FGeometryScriptSplitNormalsOptions
---@param CalculateOptions FGeometryScriptCalculateNormalsOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshNormalsFunctions:ComputeSplitNormals(TargetMesh, SplitOptions, CalculateOptions, Debug) end
---@param TargetMesh UDynamicMesh
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshNormalsFunctions:AutoRepairNormals(TargetMesh, Debug) end


---@class UGeometryScriptLibrary_MeshPolygroupFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshPolygroupFunctions = {}

---@param TargetMesh UDynamicMesh
---@param NumLayers int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:SetNumExtendedPolygroupLayers(TargetMesh, NumLayers, Debug) end
---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param PolygroupID int32
---@param TriangleIDsOut FGeometryScriptIndexList
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:GetTrianglesInPolygroup(TargetMesh, GroupLayer, PolygroupID, TriangleIDsOut) end
---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param TriangleID int32
---@param bIsValidTriangle boolean
---@return int32
function UGeometryScriptLibrary_MeshPolygroupFunctions:GetTrianglePolygroupID(TargetMesh, GroupLayer, TriangleID, bIsValidTriangle) end
---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param PolygroupIDsOut FGeometryScriptIndexList
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:GetPolygroupIDsInMesh(TargetMesh, GroupLayer, PolygroupIDsOut) end
---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param PolygroupIDsOut FGeometryScriptIndexList
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:GetAllTrianglePolygroupIDs(TargetMesh, GroupLayer, PolygroupIDsOut) end
---@param TargetMesh UDynamicMesh
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:EnablePolygroups(TargetMesh, Debug) end
---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param PolygroupID int32
---@param NumDeleted int32
---@param bDeferChangeNotifications boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:DeleteTrianglesInPolygroup(TargetMesh, GroupLayer, PolygroupID, NumDeleted, bDeferChangeNotifications, Debug) end
---@param TargetMesh UDynamicMesh
---@param FromGroupLayer FGeometryScriptGroupLayer
---@param ToGroupLayer FGeometryScriptGroupLayer
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:CopyPolygroupsLayer(TargetMesh, FromGroupLayer, ToGroupLayer, Debug) end
---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param UVLayer int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:ConvertUVIslandsToPolygroups(TargetMesh, GroupLayer, UVLayer, Debug) end
---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:ConvertComponentsToPolygroups(TargetMesh, GroupLayer, Debug) end
---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param CreaseAngle float
---@param MinGroupSize int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:ComputePolygroupsFromAngleThreshold(TargetMesh, GroupLayer, CreaseAngle, MinGroupSize, Debug) end
---@param TargetMesh UDynamicMesh
---@param GroupLayer FGeometryScriptGroupLayer
---@param ClearValue int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPolygroupFunctions:ClearPolygroups(TargetMesh, GroupLayer, ClearValue, Debug) end


---@class UGeometryScriptLibrary_MeshPrimitiveFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshPrimitiveFunctions = {}

---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param PolygonVertices TArray<FVector2D>
---@param bAllowSelfIntersections boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendTriangulatedPolygon(TargetMesh, PrimitiveOptions, Transform, PolygonVertices, bAllowSelfIntersections, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param RevolveOptions FGeometryScriptRevolveOptions
---@param MajorRadius float
---@param MinorRadius float
---@param MajorSteps int32
---@param MinorSteps int32
---@param Origin EGeometryScriptPrimitiveOriginMode
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendTorus(TargetMesh, PrimitiveOptions, Transform, RevolveOptions, MajorRadius, MinorRadius, MajorSteps, MinorSteps, Origin, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param PolygonVertices TArray<FVector2D>
---@param RevolveOptions FGeometryScriptRevolveOptions
---@param Radius float
---@param Steps int32
---@param RisePerRevolution float
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendSpiralRevolvePolygon(TargetMesh, PrimitiveOptions, Transform, PolygonVertices, RevolveOptions, Radius, Steps, RisePerRevolution, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param Radius float
---@param StepsPhi int32
---@param StepsTheta int32
---@param Origin EGeometryScriptPrimitiveOriginMode
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendSphereLatLong(TargetMesh, PrimitiveOptions, Transform, Radius, StepsPhi, StepsTheta, Origin, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param Radius float
---@param StepsX int32
---@param StepsY int32
---@param StepsZ int32
---@param Origin EGeometryScriptPrimitiveOriginMode
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendSphereBox(TargetMesh, PrimitiveOptions, Transform, Radius, StepsX, StepsY, StepsZ, Origin, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param PolygonVertices TArray<FVector2D>
---@param SweepPath TArray<FVector>
---@param bLoop boolean
---@param bCapped boolean
---@param StartScale float
---@param EndScale float
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendSimpleSweptPolygon(TargetMesh, PrimitiveOptions, Transform, PolygonVertices, SweepPath, bLoop, bCapped, StartScale, EndScale, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param PolygonVertices TArray<FVector2D>
---@param Height float
---@param HeightSteps int32
---@param bCapped boolean
---@param Origin EGeometryScriptPrimitiveOriginMode
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendSimpleExtrudePolygon(TargetMesh, PrimitiveOptions, Transform, PolygonVertices, Height, HeightSteps, bCapped, Origin, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param DimensionX float
---@param DimensionY float
---@param CornerRadius float
---@param StepsWidth int32
---@param StepsHeight int32
---@param StepsRound int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendRoundRectangleXY(TargetMesh, PrimitiveOptions, Transform, DimensionX, DimensionY, CornerRadius, StepsWidth, StepsHeight, StepsRound, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param DimensionX float
---@param DimensionY float
---@param CornerRadius float
---@param StepsWidth int32
---@param StepsHeight int32
---@param StepsRound int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendRoundRectangle_Compatibility_5_0(TargetMesh, PrimitiveOptions, Transform, DimensionX, DimensionY, CornerRadius, StepsWidth, StepsHeight, StepsRound, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param PolygonVertices TArray<FVector2D>
---@param RevolveOptions FGeometryScriptRevolveOptions
---@param Radius float
---@param Steps int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendRevolvePolygon(TargetMesh, PrimitiveOptions, Transform, PolygonVertices, RevolveOptions, Radius, Steps, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param PathVertices TArray<FVector2D>
---@param RevolveOptions FGeometryScriptRevolveOptions
---@param Steps int32
---@param bCapped boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendRevolvePath(TargetMesh, PrimitiveOptions, Transform, PathVertices, RevolveOptions, Steps, bCapped, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param DimensionX float
---@param DimensionY float
---@param StepsWidth int32
---@param StepsHeight int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendRectangleXY(TargetMesh, PrimitiveOptions, Transform, DimensionX, DimensionY, StepsWidth, StepsHeight, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param DimensionX float
---@param DimensionY float
---@param StepsWidth int32
---@param StepsHeight int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendRectangle_Compatibility_5_0(TargetMesh, PrimitiveOptions, Transform, DimensionX, DimensionY, StepsWidth, StepsHeight, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param StepWidth float
---@param StepHeight float
---@param StepDepth float
---@param NumSteps int32
---@param bFloating boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendLinearStairs(TargetMesh, PrimitiveOptions, Transform, StepWidth, StepHeight, StepDepth, NumSteps, bFloating, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param Radius float
---@param AngleSteps int32
---@param SpokeSteps int32
---@param StartAngle float
---@param EndAngle float
---@param HoleRadius float
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendDisc(TargetMesh, PrimitiveOptions, Transform, Radius, AngleSteps, SpokeSteps, StartAngle, EndAngle, HoleRadius, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param Radius float
---@param Height float
---@param RadialSteps int32
---@param HeightSteps int32
---@param bCapped boolean
---@param Origin EGeometryScriptPrimitiveOriginMode
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendCylinder(TargetMesh, PrimitiveOptions, Transform, Radius, Height, RadialSteps, HeightSteps, bCapped, Origin, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param StepWidth float
---@param StepHeight float
---@param InnerRadius float
---@param CurveAngle float
---@param NumSteps int32
---@param bFloating boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendCurvedStairs(TargetMesh, PrimitiveOptions, Transform, StepWidth, StepHeight, InnerRadius, CurveAngle, NumSteps, bFloating, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param BaseRadius float
---@param TopRadius float
---@param Height float
---@param RadialSteps int32
---@param HeightSteps int32
---@param bCapped boolean
---@param Origin EGeometryScriptPrimitiveOriginMode
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendCone(TargetMesh, PrimitiveOptions, Transform, BaseRadius, TopRadius, Height, RadialSteps, HeightSteps, bCapped, Origin, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param Radius float
---@param LineLength float
---@param HemisphereSteps int32
---@param CircleSteps int32
---@param Origin EGeometryScriptPrimitiveOriginMode
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendCapsule(TargetMesh, PrimitiveOptions, Transform, Radius, LineLength, HemisphereSteps, CircleSteps, Origin, Debug) end
---@param TargetMesh UDynamicMesh
---@param PrimitiveOptions FGeometryScriptPrimitiveOptions
---@param Transform FTransform
---@param DimensionX float
---@param DimensionY float
---@param DimensionZ float
---@param StepsX int32
---@param StepsY int32
---@param StepsZ int32
---@param Origin EGeometryScriptPrimitiveOriginMode
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshPrimitiveFunctions:AppendBox(TargetMesh, PrimitiveOptions, Transform, DimensionX, DimensionY, DimensionZ, StepsX, StepsY, StepsZ, Origin, Debug) end


---@class UGeometryScriptLibrary_MeshQueryFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshQueryFunctions = {}

---@param TargetMesh UDynamicMesh
---@param VertexID int32
---@return boolean
function UGeometryScriptLibrary_MeshQueryFunctions:IsValidVertexID(TargetMesh, VertexID) end
---@param TargetMesh UDynamicMesh
---@param TriangleID int32
---@return boolean
function UGeometryScriptLibrary_MeshQueryFunctions:IsValidTriangleID(TargetMesh, TriangleID) end
---@param TargetMesh UDynamicMesh
---@param VertexID int32
---@param bIsValidVertex boolean
---@return FVector
function UGeometryScriptLibrary_MeshQueryFunctions:GetVertexPosition(TargetMesh, VertexID, bIsValidVertex) end
---@param TargetMesh UDynamicMesh
---@return int32
function UGeometryScriptLibrary_MeshQueryFunctions:GetVertexCount(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param bIsValidUVSet boolean
---@param bUVSetIsEmpty boolean
---@return FBox2D
function UGeometryScriptLibrary_MeshQueryFunctions:GetUVSetBoundingBox(TargetMesh, UvSetIndex, bIsValidUVSet, bUVSetIsEmpty) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param TriangleID int32
---@param UV1 FVector2D
---@param UV2 FVector2D
---@param UV3 FVector2D
---@param bHaveValidUVs boolean
function UGeometryScriptLibrary_MeshQueryFunctions:GetTriangleUVs(TargetMesh, UvSetIndex, TriangleID, UV1, UV2, UV3, bHaveValidUVs) end
---@param TargetMesh UDynamicMesh
---@param TriangleID int32
---@param bIsValidTriangle boolean
---@param Vertex1 FVector
---@param Vertex2 FVector
---@param Vertex3 FVector
function UGeometryScriptLibrary_MeshQueryFunctions:GetTrianglePositions(TargetMesh, TriangleID, bIsValidTriangle, Vertex1, Vertex2, Vertex3) end
---@param TargetMesh UDynamicMesh
---@param TriangleID int32
---@param bIsValidTriangle boolean
---@return FIntVector
function UGeometryScriptLibrary_MeshQueryFunctions:GetTriangleIndices(TargetMesh, TriangleID, bIsValidTriangle) end
---@param TargetMesh UDynamicMesh
---@param TriangleID int32
---@param bIsValidTriangle boolean
---@return FVector
function UGeometryScriptLibrary_MeshQueryFunctions:GetTriangleFaceNormal(TargetMesh, TriangleID, bIsValidTriangle) end
---@param TargetMesh UDynamicMesh
---@return int32
function UGeometryScriptLibrary_MeshQueryFunctions:GetNumVertexIDs(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return int32
function UGeometryScriptLibrary_MeshQueryFunctions:GetNumUVSets(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return int32
function UGeometryScriptLibrary_MeshQueryFunctions:GetNumTriangleIDs(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@param bAmbiguousTopologyFound boolean
---@return int32
function UGeometryScriptLibrary_MeshQueryFunctions:GetNumOpenBorderLoops(TargetMesh, bAmbiguousTopologyFound) end
---@param TargetMesh UDynamicMesh
---@return int32
function UGeometryScriptLibrary_MeshQueryFunctions:GetNumOpenBorderEdges(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return int32
function UGeometryScriptLibrary_MeshQueryFunctions:GetNumExtendedPolygroupLayers(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return int32
function UGeometryScriptLibrary_MeshQueryFunctions:GetNumConnectedComponents(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@param SurfaceArea float
---@param Volume float
function UGeometryScriptLibrary_MeshQueryFunctions:GetMeshVolumeArea(TargetMesh, SurfaceArea, Volume) end
---@param TargetMesh UDynamicMesh
---@return boolean
function UGeometryScriptLibrary_MeshQueryFunctions:GetMeshHasAttributeSet(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return FBox
function UGeometryScriptLibrary_MeshQueryFunctions:GetMeshBoundingBox(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return boolean
function UGeometryScriptLibrary_MeshQueryFunctions:GetIsDenseMesh(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return boolean
function UGeometryScriptLibrary_MeshQueryFunctions:GetIsClosedMesh(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return boolean
function UGeometryScriptLibrary_MeshQueryFunctions:GetHasVertexIDGaps(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return boolean
function UGeometryScriptLibrary_MeshQueryFunctions:GetHasTriangleIDGaps(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return boolean
function UGeometryScriptLibrary_MeshQueryFunctions:GetHasPolygroups(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@return boolean
function UGeometryScriptLibrary_MeshQueryFunctions:GetHasMaterialIDs(TargetMesh) end
---@param TargetMesh UDynamicMesh
---@param PositionList FGeometryScriptVectorList
---@param bSkipGaps boolean
---@param bHasVertexIDGaps boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshQueryFunctions:GetAllVertexPositions(TargetMesh, PositionList, bSkipGaps, bHasVertexIDGaps) end
---@param TargetMesh UDynamicMesh
---@param VertexIDList FGeometryScriptIndexList
---@param bHasVertexIDGaps boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshQueryFunctions:GetAllVertexIDs(TargetMesh, VertexIDList, bHasVertexIDGaps) end
---@param TargetMesh UDynamicMesh
---@param TriangleList FGeometryScriptTriangleList
---@param bSkipGaps boolean
---@param bHasTriangleIDGaps boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshQueryFunctions:GetAllTriangleIndices(TargetMesh, TriangleList, bSkipGaps, bHasTriangleIDGaps) end
---@param TargetMesh UDynamicMesh
---@param TriangleIDList FGeometryScriptIndexList
---@param bHasTriangleIDGaps boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshQueryFunctions:GetAllTriangleIDs(TargetMesh, TriangleIDList, bHasTriangleIDGaps) end


---@class UGeometryScriptLibrary_MeshRepairFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshRepairFunctions = {}

---@param TargetMesh UDynamicMesh
---@param WeldOptions FGeometryScriptWeldEdgesOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshRepairFunctions:WeldMeshEdges(TargetMesh, WeldOptions, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptRemoveSmallComponentOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshRepairFunctions:RemoveSmallComponents(TargetMesh, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptRemoveHiddenTrianglesOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshRepairFunctions:RemoveHiddenTriangles(TargetMesh, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param FillOptions FGeometryScriptFillHolesOptions
---@param NumFilledHoles int32
---@param NumFailedHoleFills int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshRepairFunctions:FillAllMeshHoles(TargetMesh, FillOptions, NumFilledHoles, NumFailedHoleFills, Debug) end
---@param TargetMesh UDynamicMesh
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshRepairFunctions:CompactMesh(TargetMesh, Debug) end


---@class UGeometryScriptLibrary_MeshSimplifyFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshSimplifyFunctions = {}

---@param TargetMesh UDynamicMesh
---@param vertexcount int32
---@param Options FGeometryScriptSimplifyMeshOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSimplifyFunctions:ApplySimplifyToVertexCount(TargetMesh, vertexcount, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param TriangleCount int32
---@param Options FGeometryScriptSimplifyMeshOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSimplifyFunctions:ApplySimplifyToTriangleCount(TargetMesh, TriangleCount, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param Tolerance float
---@param Options FGeometryScriptSimplifyMeshOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSimplifyFunctions:ApplySimplifyToTolerance(TargetMesh, Tolerance, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptPolygroupSimplifyOptions
---@param GroupLayer FGeometryScriptGroupLayer
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSimplifyFunctions:ApplySimplifyToPolygroupTopology(TargetMesh, Options, GroupLayer, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptPlanarSimplifyOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSimplifyFunctions:ApplySimplifyToPlanar(TargetMesh, Options, Debug) end


---@class UGeometryScriptLibrary_MeshSpatial : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshSpatial = {}

---@param ResetBVH FGeometryScriptDynamicMeshBVH
function UGeometryScriptLibrary_MeshSpatial:ResetBVH(ResetBVH) end
---@param TargetMesh UDynamicMesh
---@param UpdateBVH FGeometryScriptDynamicMeshBVH
---@param bOnlyIfInvalid boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSpatial:RebuildBVHForMesh(TargetMesh, UpdateBVH, bOnlyIfInvalid, Debug) end
---@param TargetMesh UDynamicMesh
---@param QueryBVH FGeometryScriptDynamicMeshBVH
---@param QueryPoint FVector
---@param Options FGeometryScriptSpatialQueryOptions
---@param bIsInside boolean
---@param Outcome EGeometryScriptContainmentOutcomePins
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSpatial:IsPointInsideMesh(TargetMesh, QueryBVH, QueryPoint, Options, bIsInside, Outcome, Debug) end
---@param TargetMesh UDynamicMesh
---@param TestBVH FGeometryScriptDynamicMeshBVH
---@param bIsValid boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSpatial:IsBVHValidForMesh(TargetMesh, TestBVH, bIsValid, Debug) end
---@param TargetMesh UDynamicMesh
---@param QueryBVH FGeometryScriptDynamicMeshBVH
---@param RayOrigin FVector
---@param RayDirection FVector
---@param Options FGeometryScriptSpatialQueryOptions
---@param HitResult FGeometryScriptRayHitResult
---@param Outcome EGeometryScriptSearchOutcomePins
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSpatial:FindNearestRayIntersectionWithMesh(TargetMesh, QueryBVH, RayOrigin, RayDirection, Options, HitResult, Outcome, Debug) end
---@param TargetMesh UDynamicMesh
---@param QueryBVH FGeometryScriptDynamicMeshBVH
---@param QueryPoint FVector
---@param Options FGeometryScriptSpatialQueryOptions
---@param NearestResult FGeometryScriptTrianglePoint
---@param Outcome EGeometryScriptSearchOutcomePins
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSpatial:FindNearestPointOnMesh(TargetMesh, QueryBVH, QueryPoint, Options, NearestResult, Outcome, Debug) end
---@param TargetMesh UDynamicMesh
---@param OutputBVH FGeometryScriptDynamicMeshBVH
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSpatial:BuildBVHForMesh(TargetMesh, OutputBVH, Debug) end


---@class UGeometryScriptLibrary_MeshSubdivideFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshSubdivideFunctions = {}

---@param TargetMesh UDynamicMesh
---@param TessellationLevel int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSubdivideFunctions:ApplyUniformTessellation(TargetMesh, TessellationLevel, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptPNTessellateOptions
---@param NumIterations int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSubdivideFunctions:ApplyRecursivePNTessellation(TargetMesh, Options, NumIterations, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptPNTessellateOptions
---@param TessellationLevel int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshSubdivideFunctions:ApplyPNTessellation(TargetMesh, Options, TessellationLevel, Debug) end


---@class UGeometryScriptLibrary_MeshTransformFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshTransformFunctions = {}

---@param TargetMesh UDynamicMesh
---@param Translation FVector
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshTransformFunctions:TranslateMesh(TargetMesh, Translation, Debug) end
---@param TargetMesh UDynamicMesh
---@param Transform FTransform
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshTransformFunctions:TransformMesh(TargetMesh, Transform, Debug) end
---@param TargetMesh UDynamicMesh
---@param Scale FVector
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshTransformFunctions:ScaleMesh(TargetMesh, Scale, Debug) end


---@class UGeometryScriptLibrary_MeshUVFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshUVFunctions = {}

---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param Translation FVector2D
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:TranslateMeshUVs(TargetMesh, UvSetIndex, Translation, Debug) end
---@param TargetMesh UDynamicMesh
---@param NumUVSets int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:SetNumUVSets(TargetMesh, NumUVSets, Debug) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param PlaneTransform FTransform
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:SetMeshUVsFromPlanarProjection(TargetMesh, UvSetIndex, PlaneTransform, Debug) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param CylinderTransform FTransform
---@param SplitAngle float
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:SetMeshUVsFromCylinderProjection(TargetMesh, UvSetIndex, CylinderTransform, SplitAngle, Debug) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param BoxTransform FTransform
---@param MinIslandTriCount int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:SetMeshUVsFromBoxProjection(TargetMesh, UvSetIndex, BoxTransform, MinIslandTriCount, Debug) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param TriangleID int32
---@param UVs FGeometryScriptUVTriangle
---@param bIsValidTriangle boolean
---@param bDeferChangeNotifications boolean
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:SetMeshTriangleUVs(TargetMesh, UvSetIndex, TriangleID, UVs, bIsValidTriangle, bDeferChangeNotifications) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param Scale FVector2D
---@param ScaleOrigin FVector2D
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:ScaleMeshUVs(TargetMesh, UvSetIndex, Scale, ScaleOrigin, Debug) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param RotationAngle float
---@param RotationOrigin FVector2D
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:RotateMeshUVs(TargetMesh, UvSetIndex, RotationAngle, RotationOrigin, Debug) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param RepackOptions FGeometryScriptRepackUVsOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:RepackMeshUVs(TargetMesh, UvSetIndex, RepackOptions, Debug) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param Options FGeometryScriptRecomputeUVsOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:RecomputeMeshUVs(TargetMesh, UvSetIndex, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param FromUVSet int32
---@param ToUVSet int32
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:CopyUVSet(TargetMesh, FromUVSet, ToUVSet, Debug) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param Options FGeometryScriptXAtlasOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:AutoGenerateXAtlasMeshUVs(TargetMesh, UvSetIndex, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param UvSetIndex int32
---@param Options FGeometryScriptPatchBuilderOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshUVFunctions:AutoGeneratePatchBuilderMeshUVs(TargetMesh, UvSetIndex, Options, Debug) end


---@class UGeometryScriptLibrary_MeshVertexColorFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshVertexColorFunctions = {}

---@param TargetMesh UDynamicMesh
---@param VertexColorList FGeometryScriptColorList
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshVertexColorFunctions:SetMeshPerVertexColors(TargetMesh, VertexColorList, Debug) end
---@param TargetMesh UDynamicMesh
---@param Color FLinearColor
---@param Flags FGeometryScriptColorFlags
---@param bClearExisting boolean
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshVertexColorFunctions:SetMeshConstantVertexColor(TargetMesh, Color, Flags, bClearExisting, Debug) end


---@class UGeometryScriptLibrary_MeshVoxelFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_MeshVoxelFunctions = {}

---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptSolidifyOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshVoxelFunctions:ApplyMeshSolidify(TargetMesh, Options, Debug) end
---@param TargetMesh UDynamicMesh
---@param Options FGeometryScriptMorphologyOptions
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_MeshVoxelFunctions:ApplyMeshMorphology(TargetMesh, Options, Debug) end


---@class UGeometryScriptLibrary_SceneUtilityFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_SceneUtilityFunctions = {}

---@param Component UPrimitiveComponent
---@param MaterialList TArray<UMaterialInterface>
---@param Debug UGeometryScriptDebug
function UGeometryScriptLibrary_SceneUtilityFunctions:SetComponentMaterialList(Component, MaterialList, Debug) end
---@return UDynamicMeshPool
function UGeometryScriptLibrary_SceneUtilityFunctions:CreateDynamicMeshPool() end
---@param Component USceneComponent
---@param ToDynamicMesh UDynamicMesh
---@param Options FGeometryScriptCopyMeshFromComponentOptions
---@param bTransformToWorld boolean
---@param LocalToWorld FTransform
---@param Outcome EGeometryScriptOutcomePins
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_SceneUtilityFunctions:CopyMeshFromComponent(Component, ToDynamicMesh, Options, bTransformToWorld, LocalToWorld, Outcome, Debug) end


---@class UGeometryScriptLibrary_StaticMeshFunctions : UBlueprintFunctionLibrary
UGeometryScriptLibrary_StaticMeshFunctions = {}

---@param FromStaticMeshAsset UStaticMesh
---@param RequestedLOD FGeometryScriptMeshReadLOD
---@param MaterialList TArray<UMaterialInterface>
---@param MaterialIndex TArray<int32>
---@param Outcome EGeometryScriptOutcomePins
---@param Debug UGeometryScriptDebug
function UGeometryScriptLibrary_StaticMeshFunctions:GetSectionMaterialListFromStaticMesh(FromStaticMeshAsset, RequestedLOD, MaterialList, MaterialIndex, Outcome, Debug) end
---@param FromDynamicMesh UDynamicMesh
---@param ToStaticMeshAsset UStaticMesh
---@param Options FGeometryScriptCopyMeshToAssetOptions
---@param TargetLod FGeometryScriptMeshWriteLOD
---@param Outcome EGeometryScriptOutcomePins
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_StaticMeshFunctions:CopyMeshToStaticMesh(FromDynamicMesh, ToStaticMeshAsset, Options, TargetLod, Outcome, Debug) end
---@param FromStaticMeshAsset UStaticMesh
---@param ToDynamicMesh UDynamicMesh
---@param AssetOptions FGeometryScriptCopyMeshFromAssetOptions
---@param RequestedLOD FGeometryScriptMeshReadLOD
---@param Outcome EGeometryScriptOutcomePins
---@param Debug UGeometryScriptDebug
---@return UDynamicMesh
function UGeometryScriptLibrary_StaticMeshFunctions:CopyMeshFromStaticMesh(FromStaticMeshAsset, ToDynamicMesh, AssetOptions, RequestedLOD, Outcome, Debug) end


