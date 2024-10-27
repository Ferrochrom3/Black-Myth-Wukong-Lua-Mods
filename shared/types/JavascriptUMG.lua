---@meta

---@class FJavascriptColumn
---@field ID FString
---@field Width float
---@field Widget UWidget
FJavascriptColumn = {}



---@class FJavascriptSlateIcon
---@field StyleSetName FName
---@field StyleName FName
---@field SmallStyleName FName
FJavascriptSlateIcon = {}



---@class FJavascriptSlateStyle
FJavascriptSlateStyle = {}


---@class FJavascriptSlateTextRun
FJavascriptSlateTextRun = {}


---@class FJavascriptSlateWidget
FJavascriptSlateWidget = {}


---@class FJavascriptStyleSet
---@field StyleSetName FName
FJavascriptStyleSet = {}



---@class FJavascriptTextLayout
FJavascriptTextLayout = {}


---@class UJavascriptComboButton : UContentWidget
---@field ComboButtonStyle FComboButtonStyle
---@field ButtonStyle FButtonStyle
---@field OnGetMenuContent FJavascriptComboButtonOnGetMenuContent
---@field OnMenuOpenChanged FJavascriptComboButtonOnMenuOpenChanged
---@field OnComboBoxOpened FJavascriptComboButtonOnComboBoxOpened
---@field bIsFocusable boolean
---@field bHasDownArrow boolean
---@field ForegroundColor FSlateColor
---@field ButtonColorAndOpacity FSlateColor
---@field ContentPadding FMargin
---@field MenuPlacement EMenuPlacement
---@field HAlign EHorizontalAlignment
---@field VAlign EVerticalAlignment
UJavascriptComboButton = {}

---@param InIsOpen boolean
---@param bFocusMenu boolean
function UJavascriptComboButton:SetIsOpen(InIsOpen, bFocusMenu) end
---@param Value boolean
function UJavascriptComboButton:OnIsOpenChanged__DelegateSignature(Value) end
---@return FJavascriptSlateWidget
function UJavascriptComboButton:OnGetContent__DelegateSignature() end
function UJavascriptComboButton:OnComboBoxOpened__DelegateSignature() end


---@class UJavascriptComboButtonContext : UObject
---@field OnGetLabel FJavascriptComboButtonContextOnGetLabel
---@field OnGetTooltip FJavascriptComboButtonContextOnGetTooltip
---@field OnGetIcon FJavascriptComboButtonContextOnGetIcon
---@field OnGetWidget FJavascriptComboButtonContextOnGetWidget
---@field OnCanExecute FJavascriptComboButtonContextOnCanExecute
UJavascriptComboButtonContext = {}



---@class UJavascriptGameViewport : UContentWidget
---@field BackgroundColor FLinearColor
UJavascriptGameViewport = {}

---@param ActorClass TSubclassOf<AActor>
---@return AActor
function UJavascriptGameViewport:Spawn(ActorClass) end
---@param Rotation FRotator
function UJavascriptGameViewport:SetViewRotation(Rotation) end
---@param Location FVector
function UJavascriptGameViewport:SetViewLocation(Location) end
---@return FRotator
function UJavascriptGameViewport:GetViewRotation() end
---@return UWorld
function UJavascriptGameViewport:GetViewportWorld() end
---@return FVector
function UJavascriptGameViewport:GetViewLocation() end


