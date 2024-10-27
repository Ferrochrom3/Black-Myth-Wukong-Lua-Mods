---@meta

---@class UFootFBIK_C : UControlRig
---@field IKEffectorRightFoot FVector
---@field IKJointRightFoot FVector
---@field IKEffectorLeftFoot FVector
---@field IKJointLeftFoot FVector
---@field IKRightFootAlpha double
---@field IKLeftFootAlpha double
UFootFBIK_C = {}



---@class URigVMMemory_Literal : URigVMMemoryStorage
---@field FullbodyIK_Root__Const FRigElementKey
---@field FullbodyIK_Effectors__Const TArray<FFBIKEndEffector>
---@field FullbodyIK_Constraints__Const TArray<FFBIKConstraintOption>
---@field FullbodyIK_SolverProperty__Const FSolverInput
---@field FullbodyIK_MotionProperty__Const FMotionProcessInput
---@field FullbodyIK_bPropagateToChildren__Const boolean
---@field FullbodyIK_DebugOption__Const FFBIKDebugOption
---@field FullbodyIK_1_Root__Const FRigElementKey
---@field FullbodyIK_1_Effectors__Const TArray<FFBIKEndEffector>
---@field FullbodyIK_1_Constraints__Const TArray<FFBIKConstraintOption>
URigVMMemory_Literal = {}



---@class URigVMMemory_Work : URigVMMemoryStorage
---@field ExecuteContext_ FControlRigExecuteContext
---@field FullbodyIK_Effectors__IO TArray<FFBIKEndEffector>
---@field FullbodyIK_Constraints__IO TArray<FFBIKConstraintOption>
---@field FullbodyIK_WorkData TArray<FRigUnit_FullbodyIK_WorkData>
---@field FullbodyIK_1_Effectors__IO TArray<FFBIKEndEffector>
---@field FullbodyIK_1_Constraints__IO TArray<FFBIKConstraintOption>
---@field FullbodyIK_1_WorkData TArray<FRigUnit_FullbodyIK_WorkData>
URigVMMemory_Work = {}



---@class URigVMMemory_工作 : URigVMMemoryStorage
---@field ExecuteContext_ FControlRigExecuteContext
---@field FullbodyIK_Effectors__IO TArray<FFBIKEndEffector>
---@field FullbodyIK_Constraints__IO TArray<FFBIKConstraintOption>
---@field FullbodyIK_WorkData TArray<FRigUnit_FullbodyIK_WorkData>
---@field FullbodyIK_1_Effectors__IO TArray<FFBIKEndEffector>
---@field FullbodyIK_1_Constraints__IO TArray<FFBIKConstraintOption>
---@field FullbodyIK_1_WorkData TArray<FRigUnit_FullbodyIK_WorkData>
URigVMMemory_工作 = {}



---@class URigVMMemory_文字 : URigVMMemoryStorage
---@field FullbodyIK_Root__Const FRigElementKey
---@field FullbodyIK_Effectors__Const TArray<FFBIKEndEffector>
---@field FullbodyIK_Constraints__Const TArray<FFBIKConstraintOption>
---@field FullbodyIK_SolverProperty__Const FSolverInput
---@field FullbodyIK_MotionProperty__Const FMotionProcessInput
---@field FullbodyIK_bPropagateToChildren__Const boolean
---@field FullbodyIK_DebugOption__Const FFBIKDebugOption
---@field FullbodyIK_1_Root__Const FRigElementKey
---@field FullbodyIK_1_Effectors__Const TArray<FFBIKEndEffector>
---@field FullbodyIK_1_Constraints__Const TArray<FFBIKConstraintOption>
URigVMMemory_文字 = {}



