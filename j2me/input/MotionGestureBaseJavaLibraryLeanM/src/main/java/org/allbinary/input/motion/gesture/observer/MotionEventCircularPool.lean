-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture.observer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MotionEventCircularPool

def jfields (this : JV) : JM JV := do
    JR.setField this "MIN" (JR.asI (<- JR.call (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "LAST_MOTION") "getId_0" #[]))
    JR.setField this "eventPool" (<- JR.new "AllBinaryEventCircularPool" #[(<- JR.sub ((<- JR.sub (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX") (JV.int 1))) (<- JR.getField this "MIN"))])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createPool_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.new "MotionEventCircularPool" #[l_id])


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGestureInput : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "eventPool") "getInstance_1" #[(<- JR.sub (<- JR.call l_motionGestureInput "getId_0" #[]) (<- JR.getField this "MIN"))])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getField this "eventPool") "initAllBinaryEventCircularPool_1" #[(<- JR.new "MotionEventFactory" #[(<- JR.getField this "eventPool"), l_id])])
    pure this

initialize JR.registerClass {
    name := "MotionEventCircularPool",
    javaName := "org.allbinary.input.motion.gesture.observer.MotionEventCircularPool",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("MIN", (JV.int 0)), ("eventPool", JV.null)],
    statics := #[],
    methods := #[
        ("createPool_1", #["int"], true, m_createPool_1), 
        ("getInstance_1", #["MotionGestureInput"], false, m_getInstance_1), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MotionEventCircularPool


