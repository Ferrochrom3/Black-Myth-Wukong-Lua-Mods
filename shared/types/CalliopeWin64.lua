---@meta

---@class UCalliopeMoviePipelineSetting : UMoviePipelineSetting
UCalliopeMoviePipelineSetting = {}

---@param InPipeline UMoviePipeline
function UCalliopeMoviePipelineSetting:TeardownForPipelineCS(InPipeline) end
---@param InPipeline UMoviePipeline
function UCalliopeMoviePipelineSetting:SetupForPipelineCS(InPipeline) end
---@param InPipeline UMoviePipeline
---@param TagActors TMap<FName, AActor>
function UCalliopeMoviePipelineSetting:SequenceBindActorsByTag(InPipeline, TagActors) end
---@return boolean
function UCalliopeMoviePipelineSetting:IgnoreTransientFiltersCS() end
---@param InPipeline UMoviePipeline
---@param OutBindingTags TSet<FName>
---@return int32
function UCalliopeMoviePipelineSetting:GetSequenceBindingTags(InPipeline, OutBindingTags) end
---@param InPipeline UMoviePipeline
function UCalliopeMoviePipelineSetting:AfterLevelSequenceActorInitializedCS(InPipeline) end


