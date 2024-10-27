---@meta

---@class UGSSlateUtilsBPLibrary : UBlueprintFunctionLibrary
UGSSlateUtilsBPLibrary = {}

---@param TargetUserWidget UUserWidget
---@param TargetUTextBlock UTextBlock
---@param TextContent FText
---@return boolean
function UGSSlateUtilsBPLibrary:SetChildrenWidgetByUTextBlock_STextBlock(TargetUserWidget, TargetUTextBlock, TextContent) end
---@param TargetUserWidget UUserWidget
---@param TargetUImage UImage
---@param Texture UTexture2D
---@return boolean
function UGSSlateUtilsBPLibrary:SetChildrenWidgetByUImage_SImage(TargetUserWidget, TargetUImage, Texture) end
---@param TargetUserWidget UUserWidget
---@param TargetName FName
---@param TextContent FText
---@return boolean
function UGSSlateUtilsBPLibrary:SetChildrenWidgetByName_STextBlock(TargetUserWidget, TargetName, TextContent) end
---@param TargetUserWidget UUserWidget
---@param TargetName FName
---@param Texture UTexture2D
---@return boolean
function UGSSlateUtilsBPLibrary:SetChildrenWidgetByName_SImage(TargetUserWidget, TargetName, Texture) end
---@param TargetUserWidget UUserWidget
function UGSSlateUtilsBPLibrary:ClearCacheSlateBrush(TargetUserWidget) end


