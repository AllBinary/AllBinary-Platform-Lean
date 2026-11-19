-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gyro.action
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DownOrientationInputToGameKeyEventAction

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DownOrientationInputToGameKeyEventAction" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "DownOrientationInputToGameKeyEventAction" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "DownOrientationInputToGameKeyEventAction" "instance" (<- JR.new "DownOrientationInputToGameKeyEventAction" #[])
        pure ()
    return (<- JR.getStatic "DownOrientationInputToGameKeyEventAction" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GameKeyCompleteMotionGestureInputEvent" this #[(JV.str "Down Action"), (<- JR.getField (<- JR.callStatic "OrientationMotionGestureFactory" "getInstance_0" #[]) "DOWN"), (<- JR.call (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[]) "getInputMapping_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DownOrientationInputToGameKeyEventAction",
    javaName := "org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction",
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

end jclass_DownOrientationInputToGameKeyEventAction


