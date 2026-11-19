-- Generated Code Do Not Modify
-- package org.allbinary.game.health
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullHealthListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullHealthListener" "NULL_HEALTH_LISTENER" (<- JR.new "NullHealthListener" #[])
    pure JV.null


def m_onHealthChange_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullHealthListener",
    javaName := "org.allbinary.game.health.NullHealthListener",
    super := "Object",
    interfaces := #["HealthListenerInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_HEALTH_LISTENER", JV.null)],
    methods := #[
        ("onHealthChange_0", #[], false, m_onHealthChange_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullHealthListener


