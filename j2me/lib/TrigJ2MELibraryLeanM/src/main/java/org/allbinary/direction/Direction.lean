-- Generated Code Do Not Modify
-- package org.allbinary.direction
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Direction

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Direction" "directionArray" (<- JR.newArray "L" 1 #[(JV.int 13)])
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_direction : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getStatic "Direction" "directionArray") l_direction)


def m_getValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "value"))


def m_getFrameFactor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "frameFactor"))


def m_getOtherName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "otherName")


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Direction: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Or: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getOtherName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Value: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "value")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_otherName : JV := (JR.arg jargs 1)
    let mut l_value : JV := (JR.asI (JR.arg jargs 2))
    let mut l_frameFactor : JV := (JR.asI (JR.arg jargs 3))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    JR.setField this "otherName" l_otherName
    JR.setField this "value" (JR.asI l_value)
    JR.setField this "frameFactor" (JR.asI l_frameFactor)
    JR.aset (<- JR.getStatic "Direction" "directionArray") l_value this
    pure this

initialize JR.registerClass {
    name := "Direction",
    javaName := "org.allbinary.direction.Direction",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null), ("otherName", JV.null), ("value", (JV.int 0)), ("frameFactor", (JV.int 0))],
    statics := #[("directionArray", JV.null)],
    methods := #[
        ("getInstance_1", #["int"], true, m_getInstance_1), 
        ("getValue_0", #[], false, m_getValue_0), 
        ("getFrameFactor_0", #[], false, m_getFrameFactor_0), 
        ("getOtherName_0", #[], false, m_getOtherName_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_4", #["String", "String", "int", "int"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Direction


