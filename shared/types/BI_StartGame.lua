---@meta

---@class UBI_StartGame_C : UBUI_Button
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GSAKBStateAnim_2 UWidgetAnimation
---@field GSAKBOnlineMarker UWidgetAnimation
---@field ['----------'] UWidgetAnimation
---@field GSAnimDisable UWidgetAnimation
---@field GSAnimActived UWidgetAnimation
---@field GSAnimFocused UWidgetAnimation
---@field GSAnimHovered UWidgetAnimation
---@field GSAnimNormal UWidgetAnimation
---@field ['-----------'] UWidgetAnimation
---@field GSAnimPressed UWidgetAnimation
---@field GSAKBStateAnim UWidgetAnimation
---@field BI_TextLoop UBI_TextLoop_C
---@field ImgArrow_test UImage
---@field ImgBar UGSImage
---@field ImgBarAct UGSImage
---@field ImgOnline UImage
---@field ImgRedPoint UImage
UBI_StartGame_C = {}

---@param IsDesignTime boolean
function UBI_StartGame_C:PreConstruct(IsDesignTime) end
function UBI_StartGame_C:Construct() end
---@param EntryPoint int32
function UBI_StartGame_C:ExecuteUbergraph_BI_StartGame(EntryPoint) end


