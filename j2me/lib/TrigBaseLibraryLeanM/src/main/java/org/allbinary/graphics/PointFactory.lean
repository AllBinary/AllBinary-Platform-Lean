-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PointFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "ZERO_ZERO" (<- JR.call this "createXYZ_3" #[(JV.int 0), (JV.int 0), (JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PointFactory" "instance" (<- JR.new "PointFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PointFactory" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_createXY_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    return (<- JR.new "GPoint" #[l_x, l_y, (JV.int 0)])


def m_createXYZ_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    return (<- JR.new "GPoint" #[l_x, l_y, l_z])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PointFactory",
    javaName := "org.allbinary.graphics.PointFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("ZERO_ZERO", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("createXY_2", #["int", "int"], false, m_createXY_2), 
        ("createXYZ_3", #["int", "int", "int"], false, m_createXYZ_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PointFactory


