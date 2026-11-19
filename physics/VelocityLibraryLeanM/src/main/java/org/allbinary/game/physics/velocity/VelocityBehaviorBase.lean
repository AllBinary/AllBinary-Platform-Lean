-- Generated Code Do Not Modify
-- package org.allbinary.game.physics.velocity
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VelocityBehaviorBase

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_reduce_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_velocityProperties : JV := (JR.arg jargs 0)
    let mut l_nominator : JV := (JR.asI (JR.arg jargs 1))
    let mut l_denominator : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_reduceX_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_velocityProperties : JV := (JR.arg jargs 0)
    let mut l_nominator : JV := (JR.asI (JR.arg jargs 1))
    let mut l_denominator : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_reduceY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_velocityProperties : JV := (JR.arg jargs 0)
    let mut l_nominator : JV := (JR.asI (JR.arg jargs 1))
    let mut l_denominator : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "VelocityBehaviorBase",
    javaName := "org.allbinary.game.physics.velocity.VelocityBehaviorBase",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("reduce_3", #["BasicVelocityProperties", "int", "int"], false, m_reduce_3), 
        ("reduceX_3", #["BasicVelocityProperties", "int", "int"], false, m_reduceX_3), 
        ("reduceY_3", #["BasicVelocityProperties", "int", "int"], false, m_reduceY_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VelocityBehaviorBase


