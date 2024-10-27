---@meta

---@class ASpiderNavGridBuilder : AActor
---@field VolumeBox UBoxComponent
---@field TracerActorBP TSubclassOf<ASpiderNavGridTracer>
---@field NavPointActorBP TSubclassOf<ASpiderNavPoint>
---@field NavPointEdgeActorBP TSubclassOf<ASpiderNavPointEdge>
---@field GridStepSize float
---@field ActorsWhiteList TArray<AActor>
---@field bUseActorWhiteList boolean
---@field ActorsBlackList TArray<AActor>
---@field bUseActorBlackList boolean
---@field bAutoRemoveTracers boolean
---@field bAutoSaveGrid boolean
---@field BounceNavDistance float
---@field TraceDistanceModificator float
---@field ClosePointsFilterModificator float
---@field ConnectionSphereRadiusModificator float
---@field TraceDistanceForEdgesModificator float
---@field EgdeDeviationModificator float
---@field bSingleDirectionTrace boolean
ASpiderNavGridBuilder = {}

function ASpiderNavGridBuilder:SaveGrid() end
function ASpiderNavGridBuilder:DrawDebugRelations() end
---@return int32
function ASpiderNavGridBuilder:BuildGrid() end


---@class ASpiderNavGridTracer : AActor
---@field CollisionComp USphereComponent
ASpiderNavGridTracer = {}



---@class ASpiderNavPoint : AActor
---@field CollisionComp USphereComponent
ASpiderNavPoint = {}



---@class ASpiderNavPointEdge : ASpiderNavPoint
ASpiderNavPointEdge = {}


---@class ASpiderNavigation : AActor
---@field bAutoLoadGrid boolean
---@field DebugLinesThickness float
ASpiderNavigation = {}

---@return boolean
function ASpiderNavigation:LoadGrid() end
---@return int32
function ASpiderNavigation:GetNavNodesCount() end
---@param Start FVector
---@param End FVector
---@param bFoundCompletePath boolean
---@return TArray<FVector>
function ASpiderNavigation:FindPath(Start, End, bFoundCompletePath) end
---@param CurrentLocation FVector
---@param TargetLocation FVector
---@param NextLocation FVector
---@param Normal FVector
---@return boolean
function ASpiderNavigation:FindNextLocationAndNormal(CurrentLocation, TargetLocation, NextLocation, Normal) end
---@param Location FVector
---@return FVector
function ASpiderNavigation:FindClosestNodeNormal(Location) end
---@param Location FVector
---@return FVector
function ASpiderNavigation:FindClosestNodeLocation(Location) end
function ASpiderNavigation:DrawDebugRelations() end


---@class FSpiderNavNode
---@field Location FVector
---@field Normal FVector
---@field Index int32
FSpiderNavNode = {}



---@class FSpiderNavRelations
---@field Neighbors TArray<int32>
FSpiderNavRelations = {}



---@class USpiderNavGridSaveGame : USaveGame
---@field NavLocations TMap<int32, FVector>
---@field NavNormals TMap<int32, FVector>
---@field NavRelations TMap<int32, FSpiderNavRelations>
---@field SaveSlotName FString
---@field UserIndex uint32
USpiderNavGridSaveGame = {}



