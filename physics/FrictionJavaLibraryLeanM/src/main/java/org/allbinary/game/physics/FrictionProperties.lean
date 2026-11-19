-- Generated Code Do Not Modify
-- package org.allbinary.game.physics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FrictionProperties

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_friction_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_velocityProperties : JV := (JR.arg jargs 0)
    let mut l_nominator : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getStatic "DragVelocityBehavior" "instance") "reduce_3" #[l_velocityProperties, l_nominator, (<- JR.callStatic "FrictionData" "getFrictionDenominator_0" #[])])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FrictionProperties",
    javaName := "org.allbinary.game.physics.FrictionProperties",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("friction_2", #["VelocityProperties", "int"], false, m_friction_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FrictionProperties


