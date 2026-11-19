-- Generated Code Do Not Modify
-- package org.allbinary.view
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ViewPositionBase

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ViewPositionBase" "NULL_VIEW_POSITION" (<- JR.new "ViewPositionBase" #[(JV.int 0), (JV.int 0), (JV.int 0)])
    pure JV.null


def m_getX2_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callInherited this "ViewPositionBase" "getX_0" #[]))


def m_getY2_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callInherited this "ViewPositionBase" "getY_0" #[]))


def m_getZ2_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callInherited this "ViewPositionBase" "getZ_0" #[]))


def m_setAllbinaryLayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayer : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "GPoint" this #[l_x, l_y, l_z]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ViewPositionBase",
    javaName := "org.allbinary.view.ViewPositionBase",
    super := "GPoint",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_VIEW_POSITION", JV.null)],
    methods := #[
        ("getX2_0", #[], false, m_getX2_0), 
        ("getY2_0", #[], false, m_getY2_0), 
        ("getZ2_0", #[], false, m_getZ2_0), 
        ("setAllbinaryLayer_1", #["Any"], false, m_setAllbinaryLayer_1), 
        ("jinit_3", #["int", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ViewPositionBase


