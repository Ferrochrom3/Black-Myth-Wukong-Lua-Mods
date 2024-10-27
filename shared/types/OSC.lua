---@meta

---@class FOSCAddress
---@field Containers TArray<FString>
---@field Method FString
FOSCAddress = {}



---@class FOSCBundle
FOSCBundle = {}


---@class FOSCMessage
FOSCMessage = {}


---@class UOSCClient : UObject
UOSCClient = {}

---@param IPAddress FString
---@param Port int32
---@return boolean
function UOSCClient:SetSendIPAddress(IPAddress, Port) end
---@param Message FOSCMessage
function UOSCClient:SendOSCMessage(Message) end
---@param Bundle FOSCBundle
function UOSCClient:SendOSCBundle(Bundle) end
---@param IPAddress FString
---@param Port int32
function UOSCClient:GetSendIPAddress(IPAddress, Port) end


---@class UOSCManager : UBlueprintFunctionLibrary
UOSCManager = {}

---@param Message FOSCMessage
---@param Address FOSCAddress
---@return FOSCMessage
function UOSCManager:SetOSCMessageAddress(Message, Address) end
---@param Address FOSCAddress
---@param Method FString
---@return FOSCAddress
function UOSCManager:SetOSCAddressMethod(Address, Method) end
---@param Address FOSCAddress
---@param Index int32
---@param Count int32
---@return FOSCAddress
function UOSCManager:OSCAddressRemoveContainers(Address, Index, Count) end
---@param Address FOSCAddress
---@param Containers TArray<FString>
---@return FOSCAddress
function UOSCManager:OSCAddressPushContainers(Address, Containers) end
---@param Address FOSCAddress
---@param Container FString
---@return FOSCAddress
function UOSCManager:OSCAddressPushContainer(Address, Container) end
---@param Address FOSCAddress
---@param NumContainers int32
---@return TArray<FString>
function UOSCManager:OSCAddressPopContainers(Address, NumContainers) end
---@param Address FOSCAddress
---@return FString
function UOSCManager:OSCAddressPopContainer(Address) end
---@param Pattern FOSCAddress
---@param Path FOSCAddress
---@return boolean
function UOSCManager:OSCAddressPathMatchesPattern(Pattern, Path) end
---@param Address FOSCAddress
---@return boolean
function UOSCManager:OSCAddressIsValidPattern(Address) end
---@param Address FOSCAddress
---@return boolean
function UOSCManager:OSCAddressIsValidPath(Address) end
---@param PathName FString
---@return FOSCAddress
function UOSCManager:OSCAddressFromObjectPathString(PathName) end
---@param Object UObject
---@return FOSCAddress
function UOSCManager:OSCAddressFromObjectPath(Object) end
---@param Address FOSCAddress
---@return FString
function UOSCManager:ObjectPathFromOSCAddress(Address) end
---@param Message FOSCMessage
---@param Index int32
---@param Value FString
---@return boolean
function UOSCManager:GetString(Message, Index, Value) end
---@param Message FOSCMessage
---@return FOSCAddress
function UOSCManager:GetOSCMessageAddress(Message) end
---@param Address FOSCAddress
---@return FString
function UOSCManager:GetOSCAddressMethod(Address) end
---@param Address FOSCAddress
---@return FString
function UOSCManager:GetOSCAddressFullPath(Address) end
---@param Address FOSCAddress
---@return TArray<FString>
function UOSCManager:GetOSCAddressContainers(Address) end
---@param Address FOSCAddress
---@return FString
function UOSCManager:GetOSCAddressContainerPath(Address) end
---@param Address FOSCAddress
---@param Index int32
---@return FString
function UOSCManager:GetOSCAddressContainer(Address, Index) end
---@param Bundle FOSCBundle
---@return TArray<FOSCMessage>
function UOSCManager:GetMessagesFromBundle(Bundle) end
---@param Bundle FOSCBundle
---@param Index int32
---@param bSucceeded boolean
---@return FOSCMessage
function UOSCManager:GetMessageFromBundle(Bundle, Index, bSucceeded) end
---@param Message FOSCMessage
---@param Index int32
---@param Value int64
---@return boolean
function UOSCManager:GetInt64(Message, Index, Value) end
---@param Message FOSCMessage
---@param Index int32
---@param Value int32
---@return boolean
function UOSCManager:GetInt32(Message, Index, Value) end
---@param Message FOSCMessage
---@param Index int32
---@param Value float
---@return boolean
function UOSCManager:GetFloat(Message, Index, Value) end
---@param Bundle FOSCBundle
---@return TArray<FOSCBundle>
function UOSCManager:GetBundlesFromBundle(Bundle) end
---@param Message FOSCMessage
---@param Index int32
---@param Value boolean
---@return boolean
function UOSCManager:GetBool(Message, Index, Value) end
---@param Message FOSCMessage
---@param Index int32
---@param Value TArray<uint8>
---@return boolean
function UOSCManager:GetBlob(Message, Index, Value) end
---@param Message FOSCMessage
---@param Values TArray<FString>
function UOSCManager:GetAllStrings(Message, Values) end
---@param Message FOSCMessage
---@param Values TArray<int64>
function UOSCManager:GetAllInt64s(Message, Values) end
---@param Message FOSCMessage
---@param Values TArray<int32>
function UOSCManager:GetAllInt32s(Message, Values) end
---@param Message FOSCMessage
---@param Values TArray<float>
function UOSCManager:GetAllFloats(Message, Values) end
---@param Message FOSCMessage
---@param Values TArray<boolean>
function UOSCManager:GetAllBools(Message, Values) end
---@param Message FOSCMessage
---@param Values TArray<FOSCAddress>
function UOSCManager:GetAllAddresses(Message, Values) end
---@param Message FOSCMessage
---@param Index int32
---@param Value FOSCAddress
---@return boolean
function UOSCManager:GetAddress(Message, Index, Value) end
---@param Address FOSCAddress
---@return UObject
function UOSCManager:FindObjectAtOSCAddress(Address) end
---@param ReceiveIPAddress FString
---@param Port int32
---@param bMulticastLoopback boolean
---@param bStartListening boolean
---@param ServerName FString
---@param Outer UObject
---@return UOSCServer
function UOSCManager:CreateOSCServer(ReceiveIPAddress, Port, bMulticastLoopback, bStartListening, ServerName, Outer) end
---@param SendIPAddress FString
---@param Port int32
---@param ClientName FString
---@param Outer UObject
---@return UOSCClient
function UOSCManager:CreateOSCClient(SendIPAddress, Port, ClientName, Outer) end
---@param String FString
---@return FOSCAddress
function UOSCManager:ConvertStringToOSCAddress(String) end
---@param Address FOSCAddress
---@return FOSCAddress
function UOSCManager:ClearOSCAddressContainers(Address) end
---@param Message FOSCMessage
---@return FOSCMessage
function UOSCManager:ClearMessage(Message) end
---@param Bundle FOSCBundle
---@return FOSCBundle
function UOSCManager:ClearBundle(Bundle) end
---@param Message FOSCMessage
---@param Value FString
---@return FOSCMessage
function UOSCManager:AddString(Message, Value) end
---@param Message FOSCMessage
---@param Bundle FOSCBundle
---@return FOSCBundle
function UOSCManager:AddMessageToBundle(Message, Bundle) end
---@param Message FOSCMessage
---@param Value int64
---@return FOSCMessage
function UOSCManager:AddInt64(Message, Value) end
---@param Message FOSCMessage
---@param Value int32
---@return FOSCMessage
function UOSCManager:AddInt32(Message, Value) end
---@param Message FOSCMessage
---@param Value float
---@return FOSCMessage
function UOSCManager:AddFloat(Message, Value) end
---@param InBundle FOSCBundle
---@param OutBundle FOSCBundle
---@return FOSCBundle
function UOSCManager:AddBundleToBundle(InBundle, OutBundle) end
---@param Message FOSCMessage
---@param Value boolean
---@return FOSCMessage
function UOSCManager:AddBool(Message, Value) end
---@param Message FOSCMessage
---@param Value TArray<uint8>
---@return FOSCMessage
function UOSCManager:AddBlob(Message, Value) end
---@param Message FOSCMessage
---@param Value FOSCAddress
---@return FOSCMessage
function UOSCManager:AddAddress(Message, Value) end


