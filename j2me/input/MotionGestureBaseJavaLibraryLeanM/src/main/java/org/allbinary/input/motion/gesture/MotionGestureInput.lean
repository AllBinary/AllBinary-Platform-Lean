-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MotionGestureInput

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    let mut l_name : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Input" this #[l_id, l_name]
    let _ <- jfields this
    let mut l_inputFactory : JV := (<- JR.callStatic "InputFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_inputFactory "add_2" #[(<- JR.callInherited this "MotionGestureInput" "getId_0" #[]), this])
    pure this

initialize JR.registerClass {
    name := "MotionGestureInput",
    javaName := "org.allbinary.input.motion.gesture.MotionGestureInput",
    super := "Input",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_2", #["int", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MotionGestureInput


