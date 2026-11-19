-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.touch.action
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ReleaseTouchInputToGameKeyEventAction

def jfields (this : JV) : JM JV := do
    JR.setField this "NONE" (<- JR.getField (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[]) "NONE")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ReleaseTouchInputToGameKeyEventAction" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "ReleaseTouchInputToGameKeyEventAction" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "ReleaseTouchInputToGameKeyEventAction" "instance" (<- JR.new "ReleaseTouchInputToGameKeyEventAction" #[])
        pure ()
    return (<- JR.getStatic "ReleaseTouchInputToGameKeyEventAction" "instance")


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GameKeyCompleteMotionGestureInputEvent" this #[(JV.str "Release Action"), (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "RELEASED"), (<- JR.call (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[]) "getInputMapping_0" #[])]
    let _ <- jfields this
    try
        let _ := (<- JR.callInherited this "ReleaseTouchInputToGameKeyEventAction" "setGameKey_1" #[(<- JR.getField this "NONE")])
        let _ := (<- JR.callInherited this "ReleaseTouchInputToGameKeyEventAction" "setGameKeyEvent_1" #[(<- JR.call (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[]) "getInstanceForInput_2" #[this, (<- JR.getField this "NONE")])])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getInherited this "ReleaseTouchInputToGameKeyEventAction" "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "CONSTRUCTOR"), l_e])
            pure ()
        else
            throw jex0
    pure this

initialize JR.registerClass {
    name := "ReleaseTouchInputToGameKeyEventAction",
    javaName := "org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction",
    super := "GameKeyCompleteMotionGestureInputEvent",
    interfaces := #[],
    isInterface := false,
    fields := #[("NONE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("update_0", #[], false, m_update_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ReleaseTouchInputToGameKeyEventAction