---@class UOSCServer : UObject
---@field OnOscMessageReceived FOSCServerOnOscMessageReceived
---@field OnOscBundleReceived FOSCServerOnOscBundleReceived
UOSCServer = {}

---@param OSCAddressPattern FOSCAddress
---@param Event FUnbindEventFromOnOSCAddressPatternMatchesPathEvent
function UOSCServer:UnbindEventFromOnOSCAddressPatternMatchesPath(OSCAddressPattern, Event) end
function UOSCServer:UnbindAllEventsFromOnOSCAddressPatternMatching() end
---@param OSCAddressPattern FOSCAddress
function UOSCServer:UnbindAllEventsFromOnOSCAddressPatternMatchesPath(OSCAddressPattern) end
function UOSCServer:Stop() end
---@param bMulticastLoopback boolean
function UOSCServer:SetMulticastLoopback(bMulticastLoopback) end
---@param bEnabled boolean
function UOSCServer:SetAllowlistClientsEnabled(bEnabled) end
---@param ReceiveIPAddress FString
---@param Port int32
---@return boolean
function UOSCServer:SetAddress(ReceiveIPAddress, Port) end
---@param IPAddress FString
function UOSCServer:RemoveAllowlistedClient(IPAddress) end
function UOSCServer:Listen() end
---@return boolean
function UOSCServer:IsActive() end
---@return int32
function UOSCServer:GetPort() end
---@return boolean
function UOSCServer:GetMulticastLoopback() end
---@param bIncludePort boolean
---@return FString
function UOSCServer:GetIpAddress(bIncludePort) end
---@return TArray<FOSCAddress>
function UOSCServer:GetBoundOSCAddressPatterns() end
---@return TSet<FString>
function UOSCServer:GetAllowlistedClients() end
function UOSCServer:ClearAllowlistedClients() end
---@param OSCAddressPattern FOSCAddress
---@param Event FBindEventToOnOSCAddressPatternMatchesPathEvent
function UOSCServer:BindEventToOnOSCAddressPatternMatchesPath(OSCAddressPattern, Event) end
---@param IPAddress FString
function UOSCServer:AddAllowlistedClient(IPAddress) end


