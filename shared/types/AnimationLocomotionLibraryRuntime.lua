---@meta

---@class UAnimCharacterMovementLibrary : UBlueprintFunctionLibrary
UAnimCharacterMovementLibrary = {}

---@param Velocity FVector
---@param bUseSeparateBrakingFriction boolean
---@param BrakingFriction float
---@param GroundFriction float
---@param BrakingFrictionFactor float
---@param BrakingDecelerationWalking float
---@return FVector
function UAnimCharacterMovementLibrary:PredictGroundMovementStopLocation(Velocity, bUseSeparateBrakingFriction, BrakingFriction, GroundFriction, BrakingFrictionFactor, BrakingDecelerationWalking) end
---@param Acceleration FVector
---@param Velocity FVector
---@param GroundFriction float
---@return FVector
function UAnimCharacterMovementLibrary:PredictGroundMovementPivotLocation(Acceleration, Velocity, GroundFriction) end


---@class UAnimDistanceMatchingLibrary : UBlueprintFunctionLibrary
UAnimDistanceMatchingLibrary = {}

---@param SequencePlayer FSequencePlayerReference
---@param SpeedToMatch float
---@param PlayRateClamp FVector2D
---@return FSequencePlayerReference
function UAnimDistanceMatchingLibrary:SetPlayrateToMatchSpeed(SequencePlayer, SpeedToMatch, PlayRateClamp) end
---@param SequenceEvaluator FSequenceEvaluatorReference
---@param DistanceToTarget float
---@param DistanceCurveName FName
---@return FSequenceEvaluatorReference
function UAnimDistanceMatchingLibrary:DistanceMatchToTarget(SequenceEvaluator, DistanceToTarget, DistanceCurveName) end
---@param UpdateContext FAnimUpdateContext
---@param SequenceEvaluator FSequenceEvaluatorReference
---@param DistanceTraveled float
---@param DistanceCurveName FName
---@param PlayRateClamp FVector2D
---@return FSequenceEvaluatorReference
function UAnimDistanceMatchingLibrary:AdvanceTimeByDistanceMatching(UpdateContext, SequenceEvaluator, DistanceTraveled, DistanceCurveName, PlayRateClamp) end


