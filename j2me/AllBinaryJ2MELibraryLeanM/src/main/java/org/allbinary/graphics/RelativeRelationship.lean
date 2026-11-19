-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RelativeRelationship

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "RelativeRelationship" "NULL_RELATIVE_RELATIONSHIP" (<- JR.new "RelativeRelationship" #[(<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO"), (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])])
    pure JV.null


def m_getX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "x"))


def m_getY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "y"))


def m_getZ_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "z"))


def m_getTypesAllowedList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "typesAllowedList")


def m_setTypesAllowedList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_typesAllowedList : JV := (JR.arg jargs 0)
    JR.setField this "typesAllowedList" l_typesAllowedList
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    let mut l_typesAllowedList : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "x" (JR.asI (<- JR.call l_point "getX_0" #[]))
    JR.setField this "y" (JR.asI (<- JR.call l_point "getY_0" #[]))
    JR.setField this "z" (JR.asI (<- JR.call l_point "getZ_0" #[]))
    JR.setField this "typesAllowedList" l_typesAllowedList
    pure this

initialize JR.registerClass {
    name := "RelativeRelationship",
    javaName := "org.allbinary.graphics.RelativeRelationship",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("typesAllowedList", JV.null), ("x", (JV.int 0)), ("y", (JV.int 0)), ("z", (JV.int 0))],
    statics := #[("NULL_RELATIVE_RELATIONSHIP", JV.null)],
    methods := #[
        ("getX_0", #[], false, m_getX_0), 
        ("getY_0", #[], false, m_getY_0), 
        ("getZ_0", #[], false, m_getZ_0), 
        ("getTypesAllowedList_0", #[], false, m_getTypesAllowedList_0), 
        ("setTypesAllowedList_1", #["BasicArrayList"], false, m_setTypesAllowedList_1), 
        ("jinit_2", #["GPoint", "BasicArrayList"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RelativeRelationship


