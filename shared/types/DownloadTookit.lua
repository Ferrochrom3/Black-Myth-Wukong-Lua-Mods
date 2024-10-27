---@meta

---@class FDownloadFile
---@field Name FString
---@field URL FString
---@field Size int32
---@field Hash FString
---@field SavePath FString
FDownloadFile = {}



---@class UDownloadProxy : UObject
---@field OnDownloadCompleteDyMultiDlg FDownloadProxyOnDownloadCompleteDyMultiDlg
---@field OnDownloadPausedDyMultiDlg FDownloadProxyOnDownloadPausedDyMultiDlg
---@field OnDownloadCanceledDyMultiDlg FDownloadProxyOnDownloadCanceledDyMultiDlg
---@field OnDownloadResumedDyMultiDlg FDownloadProxyOnDownloadResumedDyMultiDlg
UDownloadProxy = {}

---@param Delta float
---@return boolean
function UDownloadProxy:Tick(Delta) end
---@return boolean
function UDownloadProxy:Resume() end
function UDownloadProxy:Reset() end
---@param InURL FString
---@param InSavePathOpt FString
---@param bInSliceOpt boolean
---@param InSliceByteSizeOpt int32
---@param bInForceOpt boolean
function UDownloadProxy:RequestDownload(InURL, InSavePathOpt, bInSliceOpt, InSliceByteSizeOpt, bInForceOpt) end
---@return boolean
function UDownloadProxy:ReDownload() end
function UDownloadProxy:Pause() end
---@param InMD5Hash FString
---@return boolean
function UDownloadProxy:HashCheck(InMD5Hash) end
---@return int32
function UDownloadProxy:GetTotalSize() end
---@return EDownloadStatus
function UDownloadProxy:GetDownloadStatus() end
---@return float
function UDownloadProxy:GetDownloadSpeedKbs() end
---@return int32
function UDownloadProxy:GetDownloadSpeed() end
---@return float
function UDownloadProxy:GetDownloadProgress() end
---@return int32
function UDownloadProxy:GetDownloadedSize() end
---@return FDownloadFile
function UDownloadProxy:GetDownloadedFileInfo() end
function UDownloadProxy:Cancel() end


