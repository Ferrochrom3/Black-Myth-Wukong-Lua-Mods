---@meta

---@class UCtrlRig_SlowIK_L_WeaponR_C : UControlRig
---@field CachedHandTransform FTransform
---@field Slow_Alpha double
UCtrlRig_SlowIK_L_WeaponR_C = {}



---@class URigVMMemory_Literal : URigVMMemoryStorage
---@field PBIK_Root__Const FName
---@field PBIK_Effectors__Const TArray<FPBIKEffector>
---@field GetTransform_Item__Const FRigElementKey
---@field GetTransform_Space__Const EBoneGetterSetterMode
---@field GetTransform_bInitial__Const boolean
---@field PBIK_BoneSettings__Const TArray<FPBIKBoneSetting>
---@field PBIK_ExcludedBones__Const TArray<FName>
---@field PBIK_Settings__Const FPBIKSolverSettings
---@field PBIK_Debug__Const FPBIKDebug
---@field SetTransform_Item__Const FRigElementKey
---@field GetTransform_1_1_Item__Const FRigElementKey
---@field GetTransform_2_1_Item__Const FRigElementKey
---@field SetTransform_Weight__Const float
---@field SetTransform_bPropagateToChildren__Const boolean
URigVMMemory_Literal = {}



---@class URigVMMemory_Work : URigVMMemoryStorage
---@field ExecuteContext_ FControlRigExecuteContext
---@field GetTransform_Transform FTransform
---@field GetTransform_CachedIndex TArray<FCachedRigElement>
---@field PBIK_Effectors__IO TArray<FPBIKEffector>
---@field PBIK_EffectorSolverIndices TArray<TArray<int32>>
---@field PBIK_BoneSettingToSolverBoneIndex TArray<TArray<int32>>
---@field PBIK_SolverBoneToElementIndex TArray<TArray<int32>>
---@field PBIK_Solver TArray<FPBIKSolver>
---@field PBIK_bNeedsInit TArray<boolean>
---@field MathTransformMakeAbsolute_Global FTransform
---@field MathTransformMakeRelative_Local FTransform
---@field GetTransform_2_Transform FTransform
---@field GetTransform_2_CachedIndex TArray<FCachedRigElement>
---@field GetTransform_1_1_Transform FTransform
---@field GetTransform_1_1_CachedIndex TArray<FCachedRigElement>
---@field GetTransform_2_1_Transform FTransform
---@field GetTransform_2_1_CachedIndex TArray<FCachedRigElement>
---@field SetTransform_CachedIndex TArray<FCachedRigElement>
URigVMMemory_Work = {}



---@class URigVMMemory_工作 : URigVMMemoryStorage
---@field ExecuteContext_ FControlRigExecuteContext
---@field GetTransform_Transform FTransform
---@field GetTransform_CachedIndex TArray<FCachedRigElement>
---@field PBIK_Effectors__IO TArray<FPBIKEffector>
---@field PBIK_EffectorSolverIndices TArray<TArray<int32>>
---@field PBIK_BoneSettingToSolverBoneIndex TArray<TArray<int32>>
---@field PBIK_SolverBoneToElementIndex TArray<TArray<int32>>
---@field PBIK_Solver TArray<FPBIKSolver>
---@field PBIK_bNeedsInit TArray<boolean>
---@field MathTransformMakeAbsolute_Global FTransform
---@field MathTransformMakeRelative_Local FTransform
---@field GetTransform_2_Transform FTransform
---@field GetTransform_2_CachedIndex TArray<FCachedRigElement>
---@field GetTransform_1_1_Transform FTransform
---@field GetTransform_1_1_CachedIndex TArray<FCachedRigElement>
---@field GetTransform_2_1_Transform FTransform
---@field GetTransform_2_1_CachedIndex TArray<FCachedRigElement>
---@field SetTransform_CachedIndex TArray<FCachedRigElement>
URigVMMemory_工作 = {}



---@class URigVMMemory_文字 : URigVMMemoryStorage
---@field PBIK_Root__Const FName
---@field PBIK_Effectors__Const TArray<FPBIKEffector>
---@field GetTransform_Item__Const FRigElementKey
---@field GetTransform_Space__Const EBoneGetterSetterMode
---@field GetTransform_bInitial__Const boolean
---@field PBIK_BoneSettings__Const TArray<FPBIKBoneSetting>
---@field PBIK_ExcludedBones__Const TArray<FName>
---@field PBIK_Settings__Const FPBIKSolverSettings
---@field PBIK_Debug__Const FPBIKDebug
---@field SetTransform_Item__Const FRigElementKey
---@field GetTransform_1_1_Item__Const FRigElementKey
---@field GetTransform_2_1_Item__Const FRigElementKey
---@field SetTransform_Weight__Const float
---@field SetTransform_bPropagateToChildren__Const boolean
URigVMMemory_文字 = {}



