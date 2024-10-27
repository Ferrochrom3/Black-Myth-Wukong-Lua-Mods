---@meta

---@class ULeftHandIK_C : UControlRig
---@field HandTarget FVector
ULeftHandIK_C = {}



---@class URigVMMemory_Literal : URigVMMemoryStorage
---@field RigUnit_SetTransform_2_Item__Const FRigElementKey
---@field RigUnit_SetTransform_2_Space__Const EBoneGetterSetterMode
---@field RigUnit_SetTransform_2_bInitial__Const boolean
---@field RigUnit_SetTransform_2_Transform__Const FTransform
---@field RigUnit_SetTransform_2_Weight__Const float
---@field RigUnit_SetTransform_2_bPropagateToChildren__Const boolean
---@field ItemExists_1_Item__Const FRigElementKey
---@field PBIK_Root__Const FName
---@field PBIK_Effectors__Const TArray<FPBIKEffector>
---@field PBIK_BoneSettings__Const TArray<FPBIKBoneSetting>
---@field PBIK_ExcludedBones__Const TArray<FName>
---@field PBIK_Settings__Const FPBIKSolverSettings
---@field PBIK_Debug__Const FPBIKDebug
URigVMMemory_Literal = {}



---@class URigVMMemory_Work : URigVMMemoryStorage
---@field ExecuteContext_ FControlRigExecuteContext
---@field RigUnit_SetTransform_2_Transform__IO FTransform
---@field RigUnit_SetTransform_2_CachedIndex TArray<FCachedRigElement>
---@field ItemExists_1_Exists boolean
---@field ItemExists_1_CachedIndex TArray<FCachedRigElement>
---@field RigUnit_GetTransform_1_Transform FTransform
---@field RigUnit_GetTransform_1_CachedIndex TArray<FCachedRigElement>
---@field RigUnit_GetTransform_Transform FTransform
---@field RigUnit_GetTransform_CachedIndex TArray<FCachedRigElement>
---@field PBIK_Effectors__IO TArray<FPBIKEffector>
---@field PBIK_EffectorSolverIndices TArray<TArray<int32>>
---@field PBIK_BoneSettingToSolverBoneIndex TArray<TArray<int32>>
---@field PBIK_SolverBoneToElementIndex TArray<TArray<int32>>
---@field PBIK_Solver TArray<FPBIKSolver>
---@field PBIK_bNeedsInit TArray<boolean>
URigVMMemory_Work = {}



---@class URigVMMemory_工作 : URigVMMemoryStorage
---@field ExecuteContext_ FControlRigExecuteContext
---@field RigUnit_SetTransform_2_Transform__IO FTransform
---@field RigUnit_SetTransform_2_CachedIndex TArray<FCachedRigElement>
---@field ItemExists_1_Exists boolean
---@field ItemExists_1_CachedIndex TArray<FCachedRigElement>
---@field RigUnit_GetTransform_1_Transform FTransform
---@field RigUnit_GetTransform_1_CachedIndex TArray<FCachedRigElement>
---@field RigUnit_GetTransform_Transform FTransform
---@field RigUnit_GetTransform_CachedIndex TArray<FCachedRigElement>
---@field PBIK_Effectors__IO TArray<FPBIKEffector>
---@field PBIK_EffectorSolverIndices TArray<TArray<int32>>
---@field PBIK_BoneSettingToSolverBoneIndex TArray<TArray<int32>>
---@field PBIK_SolverBoneToElementIndex TArray<TArray<int32>>
---@field PBIK_Solver TArray<FPBIKSolver>
---@field PBIK_bNeedsInit TArray<boolean>
URigVMMemory_工作 = {}



---@class URigVMMemory_文字 : URigVMMemoryStorage
---@field RigUnit_SetTransform_2_Item__Const FRigElementKey
---@field RigUnit_SetTransform_2_Space__Const EBoneGetterSetterMode
---@field RigUnit_SetTransform_2_bInitial__Const boolean
---@field RigUnit_SetTransform_2_Transform__Const FTransform
---@field RigUnit_SetTransform_2_Weight__Const float
---@field RigUnit_SetTransform_2_bPropagateToChildren__Const boolean
---@field ItemExists_1_Item__Const FRigElementKey
---@field PBIK_Root__Const FName
---@field PBIK_Effectors__Const TArray<FPBIKEffector>
---@field PBIK_BoneSettings__Const TArray<FPBIKBoneSetting>
---@field PBIK_ExcludedBones__Const TArray<FName>
---@field PBIK_Settings__Const FPBIKSolverSettings
---@field PBIK_Debug__Const FPBIKDebug
URigVMMemory_文字 = {}