---@class UJavascriptIntSpinBox : UWidget
---@field Value int32
---@field ValueDelegate FJavascriptIntSpinBoxValueDelegate
---@field WidgetStyle FSpinBoxStyle
---@field Style USlateWidgetStyleAsset
---@field Delta int32
---@field SliderExponent int32
---@field Font FSlateFontInfo
---@field Justification ETextJustify::Type
---@field MinDesiredWidth int32
---@field ClearKeyboardFocusOnCommit boolean
---@field SelectAllTextOnCommit boolean
---@field ForegroundColor FSlateColor
---@field OnValueChanged FJavascriptIntSpinBoxOnValueChanged
---@field OnValueCommitted FJavascriptIntSpinBoxOnValueCommitted
---@field OnBeginSliderMovement FJavascriptIntSpinBoxOnBeginSliderMovement
---@field OnEndSliderMovement FJavascriptIntSpinBoxOnEndSliderMovement
---@field bOverride_MinValue boolean
---@field bOverride_MaxValue boolean
---@field bOverride_MinSliderValue boolean
---@field bOverride_MaxSliderValue boolean
---@field MinValue int32
---@field MaxValue int32
---@field MinSliderValue int32
---@field MaxSliderValue int32
UJavascriptIntSpinBox = {}

---@param NewValue int32
function UJavascriptIntSpinBox:SetValue(NewValue) end
---@param NewValue int32
function UJavascriptIntSpinBox:SetMinValue(NewValue) end
---@param NewValue int32
function UJavascriptIntSpinBox:SetMinSliderValue(NewValue) end
---@param NewValue int32
function UJavascriptIntSpinBox:SetMaxValue(NewValue) end
---@param NewValue int32
function UJavascriptIntSpinBox:SetMaxSliderValue(NewValue) end
---@param InForegroundColor FSlateColor
function UJavascriptIntSpinBox:SetForegroundColor(InForegroundColor) end
---@param InValue int32
---@param CommitMethod ETextCommit::Type
function UJavascriptIntSpinBox:OnSpinBoxValueCommittedEvent__DelegateSignature(InValue, CommitMethod) end
---@param InValue int32
function UJavascriptIntSpinBox:OnSpinBoxValueChangedEvent__DelegateSignature(InValue) end
function UJavascriptIntSpinBox:OnSpinBoxBeginSliderMovement__DelegateSignature() end
---@return int32
function UJavascriptIntSpinBox:GetValue() end
---@return int32
function UJavascriptIntSpinBox:GetMinValue() end
---@return int32
function UJavascriptIntSpinBox:GetMinSliderValue() end
---@return int32
function UJavascriptIntSpinBox:GetMaxValue() end
---@return int32
function UJavascriptIntSpinBox:GetMaxSliderValue() end
function UJavascriptIntSpinBox:ClearMinValue() end
function UJavascriptIntSpinBox:ClearMinSliderValue() end
function UJavascriptIntSpinBox:ClearMaxValue() end
function UJavascriptIntSpinBox:ClearMaxSliderValue() end


---@class UJavascriptListView : UJavascriptTreeView
---@field ItemHeight float
UJavascriptListView = {}

function UJavascriptListView:RequestListRefresh() end
---@param Object UObject
function UJavascriptListView:OnClick(Object) end


---@class UJavascriptMenuContext : UObject
---@field Description FText
---@field ToolTip FText
---@field Icon FJavascriptSlateIcon
---@field ActionType EJavasrciptUserInterfaceActionType::Type
---@field OnCanExecute FJavascriptMenuContextOnCanExecute
---@field OnExecute FJavascriptMenuContextOnExecute
---@field OnGetActionCheckState FJavascriptMenuContextOnGetActionCheckState
UJavascriptMenuContext = {}



---@class UJavascriptMultiLineEditableTextBox : UMultiLineEditableTextBox
---@field OnVScrollBarUserScrolled FJavascriptMultiLineEditableTextBoxOnVScrollBarUserScrolled
---@field GetTextDelegate FJavascriptMultiLineEditableTextBoxGetTextDelegate
---@field SetTextDelegate FJavascriptMultiLineEditableTextBoxSetTextDelegate
---@field bAlwaysShowScrollbars boolean
UJavascriptMultiLineEditableTextBox = {}

