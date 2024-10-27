---@meta

---@class UBP_UI_GMInfo_Player_C : UBUI_GMInfo_Player
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BG_1 UImage
---@field BG_2 UImage
UBP_UI_GMInfo_Player_C = {}

---@param IsDesignTime boolean
function UBP_UI_GMInfo_Player_C:PreConstruct(IsDesignTime) end
---@param MyGeometry FGeometry
---@param InDeltaTime float
function UBP_UI_GMInfo_Player_C:Tick(MyGeometry, InDeltaTime) end
---@param EntryPoint int32
function UBP_UI_GMInfo_Player_C:ExecuteUbergraph_BP_UI_GMInfo_Player(EntryPoint) end


