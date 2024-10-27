---@meta

---@class URigVMMemory_Literal : URigVMMemoryStorage
---@field RigUnit_SetTransform_Item__Const FRigElementKey
---@field RigUnit_SetTransform_Space__Const EBoneGetterSetterMode
---@field RigUnit_SetTransform_bInitial__Const boolean
---@field GetTransform_Item__Const FRigElementKey
---@field RigUnit_SetTransform_Weight__Const float
---@field RigUnit_SetTransform_bPropagateToChildren__Const boolean
---@field ItemExists_Item__Const FRigElementKey
---@field FullbodyIK_Effectors__Const TArray<FFBIKEndEffector>
---@field RigUnit_GetTransform_2_Item__Const FRigElementKey
---@field FullbodyIK_Constraints__Const TArray<FFBIKConstraintOption>
---@field RigUnit_GetTransform_1_Item__Const FRigElementKey
---@field FullbodyIK_SolverProperty__Const FSolverInput
---@field FullbodyIK_MotionProperty__Const FMotionProcessInput
---@field FullbodyIK_DebugOption__Const FFBIKDebugOption
URigVMMemory_Literal = {}



---@class URigVMMemory_Work : URigVMMemoryStorage
---@field ExecuteContext_ FControlRigExecuteContext
---@field GetTransform_Transform FTransform
---@field GetTransform_CachedIndex TArray<FCachedRigElement>
---@field RigUnit_SetTransform_CachedIndex TArray<FCachedRigElement>
---@field MathBoolAnd_Result boolean
---@field ItemExists_Exists boolean
---@field ItemExists_CachedIndex TArray<FCachedRigElement>
---@field ItemExists_1_Exists boolean
---@field ItemExists_1_CachedIndex TArray<FCachedRigElement>
---@field RigUnit_GetTransform_Transform FTransform
---@field RigUnit_GetTransform_CachedIndex TArray<FCachedRigElement>
---@field RigUnit_GetTransform_2_Transform FTransform
---@field RigUnit_GetTransform_2_CachedIndex TArray<FCachedRigElement>
---@field FullbodyIK_Effectors__IO TArray<FFBIKEndEffector>
---@field RigUnit_GetTransform_1_Transform FTransform
---@field RigUnit_GetTransform_1_CachedIndex TArray<FCachedRigElement>
---@field FullbodyIK_Constraints__IO TArray<FFBIKConstraintOption>
---@field FullbodyIK_WorkData TArray<FRigUnit_FullbodyIK_WorkData>
URigVMMemory_Work = {}



---@class URigVMMemory_工作 : URigVMMemoryStorage
---@field ExecuteContext_ FControlRigExecuteContext
---@field GetTransform_Transform FTransform
---@field GetTransform_CachedIndex TArray<FCachedRigElement>
---@field RigUnit_SetTransform_CachedIndex TArray<FCachedRigElement>
---@field MathBoolAnd_Result boolean
---@field ItemExists_Exists boolean
---@field ItemExists_CachedIndex TArray<FCachedRigElement>
---@field ItemExists_1_Exists boolean
---@field ItemExists_1_CachedIndex TArray<FCachedRigElement>
---@field RigUnit_GetTransform_Transform FTransform
---@field RigUnit_GetTransform_CachedIndex TArray<FCachedRigElement>
---@field RigUnit_GetTransform_2_Transform FTransform
---@field RigUnit_GetTransform_2_CachedIndex TArray<FCachedRigElement>
---@field FullbodyIK_Effectors__IO TArray<FFBIKEndEffector>
---@field RigUnit_GetTransform_1_Transform FTransform
---@field RigUnit_GetTransform_1_CachedIndex TArray<FCachedRigElement>
---@field FullbodyIK_Constraints__IO TArray<FFBIKConstraintOption>
---@field FullbodyIK_WorkData TArray<FRigUnit_FullbodyIK_WorkData>
URigVMMemory_工作 = {}



---@class URigVMMemory_文字 : URigVMMemoryStorage
---@field RigUnit_SetTransform_Item__Const FRigElementKey
---@field RigUnit_SetTransform_Space__Const EBoneGetterSetterMode
---@field RigUnit_SetTransform_bInitial__Const boolean
---@field GetTransform_Item__Const FRigElementKey
---@field RigUnit_SetTransform_Weight__Const float
---@field RigUnit_SetTransform_bPropagateToChildren__Const boolean
---@field ItemExists_Item__Const FRigElementKey
---@field FullbodyIK_Effectors__Const TArray<FFBIKEndEffector>
---@field RigUnit_GetTransform_2_Item__Const FRigElementKey
---@field FullbodyIK_Constraints__Const TArray<FFBIKConstraintOption>
---@field RigUnit_GetTransform_1_Item__Const FRigElementKey
---@field FullbodyIK_SolverProperty__Const FSolverInput
---@field FullbodyIK_MotionProperty__Const FMotionProcessInput
---@field FullbodyIK_DebugOption__Const FFBIKDebugOption
URigVMMemory_文字 = {}



---@class URightHandIK_C : UControlRig
---@field HandTarget FVector
URightHandIK_C = {}



