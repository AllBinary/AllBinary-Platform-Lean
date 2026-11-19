-- Generated Code Do Not Modify
-- package org.allbinary.game.physics.acceleration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicAccelerationProperties

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setReverse_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_reverse : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "reverse" (JR.asI l_reverse)
    pure JV.null


def m_getReverse_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "reverse"))


def m_setForward_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_forward : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "forward" (JR.asI l_forward)
    pure JV.null


def m_getForward_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "forward"))


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_forward : JV := (JR.asI (JR.arg jargs 0))
    let mut l_reverse : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setForward_1" #[l_forward])
    let _ := (<- JR.call this "setReverse_1" #[l_reverse])
    pure this

initialize JR.registerClass {
    name := "BasicAccelerationProperties",
    javaName := "org.allbinary.game.physics.acceleration.BasicAccelerationProperties",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("forward", (JV.int 0)), ("reverse", (JV.int 0))],
    statics := #[],
    methods := #[
        ("setReverse_1", #["int"], false, m_setReverse_1), 
        ("getReverse_0", #[], false, m_getReverse_0), 
        ("setForward_1", #["int"], false, m_setForward_1), 
        ("getForward_0", #[], false, m_getForward_0), 
        ("jinit_2", #["int", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicAccelerationProperties


