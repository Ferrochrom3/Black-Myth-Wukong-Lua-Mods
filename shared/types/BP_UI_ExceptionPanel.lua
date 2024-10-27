---@meta

---@class UBP_UI_ExceptionPanel_C : UBUI_ExceptionPanel
---@field UberGraphFrame FPointerToUberGraphFrame
---@field HideAll UWidgetAnimation
---@field ShowOKFin UWidgetAnimation
---@field BG UImage
---@field BG2 UImage
---@field CloseButton UButton
---@field ConfirmBtn UButton
---@field CopyButton UButton
---@field ImgBlock UImage
---@field ImgBox UImage
---@field ImgBtn UImage
---@field ImgLine UImage
---@field InputIcon UGSInputActionIcon
---@field MainBG UImage
---@field TextArea UMultiLineEditableText
---@field TextUserConfig UMultiLineEditableText
---@field Warning UImage
---@field InputMgr UObject
UBP_UI_ExceptionPanel_C = {}

function UBP_UI_ExceptionPanel_C:Construct() end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UBP_UI_ExceptionPanel_C:Tick(MyGeometry, InDeltaTime) end
function UBP_UI_ExceptionPanel_C:BndEvt__CopyButton_K2Node_ComponentBoundEvent_0_OnButtonClickedEvent__DelegateSignature() end
function UBP_UI_ExceptionPanel_C:BndEvt__CloseButton_K2Node_ComponentBoundEvent_1_OnButtonClickedEvent__DelegateSignature() end
---@param IsDesignTime boolean
function UBP_UI_ExceptionPanel_C:PreConstruct(IsDesignTime) end
function UBP_UI_ExceptionPanel_C:BndEvt__BP_UI_ExceptionPanel_ConfirmBtn_K2Node_ComponentBoundEvent_2_OnButtonClickedEvent__DelegateSignature() end
---@param EntryPoint int32
function UBP_UI_ExceptionPanel_C:ExecuteUbergraph_BP_UI_ExceptionPanel(EntryPoint) end


