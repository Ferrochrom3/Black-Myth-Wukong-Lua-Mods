---@meta

---@class UControlRig_AttackIK_C : UControlRig
---@field AtkIKRoll TArray<double>
---@field AtkIKPitch TArray<double>
---@field RootName FName
---@field SolverRootBoneNameList TArray<FName>
---@field SolverEffectorsBoneNameList TArray<FName>
---@field BoneScaleEnable boolean
---@field BoneScaleName FName
---@field TargetPosition FVector
UControlRig_AttackIK_C = {}



---@class URigVMMemory_Literal : URigVMMemoryStorage
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_Item__Const FRigElementKey
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_Space__Const EBoneGetterSetterMode
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_bInitial__Const boolean
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_Transform__Const FTransform
---@field ConstructRoot_ConstructRoot_RigUnit_GetTransform_Item__Const FRigElementKey
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_Weight__Const float
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_1_Item__Const FRigElementKey
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_1_Space__Const EBoneGetterSetterMode
---@field AttackPlane_AttackPlane_MathQuaternionFromEuler_Euler__Const FVector
---@field AttackPlane_AttackPlane_MathQuaternionFromEuler_RotationOrder__Const EEulerRotationOrder
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_2_Item__Const FRigElementKey
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_1_Item__Const FRigElementKey
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_3_Item__Const FRigElementKey
---@field AttackPlane_AttackPlane_PBIK_Effectors__Const TArray<FPBIKEffector>
---@field AttackPlane_AttackPlane_PBIK_BoneSettings__Const TArray<FPBIKBoneSetting>
---@field AttackPlane_AttackPlane_PBIK_ExcludedBones__Const TArray<FName>
---@field AttackPlane_AttackPlane_PBIK_Settings__Const FPBIKSolverSettings
---@field AttackPlane_AttackPlane_PBIK_Debug__Const FPBIKDebug
---@field PBIK_Effectors__Const TArray<FPBIKEffector>
---@field PBIK_Settings__Const FPBIKSolverSettings
URigVMMemory_Literal = {}



---@class URigVMMemory_Work : URigVMMemoryStorage
---@field ExecuteContext_ FControlRigExecuteContext
---@field ConstructRoot_ConstructRoot_RigUnit_GetTransform_Transform FTransform
---@field ConstructRoot_ConstructRoot_RigUnit_GetTransform_Item__IO FRigElementKey
---@field ConstructRoot_ConstructRoot_RigUnit_GetTransform_CachedIndex TArray<FCachedRigElement>
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_Transform__IO FTransform
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_MathQuaternionFromEuler_Result FQuat
---@field AttackPlane_AttackPlane_ArrayGetAtIndex_3_Element double
---@field ArrayIterator_Index int32
---@field AttackPlane_AttackPlane_ArrayGetAtIndex_3_1_Element double
---@field AttackPlane_AttackPlane_MathQuaternionFromEuler_Euler__IO FVector
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_1_Transform__IO FTransform
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_1_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_1_Transform FTransform
---@field AttackPlane_AttackPlane_ArrayGetAtIndex_Element FName
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_1_Item__IO FRigElementKey
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_1_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_2_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_2_Transform FTransform
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_2_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_3_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_ArrayGetAtIndex_1_Element FName
---@field AttackPlane_AttackPlane_ArrayGetAtIndex_2_Element FName
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_3_Transform FTransform
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_3_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_PBIK_Effectors__IO TArray<FPBIKEffector>
---@field AttackPlane_AttackPlane_PBIK_EffectorSolverIndices TArray<TArray<int32>>
---@field AttackPlane_AttackPlane_PBIK_BoneSettingToSolverBoneIndex TArray<TArray<int32>>
---@field AttackPlane_AttackPlane_PBIK_SolverBoneToElementIndex TArray<TArray<int32>>
---@field AttackPlane_AttackPlane_PBIK_Solver TArray<FPBIKSolver>
---@field AttackPlane_AttackPlane_PBIK_bNeedsInit TArray<boolean>
---@field ArrayIterator_Element FName
---@field ArrayIterator_Count int32
---@field ArrayIterator_Ratio float
---@field ArrayIterator_Continue boolean
---@field PBIK_Effectors__IO TArray<FPBIKEffector>
---@field PBIK_EffectorSolverIndices TArray<TArray<int32>>
---@field PBIK_BoneSettingToSolverBoneIndex TArray<TArray<int32>>
---@field PBIK_SolverBoneToElementIndex TArray<TArray<int32>>
---@field PBIK_Solver TArray<FPBIKSolver>
---@field PBIK_bNeedsInit TArray<boolean>
URigVMMemory_Work = {}



