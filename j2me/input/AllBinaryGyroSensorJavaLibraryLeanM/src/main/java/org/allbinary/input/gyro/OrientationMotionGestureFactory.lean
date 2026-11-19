-- Generated Code Do Not Modify
-- package org.allbinary.input.gyro
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OrientationMotionGestureFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OrientationMotionGestureFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "OrientationMotionGestureFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "OrientationMotionGestureFactory" "instance" (<- JR.new "OrientationMotionGestureFactory" #[])
        pure ()
    return (<- JR.getStatic "OrientationMotionGestureFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_MAX : JV := (JR.asI (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX"))
    JR.setField this "LEFT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 20)), (JV.str "Left Orient")])
    JR.setField this "RIGHT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 21)), (JV.str "Right Orient")])
    JR.setField this "UP" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 22)), (JV.str "Up Orient")])
    JR.setField this "DOWN" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 23)), (JV.str "Down Orient")])
    JR.setField this "ROLL_LEFT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 24)), (JV.str "Roll Left")])
    JR.setField this "ROLL_RIGHT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 25)), (JV.str "Roll Right")])
    pure this

initialize JR.registerClass {
    name := "OrientationMotionGestureFactory",
    javaName := "org.allbinary.input.gyro.OrientationMotionGestureFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("LEFT", JV.null), ("RIGHT", JV.null), ("UP", JV.null), ("DOWN", JV.null), ("ROLL_LEFT", JV.null), ("ROLL_RIGHT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OrientationMotionGestureFactory


