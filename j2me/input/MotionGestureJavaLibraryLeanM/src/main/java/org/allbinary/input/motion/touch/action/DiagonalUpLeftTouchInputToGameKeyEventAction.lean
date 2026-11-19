-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.touch.action
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DiagonalUpLeftTouchInputToGameKeyEventAction

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DiagonalUpLeftTouchInputToGameKeyEventAction" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "DiagonalUpLeftTouchInputToGameKeyEventAction" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "DiagonalUpLeftTouchInputToGameKeyEventAction" "instance" (<- JR.new "DiagonalUpLeftTouchInputToGameKeyEventAction" #[])
        pure ()
    return (<- JR.getStatic "DiagonalUpLeftTouchInputToGameKeyEventAction" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GameKeyCompleteMotionGestureInputEvent" this #[(JV.str "Diagonal Up Left Action"), (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "DIAGONAL_UP_LEFT"), (<- JR.call (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[]) "getInputMapping_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DiagonalUpLeftTouchInputToGameKeyEventAction",
    javaName := "org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction",
    super := "GameKeyCompleteMotionGestureInputEvent",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DiagonalUpLeftTouchInputToGameKeyEventAction


