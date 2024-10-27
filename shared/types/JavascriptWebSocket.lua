---@meta

---@class UJavascriptWebSocket : UObject
---@field OnReceived FJavascriptWebSocketOnReceived
---@field OnConnected FJavascriptWebSocketOnConnected
---@field OnError FJavascriptWebSocketOnError
UJavascriptWebSocket = {}

function UJavascriptWebSocket:Tick() end
---@param NumBytes int32
function UJavascriptWebSocket:SendMemory(NumBytes) end
---@param bAppendPort boolean
---@return FString
function UJavascriptWebSocket:RemoteEndPoint(bAppendPort) end
function UJavascriptWebSocket:OnWebSocketDelegate__DelegateSignature() end
---@param bAppendPort boolean
---@return FString
function UJavascriptWebSocket:LocalEndPoint(bAppendPort) end
---@return int32
function UJavascriptWebSocket:GetReceivedBytes() end
function UJavascriptWebSocket:Flush() end
function UJavascriptWebSocket:Dispose() end
function UJavascriptWebSocket:CopyBuffer() end
---@param Endpoint FString
---@return UJavascriptWebSocket
function UJavascriptWebSocket:Connect(Endpoint) end


---@class UJavascriptWebSocketServer : UObject
---@field OnConnected FJavascriptWebSocketServerOnConnected
---@field Connections TArray<UJavascriptWebSocket>
UJavascriptWebSocketServer = {}

function UJavascriptWebSocketServer:Tick() end
---@param WebSocket UJavascriptWebSocket
function UJavascriptWebSocketServer:OnWebSocketServerDelegate__DelegateSignature(WebSocket) end
---@return FString
function UJavascriptWebSocketServer:Info() end
function UJavascriptWebSocketServer:Dispose() end
---@param Port int32
---@return UJavascriptWebSocketServer
function UJavascriptWebSocketServer:Create(Port) end


