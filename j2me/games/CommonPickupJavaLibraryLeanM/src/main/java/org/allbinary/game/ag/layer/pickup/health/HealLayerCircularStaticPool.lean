-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.pickup.health
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HealLayerCircularStaticPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sourceLayerInterface : JV := (JR.arg jargs 0)
    let mut l_healLayer : JV := (<- JR.callInherited this "HealLayerCircularStaticPool" "getNextInstance_0" #[])
    let mut l_healthInterfaceCompositeInterface : JV := l_sourceLayerInterface
    let mut l_healthInterface : JV := (<- JR.call l_healthInterfaceCompositeInterface "getHealthInterface_0" #[])
    let _ := (<- JR.call l_healLayer "visit_1" #[l_healthInterface])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_total : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "AllBinaryLayerCircularPool" this #[]
    let _ <- jfields this
    let _ := (<- JR.callSuper "AllBinaryLayerCircularPool" this "initAllBinaryLayerCircularPool_2" #[l_allbinaryLayerFactoryInterface, l_total])
    pure this

initialize JR.registerClass {
    name := "HealLayerCircularStaticPool",
    javaName := "org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool",
    super := "AllBinaryLayerCircularPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("visit_1", #["AllBinaryLayer"], false, m_visit_1), 
        ("jinit_2", #["AllBinaryLayerFactoryInterface", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HealLayerCircularStaticPool


