-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture.observer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MotionEventFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputFactory : JV := (<- JR.callStatic "InputFactory" "getInstance_0" #[])
    let jtemp2 : JV := (<- JR.getStatic "MotionEventFactory" "index")
    JR.setStatic "MotionEventFactory" "index" (JR.inc jtemp2)
    let mut l_input : JV := (<- JR.call l_inputFactory "getInstanceById_1" #[jtemp2])
    if JR.truth (<- JR.eq l_input (<- JR.getField l_inputFactory "NO_INPUT")) then
        return (<- JR.new "MotionGestureEvent" #[(<- JR.getField this "source"), (<- JR.getField this "id"), (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "NO_MOTION")])
    else
        return (<- JR.new "MotionGestureEvent" #[(<- JR.getField this "source"), (<- JR.getField this "id"), l_input])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_source : JV := (JR.arg jargs 0)
    let mut l_id : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "source" l_source
    JR.setField this "id" (JR.asI l_id)
    JR.setStatic "MotionEventFactory" "index" (JR.asI (<- JR.call (<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "LAST_MOTION") "getId_0" #[]))
    pure this

initialize JR.registerClass {
    name := "MotionEventFactory",
    javaName := "org.allbinary.input.motion.gesture.observer.MotionEventFactory",
    super := "Object",
    interfaces := #["AllBinaryEventObjectFactoryInterface"],
    isInterface := false,
    fields := #[("source", JV.null), ("id", (JV.int 0))],
    statics := #[("index", (JR.asI (JV.int 0)))],
    methods := #[
        ("getInstance_0", #[], false, m_getInstance_0), 
        ("jinit_2", #["Any", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MotionEventFactory


