---@enum EDefaultSubstanceTextureSize
EDefaultSubstanceTextureSize = {
    Zero = 0,
    Size_16 = 4,
    Size_32 = 5,
    Size_64 = 6,
    Size_128 = 7,
    Size_256 = 8,
    Size_512 = 9,
    Size_1024 = 10,
    Size_2048 = 11,
    Size_4096 = 12,
    EDefaultSubstanceTextureSize_MAX = 13,
}

---@enum ESubChannelType
ESubChannelType = {
    Channel_Diffuse = 0,
    Channel_Ambient = 1,
    Channel_BaseColor = 2,
    Channel_Metallic = 3,
    Channel_Roughness = 4,
    Channel_Emissive = 5,
    Channel_Normal = 6,
    Channel_Mask = 7,
    Channel_Opacity = 8,
    Channel_Refraction = 9,
    Channel_AmbientOcclusion = 10,
    Channel_Glossiness = 11,
    Channel_Height = 12,
    Channel_Displacement = 13,
    Channel_Reflection = 14,
    Channel_Invalid = 15,
    Channel_MAX = 16,
}

---@enum ESubstanceEngineType
ESubstanceEngineType = {
    SET_CPU = 0,
    SET_GPU = 1,
    SET_MAX = 2,
}

---@enum ESubstanceGenerationMode
ESubstanceGenerationMode = {
    SGM_PlatformDefault = 0,
    SGM_Baked = 1,
    SGM_OnLoadSync = 2,
    SGM_OnLoadSyncAndCache = 3,
    SGM_OnLoadAsync = 4,
    SGM_OnLoadAsyncAndCache = 5,
    SGM_MAX = 6,
}

---@enum ESubstanceInputType
ESubstanceInputType = {
    SIT_Float = 0,
    SIT_Float2 = 1,
    SIT_Float3 = 2,
    SIT_Float4 = 3,
    SIT_Integer = 4,
    SIT_Image = 5,
    SIT_Unused_6 = 6,
    SIT_Unused_7 = 7,
    SIT_Integer2 = 8,
    SIT_Integer3 = 9,
    SIT_Integer4 = 10,
    SIT_MAX = 11,
}

---@enum ESubstanceTextureSize
ESubstanceTextureSize = {
    ERL_16 = 0,
    ERL_32 = 1,
    ERL_64 = 2,
    ERL_128 = 3,
    ERL_256 = 4,
    ERL_512 = 5,
    ERL_1024 = 6,
    ERL_2048 = 7,
    ERL_4096 = 8,
    ERL_8192 = 9,
    ERL_MAX = 10,
}

