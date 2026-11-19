-- Generated Code Do Not Modify
-- package org.allbinary.physics.movement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Movement

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_speedBasicDecimal : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    pure JV.null


def m_stop_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Movement",
    javaName := "org.allbinary.physics.movement.Movement",
    super := "Object",
    interfaces := #["MovementInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("init_3", #["BasicDecimal", "int", "int"], false, m_init_3), 
        ("process_1", #["AllBinaryGameLayer"], false, m_process_1), 
        ("stop_0", #[], false, m_stop_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Movement