---@param InText FString
---@param TextLayout FJavascriptTextLayout
function UJavascriptMultiLineEditableTextBox:SetText__DelegateSignature(InText, TextLayout) end
---@param Line int32
---@param Offset int32
function UJavascriptMultiLineEditableTextBox:ScrollTo(Line, Offset) end
function UJavascriptMultiLineEditableTextBox:Refresh() end
---@param Offset float
function UJavascriptMultiLineEditableTextBox:OnVScrollBarUserScrolled__DelegateSignature(Offset) end
---@param Line int32
---@param Offset int32
function UJavascriptMultiLineEditableTextBox:GoTo(Line, Offset) end
---@param TextLayout FJavascriptTextLayout
---@return FString
function UJavascriptMultiLineEditableTextBox:GetText__DelegateSignature(TextLayout) end


---@class UJavascriptRichTextBlockHyperlinkDecorator : URichTextBlockDecorator
---@field HyperlinkId FString
---@field OnClick FJavascriptRichTextBlockHyperlinkDecoratorOnClick
UJavascriptRichTextBlockHyperlinkDecorator = {}

---@param Key FString
---@return FString
function UJavascriptRichTextBlockHyperlinkDecorator:GetMetaData(Key) end


---@class UJavascriptSearchBox : UWidget
---@field JavascriptContext UJavascriptContext
---@field OnTextChanged FJavascriptSearchBoxOnTextChanged
---@field OnTextCommitted FJavascriptSearchBoxOnTextCommitted
---@field Text FText
---@field TextDelegate FJavascriptSearchBoxTextDelegate
---@field HintText FText
---@field HintTextDelegate FJavascriptSearchBoxHintTextDelegate
UJavascriptSearchBox = {}

---@param InText FText
function UJavascriptSearchBox:SetText(InText) end
---@param InHintText FText
function UJavascriptSearchBox:SetHintText(InHintText) end
---@param MyGeometry FGeometry
---@param InKeyEvent FKeyEvent
---@return FEventReply
function UJavascriptSearchBox:OnKeyDown(MyGeometry, InKeyEvent) end
---@param Text FText
---@param CommitMethod ETextCommit::Type
function UJavascriptSearchBox:OnEditableTextCommittedEvent__DelegateSignature(Text, CommitMethod) end
---@param Text FText
function UJavascriptSearchBox:OnEditableTextChangedEvent__DelegateSignature(Text) end


---@class UJavascriptStyleSetLibrary : UBlueprintFunctionLibrary
---@field SlateColor FSlateColor
---@field SlateBrush FSlateBrush
---@field ButtonStyle FButtonStyle
---@field TextBlockStyle FTextBlockStyle
---@field EditableTextStyle FEditableTextStyle
---@field EditableTextBoxStyle FEditableTextBoxStyle
---@field CheckBoxStyle FCheckBoxStyle
---@field ComboBoxStyle FComboBoxStyle
---@field ComboButtonStyle FComboButtonStyle
---@field ProgressBarStyle FProgressBarStyle
UJavascriptStyleSetLibrary = {}

