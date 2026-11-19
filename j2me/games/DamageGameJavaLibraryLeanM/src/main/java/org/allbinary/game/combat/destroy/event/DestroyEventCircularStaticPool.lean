-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.destroy.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DestroyEventCircularStaticPool

def jfields (this : JV) : JM JV := do
    JR.setField this "EVENT_POOL" (<- JR.new "AllBinaryEventCircularPool" #[(JV.int 20)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DestroyEventCircularStaticPool" "instance" (<- JR.new "DestroyEventCircularStaticPool" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DestroyEventCircularStaticPool" "instance")


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_combatGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "EVENT_POOL") "initAllBinaryEventCircularPool_1" #[(<- JR.new "DestroyEventFactory" #[l_combatGameCanvas])])
    pure JV.null


def m_getInstanceForLayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_destroyedEvent : JV := (<- JR.call (<- JR.getField this "EVENT_POOL") "getNextInstance_0" #[])
    let _ := (<- JR.call l_destroyedEvent "setLayerInterfaceForCircularStaticPool_1" #[l_layerInterface])
    return l_destroyedEvent


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DestroyEventCircularStaticPool",
    javaName := "org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EVENT_POOL", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_1", #["AllBinaryGameCanvas"], false, m_init_1), 
        ("getInstanceForLayer_1", #["AllBinaryLayer"], false, m_getInstanceForLayer_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DestroyEventCircularStaticPool