---@class URigVMMemory_工作 : URigVMMemoryStorage
---@field ExecuteContext_ FControlRigExecuteContext
---@field ConstructRoot_ConstructRoot_RigUnit_GetTransform_Transform FTransform
---@field ConstructRoot_ConstructRoot_RigUnit_GetTransform_Item__IO FRigElementKey
---@field ConstructRoot_ConstructRoot_RigUnit_GetTransform_CachedIndex TArray<FCachedRigElement>
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_Transform__IO FTransform
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_MathQuaternionFromEuler_Result FQuat
---@field AttackPlane_AttackPlane_ArrayGetAtIndex_3_Element double
---@field ArrayIterator_Index int32
---@field AttackPlane_AttackPlane_ArrayGetAtIndex_3_1_Element double
---@field AttackPlane_AttackPlane_MathQuaternionFromEuler_Euler__IO FVector
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_1_Transform__IO FTransform
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_1_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_1_Transform FTransform
---@field AttackPlane_AttackPlane_ArrayGetAtIndex_Element FName
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_1_Item__IO FRigElementKey
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_1_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_2_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_2_Transform FTransform
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_2_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_3_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_ArrayGetAtIndex_1_Element FName
---@field AttackPlane_AttackPlane_ArrayGetAtIndex_2_Element FName
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_3_Transform FTransform
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_3_CachedIndex TArray<FCachedRigElement>
---@field AttackPlane_AttackPlane_PBIK_Effectors__IO TArray<FPBIKEffector>
---@field AttackPlane_AttackPlane_PBIK_EffectorSolverIndices TArray<TArray<int32>>
---@field AttackPlane_AttackPlane_PBIK_BoneSettingToSolverBoneIndex TArray<TArray<int32>>
---@field AttackPlane_AttackPlane_PBIK_SolverBoneToElementIndex TArray<TArray<int32>>
---@field AttackPlane_AttackPlane_PBIK_Solver TArray<FPBIKSolver>
---@field AttackPlane_AttackPlane_PBIK_bNeedsInit TArray<boolean>
---@field ArrayIterator_Element FName
---@field ArrayIterator_Count int32
---@field ArrayIterator_Ratio float
---@field ArrayIterator_Continue boolean
---@field PBIK_Effectors__IO TArray<FPBIKEffector>
---@field PBIK_EffectorSolverIndices TArray<TArray<int32>>
---@field PBIK_BoneSettingToSolverBoneIndex TArray<TArray<int32>>
---@field PBIK_SolverBoneToElementIndex TArray<TArray<int32>>
---@field PBIK_Solver TArray<FPBIKSolver>
---@field PBIK_bNeedsInit TArray<boolean>
URigVMMemory_工作 = {}



---@class URigVMMemory_文字 : URigVMMemoryStorage
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_Item__Const FRigElementKey
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_Space__Const EBoneGetterSetterMode
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_bInitial__Const boolean
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_Transform__Const FTransform
---@field ConstructRoot_ConstructRoot_RigUnit_GetTransform_Item__Const FRigElementKey
---@field ConstructRoot_ConstructRoot_RigUnit_SetTransform_Weight__Const float
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_1_Item__Const FRigElementKey
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_1_Space__Const EBoneGetterSetterMode
---@field AttackPlane_AttackPlane_MathQuaternionFromEuler_Euler__Const FVector
---@field AttackPlane_AttackPlane_MathQuaternionFromEuler_RotationOrder__Const EEulerRotationOrder
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_2_Item__Const FRigElementKey
---@field AttackPlane_AttackPlane_RigUnit_GetTransform_1_Item__Const FRigElementKey
---@field AttackPlane_AttackPlane_RigUnit_SetTransform_3_Item__Const FRigElementKey
---@field AttackPlane_AttackPlane_PBIK_Effectors__Const TArray<FPBIKEffector>
---@field AttackPlane_AttackPlane_PBIK_BoneSettings__Const TArray<FPBIKBoneSetting>
---@field AttackPlane_AttackPlane_PBIK_ExcludedBones__Const TArray<FName>
---@field AttackPlane_AttackPlane_PBIK_Settings__Const FPBIKSolverSettings
---@field AttackPlane_AttackPlane_PBIK_Debug__Const FPBIKDebug
---@field PBIK_Effectors__Const TArray<FPBIKEffector>
---@field PBIK_Settings__Const FPBIKSolverSettings
URigVMMemory_文字 = {}



