-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MirrorMotionGestureEventUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MirrorMotionGestureEventUtil" "instance" (<- JR.new "MirrorMotionGestureEventUtil" #[])
    pure JV.null


def m_mirrorVerticle_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGestureEvent : JV := (JR.arg jargs 0)
    let mut l_halfWidth : JV := (JR.asI (JR.arg jargs 1))
    let mut l_event : JV := (<- JR.call (<- JR.getField this "motionEventCircularPool") "getInstance_1" #[(<- JR.call l_motionGestureEvent "getMotionGesture_0" #[])])
    let mut l_previousNewX : JV := (JR.asI (<- JR.call this "getNewX_2" #[(<- JR.call (<- JR.call l_motionGestureEvent "getPreviousPoint_0" #[]) "getX_0" #[]), l_halfWidth]))
    let mut l_currentNewX : JV := (JR.asI (<- JR.call this "getNewX_2" #[(<- JR.call (<- JR.call l_motionGestureEvent "getCurrentPoint_0" #[]) "getX_0" #[]), l_halfWidth]))
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    let mut l_mirroredPreviousPoint : JV := (<- JR.call l_pointFactory "createXY_2" #[l_previousNewX, (<- JR.call (<- JR.call l_motionGestureEvent "getPreviousPoint_0" #[]) "getY_0" #[])])
    let mut l_mirroredCurrentPoint : JV := (<- JR.call l_pointFactory "createXY_2" #[l_currentNewX, (<- JR.call (<- JR.call l_motionGestureEvent "getCurrentPoint_0" #[]) "getY_0" #[])])
    let _ := (<- JR.call l_event "setPreviousPoint_1" #[l_mirroredPreviousPoint])
    let _ := (<- JR.call l_event "setCurrentPoint_1" #[l_mirroredCurrentPoint])
    return l_event


def m_getNewX_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_halfWidth : JV := (JR.asI (JR.arg jargs 1))
    let mut l_newX : JV := (JR.asI (JV.int 0))
    if JR.truth (<- JR.gt l_x l_halfWidth) then
        l_newX := (JR.asI (<- JR.sub l_halfWidth ((<- JR.sub l_x l_halfWidth))))
        pure ()
    else
        l_newX := (JR.asI (<- JR.add l_halfWidth ((<- JR.sub l_halfWidth l_x))))
        pure ()
    return (JR.asI l_newX)


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MirrorMotionGestureEventUtil" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "motionEventCircularPool" (<- JR.callStatic "MotionEventCircularPool" "createPool_1" #[(<- JR.getStatic "Integer" "MAX_VALUE")])
    pure this

initialize JR.registerClass {
    name := "MirrorMotionGestureEventUtil",
    javaName := "org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("motionEventCircularPool", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("mirrorVerticle_2", #["MotionGestureEvent", "int"], false, m_mirrorVerticle_2), 
        ("getNewX_2", #["int", "int"], false, m_getNewX_2), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MirrorMotionGestureEventUtil


