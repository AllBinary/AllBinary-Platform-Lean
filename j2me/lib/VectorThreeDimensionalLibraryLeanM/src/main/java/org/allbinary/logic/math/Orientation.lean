-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Orientation

def jfields (this : JV) : JM JV := do
    JR.setField this "yaw" (<- JR.new "BasicDecimal" #[(JV.int 0)])
    JR.setField this "pitch" (<- JR.new "BasicDecimal" #[(JV.int 0)])
    JR.setField this "roll" (<- JR.new "BasicDecimal" #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Orientation" "NONE" (<- JR.new "Orientation" #[(JV.int 0), (JV.int 0), (JV.int 0)])
    JR.setStatic "Orientation" "SINGLETON" (<- JR.new "Orientation" #[(JV.int 0), (JV.int 0), (JV.int 0)])
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_yaw : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pitch : JV := (JR.asI (JR.arg jargs 1))
    let mut l_roll : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField (<- JR.getStatic "Orientation" "SINGLETON") "yaw") "setint_1" #[l_yaw])
    let _ := (<- JR.call (<- JR.getField (<- JR.getStatic "Orientation" "SINGLETON") "pitch") "setint_1" #[l_pitch])
    let _ := (<- JR.call (<- JR.getField (<- JR.getStatic "Orientation" "SINGLETON") "roll") "setint_1" #[l_roll])
    return (<- JR.getStatic "Orientation" "SINGLETON")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Y: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "yaw") "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " P: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "pitch") "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " R: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "roll") "toString_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_yaw : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pitch : JV := (JR.asI (JR.arg jargs 1))
    let mut l_roll : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getField this "yaw") "setint_1" #[l_yaw])
    let _ := (<- JR.call (<- JR.getField this "pitch") "setint_1" #[l_pitch])
    let _ := (<- JR.call (<- JR.getField this "roll") "setint_1" #[l_roll])
    pure this

initialize JR.registerClass {
    name := "Orientation",
    javaName := "org.allbinary.logic.math.Orientation",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("yaw", JV.null), ("pitch", JV.null), ("roll", JV.null)],
    statics := #[("NONE", JV.null), ("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_3", #["int", "int", "int"], true, m_getInstance_3), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_3", #["int", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Orientation


