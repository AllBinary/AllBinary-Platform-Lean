-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GPoint

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    return (<- JR.new "GPoint" #[(<- JR.call l_point "getX_0" #[]), (<- JR.call l_point "getY_0" #[]), (<- JR.call l_point "getZ_0" #[])])


def m_getX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "x"))


def m_getY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "y"))


def m_getZ_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "z"))


def m_getRawX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "x"))


def m_getRawY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "y"))


def m_getRawZ_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "z"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "GPoint" "toStringStatic_3" #[(<- JR.call this "getX_0" #[]), (<- JR.call this "getY_0" #[]), (<- JR.call this "getZ_0" #[])])


def m_toStringStatic_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_positionStrings : JV := (<- JR.callStatic "PositionStrings" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "GPoint" "POINT_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "X_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_x])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "Y_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_y])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "Z_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_z])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "x" (JR.asI l_x)
    JR.setField this "y" (JR.asI l_y)
    JR.setField this "z" (JR.asI l_z)
    pure this

initialize JR.registerClass {
    name := "GPoint",
    javaName := "org.allbinary.graphics.GPoint",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("x", (JV.int 0)), ("y", (JV.int 0)), ("z", (JV.int 0))],
    statics := #[("POINT_LABEL", (JV.str "Point: "))],
    methods := #[
        ("getInstance_1", #["GPoint"], true, m_getInstance_1), 
        ("getX_0", #[], false, m_getX_0), 
        ("getY_0", #[], false, m_getY_0), 
        ("getZ_0", #[], false, m_getZ_0), 
        ("getRawX_0", #[], false, m_getRawX_0), 
        ("getRawY_0", #[], false, m_getRawY_0), 
        ("getRawZ_0", #[], false, m_getRawZ_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("toStringStatic_3", #["int", "int", "int"], true, m_toStringStatic_3), 
        ("jinit_3", #["int", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GPoint


