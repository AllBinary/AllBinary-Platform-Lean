-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CompleteMotionGestureInputEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "name" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "motionGestureInput" (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "NO_MOTION")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    JR.setField this "name" l_name
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_setMotionGestureInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGestureInput : JV := (JR.arg jargs 0)
    JR.setField this "motionGestureInput" l_motionGestureInput
    pure JV.null


def m_getMotionGestureInput_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "motionGestureInput")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_motionGestureInput : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_motionGestureInput]
    let _ <- jfields this
    let _ := (<- JR.call this "setName_1" #[l_name])
    try
        let _ := (<- JR.call this "setMotionGestureInput_1" #[l_motionGestureInput])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "InputToGameKeyEventAction"), l_e])
            pure ()
        else
            throw jex0
    pure this

initialize JR.registerClass {
    name := "CompleteMotionGestureInputEvent",
    javaName := "org.allbinary.game.input.CompleteMotionGestureInputEvent",
    super := "AllBinaryEventObject",
    interfaces := #["CompleteMotionGestureInputInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("name", JV.null), ("motionGestureInput", JV.null)],
    statics := #[],
    methods := #[
        ("setName_1", #["String"], false, m_setName_1), 
        ("getName_0", #[], false, m_getName_0), 
        ("setMotionGestureInput_1", #["MotionGestureInput"], false, m_setMotionGestureInput_1), 
        ("getMotionGestureInput_0", #[], false, m_getMotionGestureInput_0), 
        ("jinit_2", #["String", "MotionGestureInput"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CompleteMotionGestureInputEvent


