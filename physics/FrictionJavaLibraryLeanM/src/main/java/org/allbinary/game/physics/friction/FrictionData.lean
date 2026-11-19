-- Generated Code Do Not Modify
-- package org.allbinary.game.physics.friction
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FrictionData

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getFrictionDenominator_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getStatic "FrictionData" "FRICTION_DENOMINATOR"))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FrictionData",
    javaName := "org.allbinary.game.physics.friction.FrictionData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("FRICTION_DENOMINATOR", (JR.asI (JV.int 100)))],
    methods := #[
        ("getFrictionDenominator_0", #[], true, m_getFrictionDenominator_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FrictionData


