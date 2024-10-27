---@meta

---@class UBP_UI_GMInfo_Enemy_C : UBUI_GMInfo_Enemy
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BG_1 UImage
---@field BG_2 UImage
---@field InfoBG UImage
UBP_UI_GMInfo_Enemy_C = {}

---@param IsDesignTime boolean
function UBP_UI_GMInfo_Enemy_C:PreConstruct(IsDesignTime) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UBP_UI_GMInfo_Enemy_C:Tick(MyGeometry, InDeltaTime) end
---@param EntryPoint int32
function UBP_UI_GMInfo_Enemy_C:ExecuteUbergraph_BP_UI_GMInfo_Enemy(EntryPoint) end


