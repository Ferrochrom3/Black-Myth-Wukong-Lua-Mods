---@meta

---@class FCinePrestreamingNaniteData
---@field RequestData TArray<uint32>
FCinePrestreamingNaniteData = {}



---@class FCinePrestreamingVTData
---@field PageIds TArray<uint64>
FCinePrestreamingVTData = {}



---@class FMovieSceneCinePrestreamingComponentData
---@field Section UMovieSceneCinePrestreamingSection
FMovieSceneCinePrestreamingComponentData = {}



---@class UCinePrestreamingData : UObject
---@field Times TArray<FFrameNumber>
---@field VirtualTextureDatas TArray<FCinePrestreamingVTData>
---@field NaniteDatas TArray<FCinePrestreamingNaniteData>
---@field RecordedTime FDateTime
---@field RecordedResolution FIntPoint
UCinePrestreamingData = {}



---@class UMovieSceneCinePrestreamingSection : UMovieSceneSection
---@field PrestreamingAsset TSoftObjectPtr<UCinePrestreamingData>
---@field StartFrameOffset int32
---@field QualityLevel int32
UMovieSceneCinePrestreamingSection = {}

---@param InOffset int32
function UMovieSceneCinePrestreamingSection:SetStartFrameOffset(InOffset) end
---@param InLevel int32
function UMovieSceneCinePrestreamingSection:SetQualityLevel(InLevel) end
---@param InData UCinePrestreamingData
function UMovieSceneCinePrestreamingSection:SetPrestreamingAsset(InData) end
---@return int32
function UMovieSceneCinePrestreamingSection:GetQualityLevel() end
---@return TSoftObjectPtr<UCinePrestreamingData>
function UMovieSceneCinePrestreamingSection:GetPrestreamingAsset() end


---@class UMovieSceneCinePrestreamingTrack : UMovieSceneNameableTrack
---@field Sections TArray<UMovieSceneSection>
UMovieSceneCinePrestreamingTrack = {}



---@class UMovieSceneCinePrestreamingTrackInstance : UMovieSceneTrackInstance
---@field PrestreamingAssetMap TMap<FMovieSceneTrackInstanceInput, UCinePrestreamingData>
UMovieSceneCinePrestreamingTrackInstance = {}



