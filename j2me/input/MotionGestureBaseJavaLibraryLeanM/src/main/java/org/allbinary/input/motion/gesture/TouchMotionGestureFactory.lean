-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchMotionGestureFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TouchMotionGestureFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "TouchMotionGestureFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "TouchMotionGestureFactory" "instance" (<- JR.new "TouchMotionGestureFactory" #[])
        pure ()
    return (<- JR.getStatic "TouchMotionGestureFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_MAX : JV := (JR.asI (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX"))
    JR.setField this "LEFT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 3)), (JV.str "Left Touch")])
    JR.setField this "RIGHT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 4)), (JV.str "Right Touch")])
    JR.setField this "UP" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 5)), (JV.str "Up Touch")])
    JR.setField this "DOWN" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 6)), (JV.str "Down Touch")])
    JR.setField this "PRESSED" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 7)), (JV.str "Screen Press")])
    JR.setField this "RELEASED" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 8)), (JV.str "Released")])
    JR.setField this "DIAGONAL_DOWN_RIGHT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 9)), (JV.str "Diagonal Dn R")])
    JR.setField this "DIAGONAL_DOWN_LEFT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 10)), (JV.str "Diagonal Dn L")])
    JR.setField this "DIAGONAL_UP_RIGHT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 11)), (JV.str "Diagonal Up R")])
    JR.setField this "DIAGONAL_UP_LEFT" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 12)), (JV.str "Diagonal Up L")])
    JR.setField this "SCROLL_UP" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 13)), (JV.str "Scroll Up")])
    JR.setField this "SCROLL_DOWN" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 14)), (JV.str "Scroll Down")])
    JR.setField this "NO_MOTION" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 2)), (JV.str "No Motion")])
    JR.setField this "LAST_MOTION" (<- JR.new "MotionGestureInput" #[(<- JR.sub l_MAX (JV.int 19)), (JV.str "Last Motion")])
    pure this

initialize JR.registerClass {
    name := "TouchMotionGestureFactory",
    javaName := "org.allbinary.input.motion.gesture.TouchMotionGestureFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("LEFT", JV.null), ("RIGHT", JV.null), ("UP", JV.null), ("DOWN", JV.null), ("PRESSED", JV.null), ("RELEASED", JV.null), ("DIAGONAL_DOWN_RIGHT", JV.null), ("DIAGONAL_DOWN_LEFT", JV.null), ("DIAGONAL_UP_RIGHT", JV.null), ("DIAGONAL_UP_LEFT", JV.null), ("SCROLL_UP", JV.null), ("SCROLL_DOWN", JV.null), ("NO_MOTION", JV.null), ("LAST_MOTION", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchMotionGestureFactory


