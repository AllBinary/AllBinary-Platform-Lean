-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.security.licensing
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LockedResources

def jfields (this : JV) : JM JV := do
    JR.setField this "LOCKED_DEMO_GAME_FEATURE_RESOURCE" (JV.str "/locked_demo_game_feature_64_by_64.png")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LockedResources" "instance" (<- JR.new "LockedResources" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LockedResources" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LockedResources",
    javaName := "org.allbinary.logic.system.security.licensing.LockedResources",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("LOCKED_DEMO_GAME_FEATURE_RESOURCE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LockedResources


