-- Generated Code Do Not Modify
-- package org.allbinary.game.tracking
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TrackingEventCircularStaticPool

def jfields (this : JV) : JM JV := do
    JR.setField this "EVENT_POOL" (<- JR.new "AllBinaryEventCircularPool" #[(JV.int 20)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TrackingEventCircularStaticPool" "instance" (<- JR.new "TrackingEventCircularStaticPool" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TrackingEventCircularStaticPool" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "EVENT_POOL") "initAllBinaryEventCircularPool_1" #[(<- JR.new "TrackingEventFactory" #[])])
    pure JV.null


def m_getNextInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_trackingEvent : JV := (<- JR.call (<- JR.getField this "EVENT_POOL") "getNextInstance_0" #[])
    let _ := (<- JR.call l_trackingEvent "setLayerInterfaceForCircularStaticPool_1" #[l_layerInterface])
    return l_trackingEvent


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TrackingEventCircularStaticPool",
    javaName := "org.allbinary.game.tracking.TrackingEventCircularStaticPool",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EVENT_POOL", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("getNextInstance_1", #["AllBinaryLayer"], false, m_getNextInstance_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TrackingEventCircularStaticPool


