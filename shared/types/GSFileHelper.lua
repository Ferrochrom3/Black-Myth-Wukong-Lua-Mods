---@meta

---@class UGSFileHelper : UBlueprintFunctionLibrary
UGSFileHelper = {}

---@param Filename FString
---@param BytesToWrite TArray<uint8>
---@param bAppend boolean
---@param IsStandardPath boolean
---@return boolean
function UGSFileHelper:WriteFile(Filename, BytesToWrite, bAppend, IsStandardPath) end
---@param Filename FString
---@param BytesToRead TArray<uint8>
---@param IsStandardPath boolean
---@return boolean
function UGSFileHelper:ReadFile(Filename, BytesToRead, IsStandardPath) end
---@param Filename FString
---@return int64
function UGSFileHelper:GetTimeStampTicks(Filename) end
---@param Directory FString
---@param FoundFiles TArray<FString>
---@param FileExtension FString
function UGSFileHelper:FindFilesRecursively(Directory, FoundFiles, FileExtension) end
---@param Directory FString
---@param FoundFiles TArray<FString>
---@param FileExtension FString
function UGSFileHelper:FindFiles(Directory, FoundFiles, FileExtension) end
---@param Filename FString
---@return int64
function UGSFileHelper:FileSize(Filename) end
---@param Filename FString
---@return boolean
function UGSFileHelper:FileExists(Filename) end
---@param Directory FString
---@return boolean
function UGSFileHelper:DirectoryExists(Directory) end
---@param Filename FString
---@return boolean
function UGSFileHelper:DeleteFile(Filename) end
---@param Directory FString
---@return boolean
function UGSFileHelper:DeleteDirectory(Directory) end
---@param Directory FString
---@return boolean
function UGSFileHelper:CreateDirectory(Directory) end