---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FVector2D
function UJavascriptStyleSetLibrary:GetVector(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FTextBlockStyle
function UJavascriptStyleSetLibrary:GetTextBlockStyle(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FSlateSound
function UJavascriptStyleSetLibrary:GetSound(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FSlateColor
function UJavascriptStyleSetLibrary:GetSlateColor(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FProgressBarStyle
function UJavascriptStyleSetLibrary:GetProgressBarStyle(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FMargin
function UJavascriptStyleSetLibrary:GetMargin(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FSlateFontInfo
function UJavascriptStyleSetLibrary:GetFontStyle(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return float
function UJavascriptStyleSetLibrary:GetFloat(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FEditableTextStyle
function UJavascriptStyleSetLibrary:GetEditableTextStyle(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FEditableTextBoxStyle
function UJavascriptStyleSetLibrary:GetEditableTextBoxStyle(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FComboButtonStyle
function UJavascriptStyleSetLibrary:GetComboButtonStyle(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FComboBoxStyle
function UJavascriptStyleSetLibrary:GetComboBoxStyle(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FLinearColor
function UJavascriptStyleSetLibrary:GetColor(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FCheckBoxStyle
function UJavascriptStyleSetLibrary:GetCheckBoxStyle(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FButtonStyle
function UJavascriptStyleSetLibrary:GetButtonStyle(Handle, StyleName) end
---@param Handle FJavascriptStyleSet
---@param StyleName FName
---@return FSlateBrush
function UJavascriptStyleSetLibrary:GetBrush(Handle, StyleName) end


---@class UJavascriptTextBlock : UTextBlock
---@field HighlightText FText
---@field HighlightTextDelegate FJavascriptTextBlockHighlightTextDelegate
UJavascriptTextBlock = {}

---@param InHighlightText FText
function UJavascriptTextBlock:SetHighlightText(InHighlightText) end


---@class UJavascriptTextModel : UObject
UJavascriptTextModel = {}

---@param String FString
function UJavascriptTextModel:SetString(String) end
---@return FString
function UJavascriptTextModel:GetString() end
---@param MessageTextStyle FTextBlockStyle
---@param BeginIndex int32
---@param EndIndex int32
---@return FJavascriptSlateTextRun
function UJavascriptTextModel:CreateRun(MessageTextStyle, BeginIndex, EndIndex) end


---@class UJavascriptTileView : UTileView
---@field JavascriptContext UJavascriptContext
UJavascriptTileView = {}

---@param Object UObject
---@param Type ESelectInfo::Type
function UJavascriptTileView:OnSelectionChanged(Object, Type) end
---@param Object UObject
function UJavascriptTileView:OnDoubleClick(Object) end
---@param Object UObject
function UJavascriptTileView:OnClick(Object) end


---@class UJavascriptToolbarButtonContext : UObject
---@field OnGetLabel FJavascriptToolbarButtonContextOnGetLabel
---@field OnGetTooltip FJavascriptToolbarButtonContextOnGetTooltip
---@field OnGetIcon FJavascriptToolbarButtonContextOnGetIcon
---@field OnExecuteAction FJavascriptToolbarButtonContextOnExecuteAction
---@field OnCanExecuteAction FJavascriptToolbarButtonContextOnCanExecuteAction
---@field OnIsActionChecked FJavascriptToolbarButtonContextOnIsActionChecked
---@field OnIsActionButtonVisible FJavascriptToolbarButtonContextOnIsActionButtonVisible
UJavascriptToolbarButtonContext = {}

function UJavascriptToolbarButtonContext:UnmarkReferencedObject() end
---@return FText
function UJavascriptToolbarButtonContext:TextDelegate__DelegateSignature() end
function UJavascriptToolbarButtonContext:MarkReferencedObject() end
---@param EditingObject UObject
function UJavascriptToolbarButtonContext:JavascriptExecuteActionWithEditingObject__DelegateSignature(EditingObject) end
---@param EditingObject UObject
---@return boolean
function UJavascriptToolbarButtonContext:JavascriptCanExecuteActionWithEditingObject__DelegateSignature(EditingObject) end
---@return FJavascriptSlateIcon
function UJavascriptToolbarButtonContext:IconDelegate__DelegateSignature() end
---@return boolean
function UJavascriptToolbarButtonContext:BoolDelegate__DelegateSignature() end


---@class UJavascriptTreeView : UListViewBase
---@field OnGenerateRowEvent FJavascriptTreeViewOnGenerateRowEvent
---@field OnExpansionChanged FJavascriptTreeViewOnExpansionChanged
---@field OnContextMenuOpening FJavascriptTreeViewOnContextMenuOpening
---@field OnGetChildren FJavascriptTreeViewOnGetChildren
---@field JavascriptContext UJavascriptContext
---@field Items TArray<UObject>
---@field HeaderRowStyle FHeaderRowStyle
---@field TableRowStyle FTableRowStyle
---@field ScrollBarStyle FScrollBarStyle
---@field SelectionMode ESelectionMode::Type
---@field Children TArray<UObject>
---@field Columns TArray<FJavascriptColumn>
---@field ColumnWidgets TArray<UWidget>
UJavascriptTreeView = {}

---@param InItem UObject
function UJavascriptTreeView:SetSingleExpandedItem(InItem) end
---@param SoleSelectedItem UObject
function UJavascriptTreeView:SetSelection(SoleSelectedItem) end
---@param InItem UObject
---@param InShouldExpandItem boolean
function UJavascriptTreeView:SetItemExpansion(InItem, InShouldExpandItem) end
---@param SelectedItem UObject
function UJavascriptTreeView:SetDoubleClickSelection(SelectedItem) end
function UJavascriptTreeView:RequestTreeRefresh() end
---@param Object UObject
---@param Type ESelectInfo::Type
function UJavascriptTreeView:OnSelectionChanged(Object, Type) end
---@param Item UObject
---@param Instance UJavascriptTreeView
function UJavascriptTreeView:OnGetChildrenUObject__DelegateSignature(Item, Instance) end
---@param Object UObject
---@param ID FName
---@param Instance UJavascriptTreeView
---@return UWidget
function UJavascriptTreeView:OnGenerateRow__DelegateSignature(Object, ID, Instance) end
---@param Item UObject
---@param bExpanded boolean
---@param Instance UJavascriptTreeView
function UJavascriptTreeView:OnExpansionChanged__DelegateSignature(Item, bExpanded, Instance) end
---@param Object UObject
function UJavascriptTreeView:OnDoubleClick(Object) end
---@param Instance UJavascriptTreeView
---@return UWidget
function UJavascriptTreeView:OnContextMenuOpening__DelegateSignature(Instance) end
---@param InItem UObject
---@return boolean
function UJavascriptTreeView:IsItemExpanded(InItem) end
---@param SelectedItem UObject
---@return boolean
function UJavascriptTreeView:IsDoubleClickSelection(SelectedItem) end
---@param OutItems TArray<UObject>
---@return boolean
function UJavascriptTreeView:GetSelectedItems(OutItems) end
---@param OutItems TArray<UObject>
function UJavascriptTreeView:GetDoubleClickedItems(OutItems) end
function UJavascriptTreeView:ClearDoubleClickSelection() end


---@class UJavascriptUMGBlueprintLibrary : UBlueprintFunctionLibrary
UJavascriptUMGBlueprintLibrary = {}

---@return FSlateColor
function UJavascriptUMGBlueprintLibrary:SlateColor_UseSubduedForeground() end
---@return FSlateColor
function UJavascriptUMGBlueprintLibrary:SlateColor_UseForeground() end
---@param TargetTextLayout FJavascriptTextLayout
---@return int32
function UJavascriptUMGBlueprintLibrary:GetLineLength(TargetTextLayout) end
---@param TextLayout FJavascriptTextLayout
---@return FString
function UJavascriptUMGBlueprintLibrary:GetAsText(TextLayout) end
---@param Context FPaintContext
---@param InStart FVector2D
---@param InStartDir FVector2D
---@param InEnd FVector2D
---@param InEndDir FVector2D
---@param InThickness float
---@param InTint FLinearColor
function UJavascriptUMGBlueprintLibrary:DrawSpaceSpline(Context, InStart, InStartDir, InEnd, InEndDir, InThickness, InTint) end
---@param TextLayout FJavascriptTextLayout
function UJavascriptUMGBlueprintLibrary:ClearLines(TextLayout) end
---@param TextLayout FJavascriptTextLayout
---@param Model UJavascriptTextModel
---@param Runs TArray<FJavascriptSlateTextRun>
function UJavascriptUMGBlueprintLibrary:AddLine(TextLayout, Model, Runs) end


---@class UJavascriptUMGLibrary : UBlueprintFunctionLibrary
UJavascriptUMGLibrary = {}

---@param StyleSet FJavascriptSlateStyle
function UJavascriptUMGLibrary:Unregister(StyleSet) end
---@param Widget UWidget
---@return FJavascriptSlateWidget
function UJavascriptUMGLibrary:TakeWidget(Widget) end
---@param NewWindow FJavascriptSlateWidget
function UJavascriptUMGLibrary:ShowWindow(NewWindow) end
---@param StyleSet FJavascriptSlateStyle
---@param InCoreContentRootDir FString
function UJavascriptUMGLibrary:SetCoreContentRoot(StyleSet, InCoreContentRootDir) end
---@param StyleSet FJavascriptSlateStyle
---@param InContentRootDir FString
function UJavascriptUMGLibrary:SetContentRoot(StyleSet, InContentRootDir) end
---@param TargetWidget UNativeWidgetHost
---@param SlateWidget FJavascriptSlateWidget
---@return UWidget
function UJavascriptUMGLibrary:SetContent(TargetWidget, SlateWidget) end
---@param StyleSet FJavascriptSlateStyle
---@param RelativePath FString
---@return FString
function UJavascriptUMGLibrary:RootToCoreContentDir(StyleSet, RelativePath) end
---@param StyleSet FJavascriptSlateStyle
---@param RelativePath FString
---@return FString
function UJavascriptUMGLibrary:RootToContentDir(StyleSet, RelativePath) end
---@param StyleSet FJavascriptSlateStyle
function UJavascriptUMGLibrary:Register(StyleSet) end
---@return FJavascriptSlateWidget
function UJavascriptUMGLibrary:GetRootWindow() end
---@param InDynamicBrushName FName
---@return FVector2D
function UJavascriptUMGLibrary:GenerateDynamicImageResource(InDynamicBrushName) end
---@param InStyleSetName FName
---@return FJavascriptSlateStyle
function UJavascriptUMGLibrary:CreateSlateStyle(InStyleSetName) end
---@param NewWindow FJavascriptSlateWidget
---@param RootWindow FJavascriptSlateWidget
function UJavascriptUMGLibrary:AddWindowAsNativeChild(NewWindow, RootWindow) end
---@param NewWindow FJavascriptSlateWidget
---@param bShowImmediately boolean
function UJavascriptUMGLibrary:AddWindow(NewWindow, bShowImmediately) end
---@param StyleSet FJavascriptSlateStyle
---@param PropertyName FName
---@param Sound FSlateSound
function UJavascriptUMGLibrary:AddSound(StyleSet, PropertyName, Sound) end
---@param StyleSet FJavascriptSlateStyle
---@param PropertyName FName
---@param InImageName FString
---@param InImageSize FVector2D
---@param InTint FLinearColor
---@param InTiling ESlateBrushTileType::Type
---@param InImageType ESlateBrushImageType::Type
function UJavascriptUMGLibrary:AddImageBrush(StyleSet, PropertyName, InImageName, InImageSize, InTint, InTiling, InImageType) end
---@param StyleSet FJavascriptSlateStyle
---@param PropertyName FName
---@param FontInfo FSlateFontInfo
function UJavascriptUMGLibrary:AddFontInfo(StyleSet, PropertyName, FontInfo) end
---@param StyleSet FJavascriptSlateStyle
---@param PropertyName FName
---@param InImageName FString
---@param InMargin FMargin
---@param InColorAndOpacity FLinearColor
---@param InImageType ESlateBrushImageType::Type
function UJavascriptUMGLibrary:AddBoxBrush(StyleSet, PropertyName, InImageName, InMargin, InColorAndOpacity, InImageType) end
---@param StyleSet FJavascriptSlateStyle
---@param PropertyName FName
---@param InImageName FString
---@param InMargin FMargin
---@param InColorAndOpacity FLinearColor
---@param InImageType ESlateBrushImageType::Type
function UJavascriptUMGLibrary:AddBorderBrush(StyleSet, PropertyName, InImageName, InMargin, InColorAndOpacity, InImageType) end


---@class UJavascriptUserObjectListEntry : UUserWidget
---@field Item UObject
UJavascriptUserObjectListEntry = {}



---@class UJavascriptWidget : UUserWidget
---@field JavascriptContext UJavascriptContext
---@field OnInputActionEvent FJavascriptWidgetOnInputActionEvent
---@field OnReleaseActionEvent FJavascriptWidgetOnReleaseActionEvent
---@field OnInputAxisEvent FJavascriptWidgetOnInputAxisEvent
---@field ContentSlot UPanelSlot
UJavascriptWidget = {}

---@param Widget UWidget
function UJavascriptWidget:SetRootWidget(Widget) end
---@return boolean
function UJavascriptWidget:RemoveChild() end
---@param ActionName FName
function UJavascriptWidget:OnReleaseInputActionByName(ActionName) end
---@param AxisName FName
---@param EventType EInputEvent
---@param bConsume boolean
function UJavascriptWidget:OnListenForInputAxis(AxisName, EventType, bConsume) end
---@param ActionName FName
---@param EventType EInputEvent
---@param bConsume boolean
function UJavascriptWidget:OnListenForInputAction(ActionName, EventType, bConsume) end
---@param Axis float
---@param ActionName FName
function UJavascriptWidget:OnInputAxisByName(Axis, ActionName) end
---@param ActionName FName
function UJavascriptWidget:OnInputActionByName(ActionName) end
---@param bReleaseChildren boolean
function UJavascriptWidget:OnDestroy(bReleaseChildren) end
---@param Widget UWidget
---@return boolean
function UJavascriptWidget:HasValidCachedWidget(Widget) end
---@param WidgetOrSlot UVisual
function UJavascriptWidget:CallSynchronizeProperties(WidgetOrSlot) end
---@param Content UWidget
---@return UPanelSlot
function UJavascriptWidget:AddChild(Content) end


---@class UJavascriptWindow : UContentWidget
---@field Type EJavascriptWindowType
---@field Style FWindowStyle
---@field Title FText
---@field bDragAnywhere boolean
---@field AutoCenter EJavascriptAutoCenter
---@field ScreenPosition FVector2D
---@field ClientSize FVector2D
---@field SupportsTransparency EJavascriptWindowTransparency
---@field InitialOpacity float
---@field IsInitiallyMaximized boolean
---@field SizingRule EJavascriptSizingRule
---@field IsPopupWindow boolean
---@field FocusWhenFirstShown boolean
---@field ActivateWhenFirstShown boolean
---@field UseOSWindowBorder boolean
---@field HasCloseButton boolean
---@field SupportsMaximize boolean
---@field SupportsMinimize boolean
---@field CreateTitleBar boolean
---@field SaneWindowPlacement boolean
---@field LayoutBorder FMargin
---@field UserResizeBorder FMargin
---@field OnWindowClosed FJavascriptWindowOnWindowClosed
---@field OnWindowDeactivated FJavascriptWindowOnWindowDeactivated
---@field IsTopmostWindow boolean
UJavascriptWindow = {}

function UJavascriptWindow:ShowWindow() end
---@param InOpacity float
function UJavascriptWindow:SetOpacity(InOpacity) end
---@param NewSize FVector2D
function UJavascriptWindow:Resize(NewSize) end
---@param NewPosition FVector2D
---@param NewSize FVector2D
function UJavascriptWindow:ReshapeWindow(NewPosition, NewSize) end
function UJavascriptWindow:RequestDestroyWindow() end
function UJavascriptWindow:OnWindowWidgetClosed__DelegateSignature() end
function UJavascriptWindow:OnWindowDeactivated__DelegateSignature() end
---@param NewPosition FVector2D
function UJavascriptWindow:MoveWindowTo(NewPosition) end
function UJavascriptWindow:HideWindow() end
function UJavascriptWindow:FlashWindow() end
---@param bEnable boolean
function UJavascriptWindow:EnableWindow(bEnable) end
function UJavascriptWindow:DestroyWindowImmediately() end
function UJavascriptWindow:BringToFront() end


