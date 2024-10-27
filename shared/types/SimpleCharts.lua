---@meta

---@class FAreaSeries
---@field Name FString
---@field Data TArray<float>
---@field smooth boolean
---@field DataLabel FSeriesLabel
---@field UseGradientColor boolean
---@field LinearGradient FLinearGradient
FAreaSeries = {}



---@class FBarSeries
---@field Name FString
---@field Data TArray<float>
---@field stack FString
---@field showBackground boolean
---@field BackgroundColor FLinearColor
---@field DataLabel FSeriesLabel
---@field UseGradientColor boolean
---@field LinearGradient FLinearGradient
FBarSeries = {}



---@class FColorStop
---@field Offset float
---@field Color FColor
FColorStop = {}



---@class FData
---@field Name FString
---@field Value TArray<float>
FData = {}



---@class FDoughnutSeries
---@field Name FString
---@field inside_radius float
---@field outside_radius float
---@field label_show boolean
---@field labelLine_show boolean
---@field Data TMap<FString, float>
---@field UseGradientColor boolean
---@field LinearGradient FLinearGradient
FDoughnutSeries = {}



---@class FGaugeData
---@field Name FString
---@field Value float
FGaugeData = {}



---@class FGaugeSeries
---@field Name FString
---@field Min float
---@field Max float
---@field Data TArray<FGaugeData>
FGaugeSeries = {}



---@class FIndicator
---@field Name FString
---@field Max float
FIndicator = {}



---@class FLineBarSeries
---@field Name FString
---@field Data TArray<float>
---@field Type ChartType
---@field DataLabel FSeriesLabel
---@field UseGradientColor boolean
---@field LinearGradient FLinearGradient
FLineBarSeries = {}



---@class FLineSeries
---@field Name FString
---@field Data TArray<float>
---@field smooth boolean
---@field DataLabel FSeriesLabel
---@field UseGradientColor boolean
---@field LinearGradient FLinearGradient
FLineSeries = {}



---@class FLineStyle
---@field show boolean
---@field Color FColor
---@field Width int32
---@field Type AxisLineType
FLineStyle = {}



---@class FLinearGradient
---@field ColorPosition FVector4
---@field colorStops TArray<FColorStop>
FLinearGradient = {}



---@class FPieSeries
---@field Name FString
---@field Radius float
---@field label_show boolean
---@field labelLine_show boolean
---@field RoseType boolean
---@field Data TMap<FString, float>
---@field UseGradientColor boolean
---@field LinearGradient FLinearGradient
FPieSeries = {}



---@class FRadar
---@field Circle boolean
---@field Radius float
---@field Color FColor
---@field BackgroundColor FColor
---@field Indicator TArray<FIndicator>
FRadar = {}



---@class FRadarSeries
---@field Name FString
---@field Data TArray<FData>
---@field UseGradientColor boolean
---@field LinearGradient FLinearGradient
FRadarSeries = {}



---@class FSankeySeries
---@field Data TArray<FString>
---@field links TArray<Flinks>
---@field Left float
---@field DataLabel FSeriesLabel
---@field UseGradientColor boolean
---@field LinearGradient FLinearGradient
FSankeySeries = {}



---@class FScatterSeries
---@field Name FString
---@field Data TArray<FVector2D>
---@field symbolSize float
---@field DataLabel FSeriesLabel
---@field UseGradientColor boolean
---@field LinearGradient FLinearGradient
FScatterSeries = {}



---@class FSeriesLabel
---@field rotate int32
---@field TextColor FColor
---@field FontSize int32
---@field show boolean
---@field position SeriesLabelPosition
FSeriesLabel = {}



---@class FaxisLabel
---@field interval int32
---@field rotate int32
---@field TextColor FColor
---@field FontSize int32
---@field show boolean
---@field Unit FString
FaxisLabel = {}



---@class FfunnelData
---@field Name FString
---@field Value float
FfunnelData = {}



---@class FfunnelSeries
---@field Name FString
---@field Left float
---@field Width float
---@field Min float
---@field Max float
---@field minSize float
---@field maxSize float
---@field gap float
---@field label_show boolean
---@field label_Position position
---@field Data TArray<FfunnelData>
FfunnelSeries = {}



---@class Flinks
---@field Source FString
---@field Target FString
---@field Value float
Flinks = {}



---@class UAreaChart : UChartBase
---@field Series TArray<FAreaSeries>
UAreaChart = {}

