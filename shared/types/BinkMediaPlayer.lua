---@meta

---@class UBinkFunctionLibrary : UBlueprintFunctionLibrary
UBinkFunctionLibrary = {}

---@return FTimespan
function UBinkFunctionLibrary:BinkLoadingMovie_GetTime() end
---@return FTimespan
function UBinkFunctionLibrary:BinkLoadingMovie_GetDuration() end
function UBinkFunctionLibrary:Bink_DrawOverlays() end


---@class UBinkMediaPlayer : UObject
---@field OnMediaClosed FBinkMediaPlayerOnMediaClosed
---@field OnMediaOpened FBinkMediaPlayerOnMediaOpened
---@field OnMediaReachedEnd FBinkMediaPlayerOnMediaReachedEnd
---@field OnPlaybackSuspended FBinkMediaPlayerOnPlaybackSuspended
---@field Looping boolean
---@field StartImmediately boolean
---@field DelayedOpen boolean
---@field BinkDestinationUpperLeft FVector2D
---@field BinkDestinationLowerRight FVector2D
---@field URL FString
---@field BinkBufferMode EBinkMediaPlayerBinkBufferModes
---@field BinkSoundTrack EBinkMediaPlayerBinkSoundTrack
---@field BinkSoundTrackStart int32
---@field BinkDrawStyle EBinkMediaPlayerBinkDrawStyle
---@field BinkLayerDepth int32
UBinkMediaPlayer = {}

---@return boolean
function UBinkMediaPlayer:SupportsSeeking() end
---@return boolean
function UBinkMediaPlayer:SupportsScrubbing() end
---@param Rate float
---@param Unthinned boolean
---@return boolean
function UBinkMediaPlayer:SupportsRate(Rate, Unthinned) end
function UBinkMediaPlayer:Stop() end
---@param Rate float
function UBinkMediaPlayer:SetVolume(Rate) end
---@param Rate float
---@return boolean
function UBinkMediaPlayer:SetRate(Rate) end
---@param InLooping boolean
---@return boolean
function UBinkMediaPlayer:SetLooping(InLooping) end
---@param InTime FTimespan
---@return boolean
function UBinkMediaPlayer:Seek(InTime) end
---@return boolean
function UBinkMediaPlayer:Rewind() end
---@return boolean
function UBinkMediaPlayer:Play() end
---@return boolean
function UBinkMediaPlayer:Pause() end
---@param NewURL FString
---@return boolean
function UBinkMediaPlayer:OpenUrl(NewURL) end
---@return boolean
function UBinkMediaPlayer:IsStopped() end
---@return boolean
function UBinkMediaPlayer:IsPlaying() end
---@return boolean
function UBinkMediaPlayer:IsPaused() end
---@return boolean
function UBinkMediaPlayer:IsLooping() end
---@return boolean
function UBinkMediaPlayer:IsInitialized() end
---@param TargetFrameIndex int32
---@param MsProcess int32
---@return boolean
function UBinkMediaPlayer:GSGoToTargetFrameNative(TargetFrameIndex, MsProcess) end
---@return int32
function UBinkMediaPlayer:GSGetTotalFrames() end
---@return int32
function UBinkMediaPlayer:GSGetCurFrame() end
---@return FString
function UBinkMediaPlayer:GetUrl() end
---@return FTimespan
function UBinkMediaPlayer:GetTime() end
---@return float
function UBinkMediaPlayer:GetRate() end
---@return FTimespan
function UBinkMediaPlayer:GetDuration() end
---@param Texture UTexture
---@param tonemap boolean
---@param out_nits int32
---@param alpha float
---@param srgb_decode boolean
---@param hdr boolean
function UBinkMediaPlayer:Draw(Texture, tonemap, out_nits, alpha, srgb_decode, hdr) end
function UBinkMediaPlayer:CloseUrl() end
---@return boolean
function UBinkMediaPlayer:CanPlay() end
---@return boolean
function UBinkMediaPlayer:CanPause() end


---@class UBinkMediaTexture : UTexture
---@field AddressX TextureAddress
---@field AddressY TextureAddress
---@field MediaPlayer UBinkMediaPlayer
---@field PixelFormat EPixelFormat
---@field tonemap boolean
---@field OutputNits float
---@field alpha float
---@field DecodeSRGB boolean
UBinkMediaTexture = {}

---@param InMediaPlayer UBinkMediaPlayer
function UBinkMediaTexture:SetMediaPlayer(InMediaPlayer) end
function UBinkMediaTexture:Clear() end


---@class UBinkMoviePlayerSettings : UObject
---@field BinkBufferMode EBinkMoviePlayerBinkBufferModes
---@field BinkSoundTrack EBinkMoviePlayerBinkSoundTrack
---@field BinkSoundTrackStart int32
---@field BinkDestinationUpperLeft FVector2D
---@field BinkDestinationLowerRight FVector2D
---@field BinkPixelFormat EPixelFormat
UBinkMoviePlayerSettings = {}



