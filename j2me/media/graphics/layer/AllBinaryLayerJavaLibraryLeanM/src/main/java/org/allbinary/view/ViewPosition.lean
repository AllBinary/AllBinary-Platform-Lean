-- Generated Code Do Not Modify
-- package org.allbinary.view
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ViewPosition

def jfields (this : JV) : JM JV := do
    JR.setField this "allbinaryLayer" (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstanceD_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "ViewPosition" #[(JV.int 0), (JV.int 0), (JV.int 0)])


def m_getX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "allbinaryLayer") "getXP_0" #[]))


def m_getY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "allbinaryLayer") "getYP_0" #[]))


def m_getZ_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "allbinaryLayer") "getZP_0" #[]))


def m_getX2_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.add (<- JR.call this "getX_0" #[]) (<- JR.call (<- JR.getField this "allbinaryLayer") "getWidth_0" #[])))


def m_getY2_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.add (<- JR.call this "getY_0" #[]) (<- JR.call (<- JR.getField this "allbinaryLayer") "getHeight_0" #[])))


def m_getZ2_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JR.toI ((<- JR.add (JR.toJ (<- JR.call this "getZ_0" #[])) (<- JR.call (<- JR.getField this "allbinaryLayer") "getDepth_0" #[])))))


def m_setAllbinaryLayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayer : JV := (JR.arg jargs 0)
    JR.setField this "allbinaryLayer" l_allbinaryLayer
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "ViewPositionBase" this #[l_x, l_y, l_z]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ViewPosition",
    javaName := "org.allbinary.view.ViewPosition",
    super := "ViewPositionBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("allbinaryLayer", JV.null)],
    statics := #[],
    methods := #[
        ("getInstanceD_0", #[], true, m_getInstanceD_0), 
        ("getX_0", #[], false, m_getX_0), 
        ("getY_0", #[], false, m_getY_0), 
        ("getZ_0", #[], false, m_getZ_0), 
        ("getX2_0", #[], false, m_getX2_0), 
        ("getY2_0", #[], false, m_getY2_0), 
        ("getZ2_0", #[], false, m_getZ2_0), 
        ("setAllbinaryLayer_1", #["Any"], false, m_setAllbinaryLayer_1), 
        ("jinit_3", #["int", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ViewPosition


