---@meta

---@class UGSReplayCSharpFuncLib : UObject
UGSReplayCSharpFuncLib = {}

---@param GameSpecificData TArray<FString>
function UGSReplayCSharpFuncLib:WriteGameSpecificDemoHeaderCS(GameSpecificData) end
---@param PlayerId int32
---@return boolean
function UGSReplayCSharpFuncLib:SetViewTargetPlayer(PlayerId) end
---@param InTimeToSet float
function UGSReplayCSharpFuncLib:SetDemoCurrentTime(InTimeToSet) end
---@param GameSpecificData FString
---@param Error FString
function UGSReplayCSharpFuncLib:ProcessGameSpecificDemoHeaderCS(GameSpecificData, Error) end
function UGSReplayCSharpFuncLib:PreProcessGameSpecificDemoHeaderCS() end
function UGSReplayCSharpFuncLib:PostProcessGameSpecificDemoHeaderCS() end
---@param GameSpecificData TArray<FString>
function UGSReplayCSharpFuncLib:OnWriteGameSpecificDemoHeader(GameSpecificData) end
---@param World UWorld
function UGSReplayCSharpFuncLib:OnReplayStarted(World) end
---@param World UWorld
---@param SeverConnection UNetConnection
function UGSReplayCSharpFuncLib:OnReplaySeverConnectionInit(World, SeverConnection) end
---@param World UWorld
function UGSReplayCSharpFuncLib:OnReplayScrubComplete(World) end
---@param GameSpecificData TArray<FString>
---@param Error FString
function UGSReplayCSharpFuncLib:OnProcessGameSpecificDemoHeader(GameSpecificData, Error) end
---@param World UWorld
function UGSReplayCSharpFuncLib:OnPreScrub(World) end
function UGSReplayCSharpFuncLib:OnPostDemoPlay() end
---@param Outer UObject
---@param OriginName FString
---@param Name FString
function UGSReplayCSharpFuncLib:GSNetworkRemapPathCS(Outer, OriginName, Name) end
---@param Outer UObject
---@param Name FString
function UGSReplayCSharpFuncLib:GSNetworkRemapPath(Outer, Name) end


---@class UGSReplayFuncLib : UObject
UGSReplayFuncLib = {}

---@param WorldContext UObject
function UGSReplayFuncLib:UnRegisterNetworkRemapPath(WorldContext) end
---@param WorldContext UObject
function UGSReplayFuncLib:UnregisterCSharpFuncLibObj(WorldContext) end
---@param WorldContext UObject
function UGSReplayFuncLib:StopReplay(WorldContext) end
---@param WorldContext UObject
---@param InTimeToSkip float
function UGSReplayFuncLib:SkipTime(WorldContext, InTimeToSkip) end
---@param WorldContext UObject
---@param InDemoPlayTimeDilation float
function UGSReplayFuncLib:SetDemoPlayTimeDilation(WorldContext, InDemoPlayTimeDilation) end
---@param WorldContext UObject
---@param CurrentTime float
function UGSReplayFuncLib:SetDemoCurrentTime(WorldContext, CurrentTime) end
---@param WorldContext UObject
---@param bInPrioritizeActors boolean
function UGSReplayFuncLib:SetActorPrioritizationEnabled(WorldContext, bInPrioritizeActors) end
---@param WorldContext UObject
function UGSReplayFuncLib:RequestCheckpoint(WorldContext) end
---@param WorldContext UObject
---@return boolean
function UGSReplayFuncLib:RegisterNetworkRemapPath(WorldContext) end
---@param WorldContext UObject
---@param CSharpFuncLibObj UGSReplayCSharpFuncLib
function UGSReplayFuncLib:RegisterCSharpFuncLibObj(WorldContext, CSharpFuncLibObj) end
---@param WorldContext UObject
---@param Name FString
---@param FriendlyName FString
---@param InOptions TArray<FString>
function UGSReplayFuncLib:RecordReplayToLocalFile(WorldContext, Name, FriendlyName, InOptions) end
---@param WorldContext UObject
---@param Name FString
---@param InOptions TArray<FString>
function UGSReplayFuncLib:PlayReplayFromLocalFile(WorldContext, Name, InOptions) end
---@param WorldContext UObject
---@param bPause boolean
function UGSReplayFuncLib:PauseReplay(WorldContext, bPause) end
---@param WorldContext UObject
---@return boolean
function UGSReplayFuncLib:IsReplayPause(WorldContext) end
---@param WorldContext UObject
---@return boolean
function UGSReplayFuncLib:IsRecordingReplay(WorldContext) end
---@param WorldContext UObject
---@return boolean
function UGSReplayFuncLib:IsPlayingReplay(WorldContext) end
---@param WorldContext UObject
---@return boolean
function UGSReplayFuncLib:IsLoadingCheckpoint(WorldContext) end
---@param WorldContext UObject
---@return double
function UGSReplayFuncLib:GetLastCheckpointTime(WorldContext) end
---@param WorldContext UObject
---@return float
function UGSReplayFuncLib:GetDemoTotalTime(WorldContext) end
---@param WorldContext UObject
---@return float
function UGSReplayFuncLib:GetDemoPlayTimeDilation(WorldContext) end
---@param WorldContext UObject
---@return float
function UGSReplayFuncLib:GetDemoCurrentTime(WorldContext) end


