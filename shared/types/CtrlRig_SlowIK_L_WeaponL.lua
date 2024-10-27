---@meta

---@class UCtrlRig_SlowIK_L_WeaponL_C : UControlRig
---@field CachedHandTransform FTransform
---@field Slow_Alpha double
UCtrlRig_SlowIK_L_WeaponL_C = {}



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
URigVMMemory_文字 = {}



