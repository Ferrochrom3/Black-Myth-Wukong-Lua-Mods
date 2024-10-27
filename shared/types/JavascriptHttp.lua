---@meta

---@class UJavascriptHttpRequest : UObject
---@field OnComplete FJavascriptHttpRequestOnComplete
---@field OnProgress FJavascriptHttpRequestOnProgress
UJavascriptHttpRequest = {}

---@param Verb FString
function UJavascriptHttpRequest:SetVerb(Verb) end
---@param URL FString
function UJavascriptHttpRequest:SetURL(URL) end
---@param HeaderName FString
---@param HeaderValue FString
function UJavascriptHttpRequest:SetHeader(HeaderName, HeaderValue) end
---@param FilePaths TArray<FString>
---@param Boundary FString
---@param Content FString
function UJavascriptHttpRequest:SetContentWithFiles(FilePaths, Boundary, Content) end
function UJavascriptHttpRequest:SetContentFromMemory() end
---@param ContentString FString
function UJavascriptHttpRequest:SetContentAsString(ContentString) end
---@return boolean
function UJavascriptHttpRequest:ProcessRequest() end
---@param sent int32
---@param recv int32
function UJavascriptHttpRequest:JavascriptHttpRequestProgressDelegate__DelegateSignature(sent, recv) end
---@param successful boolean
function UJavascriptHttpRequest:JavascriptHttpRequestCompleteDelegate__DelegateSignature(successful) end
---@return FString
function UJavascriptHttpRequest:GetVerb() end
---@return EJavascriptHttpRequestStatus::Type
function UJavascriptHttpRequest:GetStatus() end
---@return int32
function UJavascriptHttpRequest:GetResponseCode() end
---@return float
function UJavascriptHttpRequest:GetElapsedTime() end
function UJavascriptHttpRequest:GetContentToMemory() end
---@return int32
function UJavascriptHttpRequest:GetContentLength() end
---@return FString
function UJavascriptHttpRequest:GetContentAsString() end
function UJavascriptHttpRequest:CancelRequest() end


