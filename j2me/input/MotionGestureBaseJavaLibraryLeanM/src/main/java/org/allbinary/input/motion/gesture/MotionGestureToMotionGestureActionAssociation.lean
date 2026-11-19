-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MotionGestureToMotionGestureActionAssociation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getMotionGesture_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "list")


def m_setMotionGestures_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    JR.setField this "list" l_list
    pure JV.null


def m_getCommandAction_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "motionGestureAction")


def m_setMotionGestureAction_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandAction : JV := (JR.arg jargs 0)
    JR.setField this "motionGestureAction" l_commandAction
    pure JV.null


def m_isMotionGestureArrayEquals_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aList : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (<- JR.call l_aList "size_0" #[]))
    if JR.truth (<- JR.ne (<- JR.call (<- JR.getField this "list") "size_0" #[]) l_size) then
        return (JV.bool false)
    if true then
        let mut l_i : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_i (JV.int 0))) then break
            if JR.truth (<- JR.ne (<- JR.aget (<- JR.getField l_aList "objectArray") l_i) (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_i)) then
                return (JV.bool false)
            l_i := (JR.dec l_i)
            pure ()
        pure ()
    return (JV.bool true)


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_commandAction : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "list" l_list
    JR.setField this "motionGestureAction" l_commandAction
    pure this

initialize JR.registerClass {
    name := "MotionGestureToMotionGestureActionAssociation",
    javaName := "org.allbinary.input.motion.gesture.MotionGestureToMotionGestureActionAssociation",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null), ("motionGestureAction", JV.null)],
    statics := #[],
    methods := #[
        ("getMotionGesture_0", #[], false, m_getMotionGesture_0), 
        ("setMotionGestures_1", #["BasicArrayList"], false, m_setMotionGestures_1), 
        ("getCommandAction_0", #[], false, m_getCommandAction_0), 
        ("setMotionGestureAction_1", #["CompleteMotionGestureInputEvent"], false, m_setMotionGestureAction_1), 
        ("isMotionGestureArrayEquals_1", #["BasicArrayList"], false, m_isMotionGestureArrayEquals_1), 
        ("jinit_2", #["BasicArrayList", "CompleteMotionGestureInputEvent"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MotionGestureToMotionGestureActionAssociation


