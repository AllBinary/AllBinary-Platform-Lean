-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicMenuInputProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "motionGestureEventList" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "canvas" (<- JR.getStatic "NullCanvas" "NULL_CANVAS")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGestureEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "motionGestureEventList") "add_1" #[l_motionGestureEvent])
    pure JV.null


def m_onScrolledMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGestureEvent : JV := (JR.arg jargs 0)
    pure JV.null


def m_setCanvas_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    JR.setField this "canvas" l_canvas
    pure JV.null


def m_getCanvas_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "canvas")


def m_processInputList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int (-1)))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEventList : JV := (JR.arg jargs 0)
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_gameCanvas : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "PlayerGameInput" this #[l_gameKeyEventList, (<- JR.new "BasicArrayListD" #[]), l_playerInputId]
    let _ <- jfields this
    JR.setField this "canvas" l_gameCanvas
    pure this

initialize JR.registerClass {
    name := "BasicMenuInputProcessor",
    javaName := "org.allbinary.game.displayable.canvas.BasicMenuInputProcessor",
    super := "PlayerGameInput",
    interfaces := #["BaseMotionGestureEventListener"],
    isInterface := false,
    fields := #[("motionGestureEventList", JV.null), ("canvas", JV.null)],
    statics := #[],
    methods := #[
        ("onMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onMotionGestureEvent_1), 
        ("onScrolledMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onScrolledMotionGestureEvent_1), 
        ("setCanvas_1", #["MyCanvas"], false, m_setCanvas_1), 
        ("getCanvas_0", #[], false, m_getCanvas_0), 
        ("processInputList_0", #[], false, m_processInputList_0), 
        ("jinit_3", #["BasicArrayList", "int", "Canvas"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicMenuInputProcessor


