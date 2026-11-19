-- Generated Code Do Not Modify
-- package org.allbinary.view
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StaticViewPosition

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callInherited this "StaticViewPosition" "getRawX_0" #[]))


def m_getY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callInherited this "StaticViewPosition" "getRawY_0" #[]))


def m_getZ_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callInherited this "StaticViewPosition" "getRawZ_0" #[]))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "ViewPosition" this #[l_x, l_y, l_z]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "StaticViewPosition",
    javaName := "org.allbinary.view.StaticViewPosition",
    super := "ViewPosition",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getX_0", #[], false, m_getX_0), 
        ("getY_0", #[], false, m_getY_0), 
        ("getZ_0", #[], false, m_getZ_0), 
        ("jinit_3", #["int", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StaticViewPosition


