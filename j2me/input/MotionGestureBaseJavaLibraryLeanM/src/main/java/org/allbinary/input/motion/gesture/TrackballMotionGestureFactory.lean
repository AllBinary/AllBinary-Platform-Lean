-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TrackballMotionGestureFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TrackballMotionGestureFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "TrackballMotionGestureFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "TrackballMotionGestureFactory" "instance" (<- JR.new "TrackballMotionGestureFactory" #[])
        pure ()
    return (<- JR.getStatic "TrackballMotionGestureFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_MAX : JV := (JR.asI (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX"))
    JR.setField this "LEFT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 26)), (JV.str "L Trackball")])
    JR.setField this "RIGHT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 27)), (JV.str "R Trackball")])
    JR.setField this "UP" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 28)), (JV.str "Up Trackball")])
    JR.setField this "DOWN" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 29)), (JV.str "D Trackball")])
    pure this

initialize JR.registerClass {
    name := "TrackballMotionGestureFactory",
    javaName := "org.allbinary.input.motion.gesture.TrackballMotionGestureFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("LEFT", JV.null), ("RIGHT", JV.null), ("UP", JV.null), ("DOWN", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TrackballMotionGestureFactory


