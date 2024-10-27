---@meta

---@class FGSRichZhuYinRow : FTableRowBase
---@field bOverrideMainTextStyle boolean
---@field MainTextStyle FTextBlockStyle
---@field ZhuYinMargin FMargin
---@field ZhuYinTextStyle FTextBlockStyle
---@field ZhuYinTextHeightScale float
---@field ZhuYinTextHeightPadding float
FGSRichZhuYinRow = {}



---@class FTestTmp
---@field TestA UGCTestA
FTestTmp = {}



---@class UCSTestC : UObject
---@field TestCValue int32
---@field MapTestA TMap<FName, FTestTmp>
UCSTestC = {}



---@class UGCTestA : UObject
---@field TestValueA float
UGCTestA = {}



---@class UGCTestB : UObject
---@field TestValueB float
---@field ObjTestC UCSTestC
UGCTestB = {}

function UGCTestB:TestLog() end
function UGCTestB:TestInit() end


---@class UGSRichTextBlockZhuYinDecorator : URichTextBlockDecorator
---@field ZhuYinSet UDataTable
UGSRichTextBlockZhuYinDecorator = {}



---@class UGSSearchBox : UWidget
---@field OnSearchTextChanged FGSSearchBoxOnSearchTextChanged
UGSSearchBox = {}

---@param Text FText
function UGSSearchBox:OnSearchTextChangedEvent__DelegateSignature(Text) end
---@return FText
function UGSSearchBox:GetText() end


---@class UGSSplitterBox : UPanelWidget
---@field OnSplitterFinishedResizing FGSSplitterBoxOnSplitterFinishedResizing
---@field Orientation EOrientation
UGSSplitterBox = {}

function UGSSplitterBox:OnSplitterFinishedResizingEvent__DelegateSignature() end
---@param Content UWidget
---@return UGSSplitterBoxSlot
function UGSSplitterBox:AddChildToSplitterBox(Content) end


---@class UGSSplitterBoxSlot : UPanelSlot
---@field Size float
UGSSplitterBoxSlot = {}

---@param InSize float
function UGSSplitterBoxSlot:SetSize(InSize) end


---@class UUMGExtFuncLib : UBlueprintFunctionLibrary
UUMGExtFuncLib = {}


