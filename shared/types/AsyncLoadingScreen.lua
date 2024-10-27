---@meta

---@class FChapterInfo
---@field IsNeedShow boolean
---@field ChapterPreName FText
---@field ChapterName FText
---@field ImageObj UTexture2D
FChapterInfo = {}



---@class FLoadingProgressInfo
---@field Duration float
---@field ProgressSprite FSoftObjectPath
---@field DetailSprites TArray<FSoftObjectPath>
FLoadingProgressInfo = {}



---@class FLoadingTipsInfo
---@field TipsId int32
---@field DurTime float
---@field Title FText
---@field Tips FText
---@field ImageObj UTexture2D
FLoadingTipsInfo = {}



---@class ULoadingScreenSettings : UDataAsset
---@field LoadingScreenWidget UUserWidget
---@field PlaybackType EMoviePlaybackType
---@field MoviePaths TArray<FString>
---@field ChildWidgetFadeAwayTime float
---@field BackgroundFadeAwayTime float
---@field ToggleIconFadeInTime float
---@field SlideFadeInTime float
---@field ProtectSwitchSlideTime float
---@field PreviewAction UInputAction
---@field NextAction UInputAction
---@field ContinuePlayAction UInputAction
---@field ProgressInfos TArray<FLoadingProgressInfo>
---@field ProgressInfosWhite TArray<FLoadingProgressInfo>
ULoadingScreenSettings = {}



---@class UToggleWidgetActionListener : UObject
UToggleWidgetActionListener = {}

function UToggleWidgetActionListener:DoPreview() end
function UToggleWidgetActionListener:DoNext() end
function UToggleWidgetActionListener:DoContinuePlay() end


