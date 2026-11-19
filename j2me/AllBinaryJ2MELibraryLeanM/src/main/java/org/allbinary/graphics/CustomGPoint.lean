-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CustomGPoint

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CustomGPoint" "NULL_CUSTOM_POINT" (<- JR.new "CustomGPoint" #[(JV.int 0), (JV.int 0), (JV.int 0)])
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    return (<- JR.new "CustomGPoint" #[(<- JR.call l_point "getX_0" #[]), (<- JR.call l_point "getY_0" #[]), (<- JR.call l_point "getZ_0" #[])])


def m_getInstance3_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    return (<- JR.new "CustomGPoint" #[l_x, l_y, (JV.int 3)])


def m_setX_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "cx" (JR.asI l_x)
    pure JV.null


def m_getX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "cx"))


def m_setY_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_y : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "cy" (JR.asI l_y)
    pure JV.null


def m_getY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "cy"))


def m_setZ_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_z : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "cz" (JR.asI l_z)
    pure JV.null


def m_getZ_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "cz"))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "GPoint" this #[l_x, l_y, l_z]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CustomGPoint",
    javaName := "org.allbinary.graphics.CustomGPoint",
    super := "GPoint",
    interfaces := #[],
    isInterface := false,
    fields := #[("cx", (JV.int 0)), ("cy", (JV.int 0)), ("cz", (JV.int 0))],
    statics := #[("NULL_CUSTOM_POINT", JV.null)],
    methods := #[
        ("getInstance_1", #["GPoint"], true, m_getInstance_1), 
        ("getInstance3_2", #["int", "int"], true, m_getInstance3_2), 
        ("setX_1", #["int"], false, m_setX_1), 
        ("getX_0", #[], false, m_getX_0), 
        ("setY_1", #["int"], false, m_setY_1), 
        ("getY_0", #[], false, m_getY_0), 
        ("setZ_1", #["int"], false, m_setZ_1), 
        ("getZ_0", #[], false, m_getZ_0), 
        ("jinit_3", #["int", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CustomGPoint


