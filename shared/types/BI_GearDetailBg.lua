---@meta

---@class UBI_GearDetailBg_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimForged UWidgetAnimation
---@field AnimUpgrade UWidgetAnimation
---@field ['-----------'] UWidgetAnimation
---@field AnimEquiped UWidgetAnimation
---@field ImgBg UImage
---@field ImgCoreBg UImage
---@field UING_EquipSpark_Left UNiagaraSystemWidget
---@field UING_EquipSpark_Right UNiagaraSystemWidget
---@field UING_EquipSpark_Top UNiagaraSystemWidget
UBI_GearDetailBg_C = {}

---@param UING_EquipSpark_Right UNiagaraSystemWidget
function UBI_GearDetailBg_C:SequenceEvent__ENTRYPOINTBI_GearDetailBg_5(UING_EquipSpark_Right) end
---@param UING_EquipSpark_Right UNiagaraSystemWidget
function UBI_GearDetailBg_C:SequenceEvent__ENTRYPOINTBI_GearDetailBg_4(UING_EquipSpark_Right) end
---@param UING_EquipSpark_Right UNiagaraSystemWidget
function UBI_GearDetailBg_C:SequenceEvent__ENTRYPOINTBI_GearDetailBg_3(UING_EquipSpark_Right) end
---@param UING_EquipSpark_Right UNiagaraSystemWidget
function UBI_GearDetailBg_C:SequenceEvent__ENTRYPOINTBI_GearDetailBg_2(UING_EquipSpark_Right) end
---@param UING_EquipSpark_Top UNiagaraSystemWidget
function UBI_GearDetailBg_C:SequenceEvent__ENTRYPOINTBI_GearDetailBg_1(UING_EquipSpark_Top) end
---@param UING_EquipSpark_Top UNiagaraSystemWidget
function UBI_GearDetailBg_C:SequenceEvent__ENTRYPOINTBI_GearDetailBg_0(UING_EquipSpark_Top) end
---@param UING_EquipSpark_Top UNiagaraSystemWidget
function UBI_GearDetailBg_C:SeqFX_Play_Top(UING_EquipSpark_Top) end
---@param UING_EquipSpark_Top UNiagaraSystemWidget
function UBI_GearDetailBg_C:SeqFX_Stop_Top(UING_EquipSpark_Top) end
---@param UING_EquipSpark_Right UNiagaraSystemWidget
function UBI_GearDetailBg_C:SeqFX_Play_Right(UING_EquipSpark_Right) end
---@param UING_EquipSpark_Right UNiagaraSystemWidget
function UBI_GearDetailBg_C:SeqFX_Stop_Right(UING_EquipSpark_Right) end
---@param UING_EquipSpark_Right UNiagaraSystemWidget
function UBI_GearDetailBg_C:SeqFX_Play_Left(UING_EquipSpark_Right) end
---@param UING_EquipSpark_Right UNiagaraSystemWidget
function UBI_GearDetailBg_C:SeqFX_Stop_Left(UING_EquipSpark_Right) end
function UBI_GearDetailBg_C:EventAnim_Forged_Play() end
function UBI_GearDetailBg_C:EventAnim_Forged_Stop() end
function UBI_GearDetailBg_C:EventAnim_Equiped_Play() end
function UBI_GearDetailBg_C:EventAnim_Equiped_Stop() end
function UBI_GearDetailBg_C:EventAnim_Upgrade_Play() end
function UBI_GearDetailBg_C:EventAnim_Upgrade_Stop() end
---@param IsDesignTime boolean
function UBI_GearDetailBg_C:PreConstruct(IsDesignTime) end
function UBI_GearDetailBg_C:Construct() end
---@param EntryPoint int32
function UBI_GearDetailBg_C:ExecuteUbergraph_BI_GearDetailBg(EntryPoint) end


