---@meta

---@class FSlateMeshData
---@field MeshPackageName FName
---@field Vertex TArray<FVector2f>
---@field VertexColor TArray<FColor>
---@field UV TArray<FVector2f>
---@field Index TArray<uint32>
FSlateMeshData = {}



---@class UNiagaraSystemWidget : UWidget
---@field NiagaraSystemReference UNiagaraSystem
---@field AutoActivate boolean
---@field TickWhenPaused boolean
---@field FakeDepthScale boolean
---@field FakeDepthScaleDistance float
---@field GSIsNeedWidgetSizeParam boolean
---@field GSVec4A FVector4
---@field GSVec4B FVector4
---@field GSColorA FLinearColor
---@field GSColorB FLinearColor
---@field MeshData TArray<FSlateMeshData>
---@field NiagaraComponent UNiagaraUIComponent
UNiagaraSystemWidget = {}

---@param NewTickWhenPaused boolean
function UNiagaraSystemWidget:UpdateTickWhenPaused(NewTickWhenPaused) end
---@param NewNiagaraSystem UNiagaraSystem
function UNiagaraSystemWidget:UpdateNiagaraSystemReference(NewNiagaraSystem) end
---@param InVec4 FVector4
function UNiagaraSystemWidget:SetGSVec4B(InVec4) end
---@param InVec4 FVector4
function UNiagaraSystemWidget:SetGSVec4A(InVec4) end
---@param InColor FLinearColor
function UNiagaraSystemWidget:SetGSColorB(InColor) end
---@param InColor FLinearColor
function UNiagaraSystemWidget:SetGSColorA(InColor) end
function UNiagaraSystemWidget:ReInitSystem() end
---@param IsReset boolean
function UNiagaraSystemWidget:GSStopFX(IsReset) end
---@param InName FString
---@param InVal FVector4
function UNiagaraSystemWidget:GSSetNiagaraValVector4(InName, InVal) end
---@param InName FString
---@param InVal FVector2D
function UNiagaraSystemWidget:GSSetNiagaraValVector2(InName, InVal) end
---@param InName FString
---@param InVal FVector
function UNiagaraSystemWidget:GSSetNiagaraValVector(InName, InVal) end
---@param InName FString
---@param InVal FLinearColor
function UNiagaraSystemWidget:GSSetNiagaraValLinearColor(InName, InVal) end
---@param InName FString
---@param InVal int32
function UNiagaraSystemWidget:GSSetNiagaraValInt(InName, InVal) end
---@param InName FString
---@param InVal float
function UNiagaraSystemWidget:GSSetNiagaraValFloat(InName, InVal) end
---@param InName FString
---@param InVal boolean
function UNiagaraSystemWidget:GSSetNiagaraValBool(InName, InVal) end
function UNiagaraSystemWidget:GSResumeFX() end
---@param IsReset boolean
function UNiagaraSystemWidget:GSPlayFX(IsReset) end
function UNiagaraSystemWidget:GSPauseFX() end
function UNiagaraSystemWidget:GSDestoryFX() end
---@param IsActive boolean
---@param IsReset boolean
function UNiagaraSystemWidget:GSActiveFX(IsActive, IsReset) end
---@return UNiagaraUIComponent
function UNiagaraSystemWidget:GetNiagaraComponent() end
function UNiagaraSystemWidget:DeactivateSystem() end
---@param Reset boolean
function UNiagaraSystemWidget:ActivateSystem(Reset) end


---@class UNiagaraUIComponent : UNiagaraComponent
UNiagaraUIComponent = {}


---@class UUINiagaraMInstanceConst : UMaterialInstanceConstant
UUINiagaraMInstanceConst = {}


