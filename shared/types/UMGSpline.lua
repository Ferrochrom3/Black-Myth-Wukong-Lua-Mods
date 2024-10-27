---@meta

---@class FUMGSplineCurves
---@field position FInterpCurveVector2D
---@field ReparamTable FInterpCurveFloat
---@field Version uint32
---@field ReparamStepsPerSegment int32
FUMGSplineCurves = {}



---@class FUMGSplineDebugInfo
---@field bDrawWidgetBoarder boolean
---@field BoarderColor FLinearColor
FUMGSplineDebugInfo = {}



---@class FUMGSplineInfo
---@field SplineType EUMGSplineType
---@field Thickness float
---@field Points TArray<FUMGSplinePoint>
---@field bClosedLoop boolean
---@field TintColor FLinearColor
---@field BuildCustomVerts boolean
---@field CustomVertsBrush FSlateBrush
---@field CustomVertsVCoordScale float
FUMGSplineInfo = {}



---@class FUMGSplinePoint
---@field Location FVector2D
---@field Direction FVector2D
FUMGSplinePoint = {}



---@class USplineWidget : UWidget
---@field SplineInfo FUMGSplineInfo
---@field SplineDebugInfo FUMGSplineDebugInfo
---@field SplineCurves FUMGSplineCurves
USplineWidget = {}

function USplineWidget:UpdateSpline() end
---@param Type EUMGSplineType
function USplineWidget:SetSplineType(Type) end
---@param Thickness float
function USplineWidget:SetSplineThickness(Thickness) end
---@param Material UMaterialInterface
function USplineWidget:SetSplineMaterial(Material) end
---@param Index int32
---@param bUpdateSpline boolean
function USplineWidget:RemoveSplinePoint(Index, bUpdateSpline) end
---@param bUpdateSpline boolean
function USplineWidget:RemoveAllSplinePoint(bUpdateSpline) end
---@param PointIndex int32
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return FVector2D
function USplineWidget:GetTangentAtSplinePoint(PointIndex, CoordinateSpace) end
---@param InKey float
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return FVector2D
function USplineWidget:GetTangentAtSplineInputKey(InKey, CoordinateSpace) end
---@param Distance float
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return FVector2D
function USplineWidget:GetTangentAtDistanceAlongSpline(Distance, CoordinateSpace) end
---@return EUMGSplineType
function USplineWidget:GetSplineType() end
---@return float
function USplineWidget:GetSplineThickness() end
---@return UMaterialInterface
function USplineWidget:GetSplineMaterial() end
---@return float
function USplineWidget:GetSplineLength() end
---@return UMaterialInstanceDynamic
function USplineWidget:GetSplineDynamicMaterial() end
---@param InKey float
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return float
function USplineWidget:GetRotationAngleAtSplineInputKey(InKey, CoordinateSpace) end
---@param Distance float
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return float
function USplineWidget:GetRotationAngleAtDistanceAlongSpline(Distance, CoordinateSpace) end
---@return int32
function USplineWidget:GetNumberOfSplinePoints() end
---@param PointIndex int32
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return FVector2D
function USplineWidget:GetLocationAtSplinePoint(PointIndex, CoordinateSpace) end
---@param InKey float
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return FVector2D
function USplineWidget:GetLocationAtSplineInputKey(InKey, CoordinateSpace) end
---@param Distance float
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return FVector2D
function USplineWidget:GetLocationAtDistanceAlongSpline(Distance, CoordinateSpace) end
---@param Distance float
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return float
function USplineWidget:GetInputKeyAtDistanceAlongSpline(Distance, CoordinateSpace) end
---@param InKey float
---@return float
function USplineWidget:GetDistanceAlongSplineAtSplineInputKey(InKey) end
---@param PointIndex int32
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return FVector2D
function USplineWidget:GetDirectionAtSplinePoint(PointIndex, CoordinateSpace) end
---@param InKey float
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return FVector2D
function USplineWidget:GetDirectionAtSplineInputKey(InKey, CoordinateSpace) end
---@param Distance float
---@param CoordinateSpace EUMGSplineCoordinateSpace::Type
---@return FVector2D
function USplineWidget:GetDirectionAtDistanceAlongSpline(Distance, CoordinateSpace) end
---@param SplinePoint FUMGSplinePoint
---@param Index int32
---@param bUpdateSpline boolean
function USplineWidget:ChangeSplinePointAtIndex(SplinePoint, Index, bUpdateSpline) end
---@param SplinePoint FUMGSplinePoint
---@param Index int32
---@param bUpdateSpline boolean
function USplineWidget:AddSplinePointAtIndex(SplinePoint, Index, bUpdateSpline) end
---@param SplinePoint FUMGSplinePoint
---@param bUpdateSpline boolean
function USplineWidget:AddSplinePoint(SplinePoint, bUpdateSpline) end


