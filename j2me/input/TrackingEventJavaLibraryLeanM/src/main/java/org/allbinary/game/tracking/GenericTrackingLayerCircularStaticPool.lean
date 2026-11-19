-- Generated Code Do Not Modify
-- package org.allbinary.game.tracking
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GenericTrackingLayerCircularStaticPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GenericTrackingLayerCircularStaticPool" "SINGLETON" (<- JR.new "GenericTrackingLayerCircularStaticPool" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GenericTrackingLayerCircularStaticPool" "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AllBinaryLayerCircularPool" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GenericTrackingLayerCircularStaticPool",
    javaName := "org.allbinary.game.tracking.GenericTrackingLayerCircularStaticPool",
    super := "AllBinaryLayerCircularPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GenericTrackingLayerCircularStaticPool


