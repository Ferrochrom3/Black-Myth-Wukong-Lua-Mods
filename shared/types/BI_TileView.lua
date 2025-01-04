---@meta

---@class UBI_TileView_C : UGSTileView
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ItemTileView UGSTileViewPanel
UBI_TileView_C = {}

---@param IsDesignTime boolean
function UBI_TileView_C:PreConstruct(IsDesignTime) end
function UBI_TileView_C:Construct() end
---@param EntryPoint int32
function UBI_TileView_C:ExecuteUbergraph_BI_TileView(EntryPoint) end


