---@enum EJavascriptEncodingOptions
EJavascriptEncodingOptions = {
    AutoDetect = 0,
    ForceAnsi = 1,
    ForceUnicode = 2,
    ForceUTF8 = 3,
    ForceUTF8WithoutBOM = 4,
    EJavascriptEncodingOptions_MAX = 5,
}

---@enum EJavascriptStatDataType
EJavascriptStatDataType = {
    Invalid = 0,
    ST_None = 1,
    ST_int64 = 2,
    ST_double = 3,
    ST_FName = 4,
    ST_Ptr = 5,
    EJavascriptStatDataType_MAX = 6,
}

---@enum EJavascriptStatOperation
EJavascriptStatOperation = {
    Invalid = 0,
    SetLongName = 1,
    AdvanceFrameEventGameThread = 2,
    AdvanceFrameEventRenderThread = 3,
    CycleScopeStart = 4,
    CycleScopeEnd = 5,
    SpecialMessageMarker = 6,
    Set = 7,
    Clear = 8,
    Add = 9,
    Subtract = 10,
    ChildrenStart = 11,
    ChildrenEnd = 12,
    Leaf = 13,
    MaxVal = 14,
    Memory = 15,
    EJavascriptStatOperation_MAX = 16,
}

---@enum ELogVerbosity_JS
ELogVerbosity_JS = {
    NoLogging = 0,
    Fatal = 1,
    Error = 2,
    Warning = 3,
    Display = 4,
    Log = 5,
    Verbose = 6,
    VeryVerbose = 7,
    ELogVerbosity_MAX = 8,
}