---@param SeriesData TArray<FAreaSeries>
function UAreaChart:SetSeries(SeriesData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function UAreaChart:SetLegend(show, position, Orient, Color, FontSize) end


---@class UBarChart : UChartBase
---@field Series TArray<FBarSeries>
UBarChart = {}

---@param SeriesData TArray<FBarSeries>
function UBarChart:SetSeries(SeriesData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function UBarChart:SetLegend(show, position, Orient, Color, FontSize) end


---@class UChartBase : UWidget
---@field useDirtyRect boolean
---@field Theme ChartTheme
---@field AxisStyleWithTheme boolean
---@field title_text FString
---@field title_show boolean
---@field title_position position
---@field title_fontSize int32
---@field title_color FColor
---@field legend_show boolean
---@field legend_position position
---@field legend_orient Orient
---@field legend_color FColor
---@field legend_fontSize int32
---@field AxisData TArray<FString>
---@field IsXAxis boolean
---@field boundaryGap boolean
---@field XaxisLabel FaxisLabel
---@field XaxisLine FLineStyle
---@field XsplitLine FLineStyle
---@field YaxisLabel FaxisLabel
---@field YaxisLine FLineStyle
---@field YsplitLine FLineStyle
---@field tooltip_type TooltipType
---@field tooltip_trigger TriggerType
---@field text_color FColor
---@field tip_backgroundColor FColor
---@field use_custom_color boolean
---@field custom_color TArray<FColor>
UChartBase = {}

function UChartBase:UpdateChart() end
---@param Yaxis_Label FaxisLabel
---@param Yaxis_Line FLineStyle
---@param Ysplit_Line FLineStyle
function UChartBase:SetYAxisStyle(Yaxis_Label, Yaxis_Line, Ysplit_Line) end
---@param Xaxis_Label FaxisLabel
---@param Xaxis_Line FLineStyle
---@param Xsplit_Line FLineStyle
function UChartBase:SetXAxisStyle(Xaxis_Label, Xaxis_Line, Xsplit_Line) end
---@param Trigger TriggerType
---@param ToolTip TooltipType
---@param TextColor FLinearColor
---@param BackgroundColor FLinearColor
function UChartBase:SetTooltipStyle(Trigger, ToolTip, TextColor, BackgroundColor) end
---@param Text FString
---@param show boolean
---@param position position
---@param FontSize int32
---@param Color FLinearColor
function UChartBase:SetTitle(Text, show, position, FontSize, Color) end
---@param ChartTheme ChartTheme
---@param Axis_Style_With_Theme boolean
function UChartBase:SetTheme(ChartTheme, Axis_Style_With_Theme) end
---@param Active boolean
---@param custom_color TArray<FColor>
function UChartBase:SetCustomColor(Active, custom_color) end
---@param XAxis boolean
---@param Axis_Data TArray<FString>
function UChartBase:SetAxis(XAxis, Axis_Data) end
---@param Active boolean
function UChartBase:SetAnim(Active) end


---@class UChartWebBrowser : UWidget
---@field OnUrlChanged FChartWebBrowserOnUrlChanged
---@field OnBeforePopup FChartWebBrowserOnBeforePopup
---@field InitialURL FString
---@field bSupportsTransparency boolean
---@field bSupportIEM boolean
UChartWebBrowser = {}

---@param Text FText
function UChartWebBrowser:OnUrlChanged__DelegateSignature(Text) end
---@param URL FString
---@param Frame FString
function UChartWebBrowser:OnBeforePopup__DelegateSignature(URL, Frame) end
---@param NewURL FString
function UChartWebBrowser:LoadURL(NewURL) end
---@param Contents FString
---@param DummyURL FString
function UChartWebBrowser:LoadString(Contents, DummyURL) end
---@return FString
function UChartWebBrowser:GetUrl() end
---@return FText
function UChartWebBrowser:GetTitleText() end
---@param ScriptText FString
function UChartWebBrowser:ExecuteJavascript(ScriptText) end


---@class UCustomChart : UWidget
---@field useDirtyRect boolean
---@field Theme ChartTheme
---@field Option FString
UCustomChart = {}

---@param ChartTheme ChartTheme
function UCustomChart:SetTheme(ChartTheme) end
---@param InOption FString
---@param OtherCode FString
function UCustomChart:SetOption(InOption, OtherCode) end


---@class UDoughnutChart : UChartBase
---@field Series FDoughnutSeries
UDoughnutChart = {}

---@param SeriesData FDoughnutSeries
function UDoughnutChart:SetSeries(SeriesData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function UDoughnutChart:SetLegend(show, position, Orient, Color, FontSize) end


---@class UFunnelChart : UChartBase
---@field Series FfunnelSeries
UFunnelChart = {}

---@param SeriesData FfunnelSeries
function UFunnelChart:SetSeries(SeriesData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function UFunnelChart:SetLegend(show, position, Orient, Color, FontSize) end


---@class UGaugeChart : UChartBase
---@field Series FGaugeSeries
UGaugeChart = {}

---@param SeriesData FGaugeSeries
function UGaugeChart:SetSeries(SeriesData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function UGaugeChart:SetLegend(show, position, Orient, Color, FontSize) end


---@class ULineBarChart : UChartBase
---@field Series TArray<FLineBarSeries>
ULineBarChart = {}

---@param SeriesData TArray<FLineBarSeries>
function ULineBarChart:SetSeries(SeriesData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function ULineBarChart:SetLegend(show, position, Orient, Color, FontSize) end


---@class ULineChart : UChartBase
---@field Series TArray<FLineSeries>
ULineChart = {}

---@param SeriesData TArray<FLineSeries>
function ULineChart:SetSeries(SeriesData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function ULineChart:SetLegend(show, position, Orient, Color, FontSize) end


---@class UPieChart : UChartBase
---@field Series FPieSeries
UPieChart = {}

---@param SeriesData FPieSeries
function UPieChart:SetSeries(SeriesData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function UPieChart:SetLegend(show, position, Orient, Color, FontSize) end


---@class URadarChart : UChartBase
---@field Series FRadarSeries
---@field Radar FRadar
URadarChart = {}

---@param SeriesData FRadarSeries
function URadarChart:SetSeries(SeriesData) end
---@param RadarData FRadar
function URadarChart:SetRadar(RadarData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function URadarChart:SetLegend(show, position, Orient, Color, FontSize) end


---@class USankeyChart : UChartBase
---@field Series FSankeySeries
USankeyChart = {}

---@param SeriesData FSankeySeries
function USankeyChart:SetSeries(SeriesData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function USankeyChart:SetLegend(show, position, Orient, Color, FontSize) end


---@class UScatterChart : UChartBase
---@field Series TArray<FScatterSeries>
UScatterChart = {}

---@param SeriesData TArray<FScatterSeries>
function UScatterChart:SetSeries(SeriesData) end
---@param show boolean
---@param position position
---@param Orient Orient
---@param Color FLinearColor
---@param FontSize int32
function UScatterChart:SetLegend(show, position, Orient, Color, FontSize) end


