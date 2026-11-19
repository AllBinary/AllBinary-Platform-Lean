-- Generated Code Do Not Modify
-- package org.allbinary.graphics.color
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicColor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_intValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "value"))


def m_toInt_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "value"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "BasicColor: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Alpha: ")])
    let _ := (<- JR.call l_stringBuffer "appendshort_1" #[(<- JR.getField this "alpha")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Red: ")])
    let _ := (<- JR.call l_stringBuffer "appendshort_1" #[(<- JR.getField this "red")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Green: ")])
    let _ := (<- JR.call l_stringBuffer "appendshort_1" #[(<- JR.getField this "green")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Blue: ")])
    let _ := (<- JR.call l_stringBuffer "appendshort_1" #[(<- JR.getField this "blue")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Value: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "value")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_getRedComponent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asF (<- JR.getField this "redComponent"))


def m_getGreenComponent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asF (<- JR.getField this "greenComponent"))


def m_getBlueComponent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asF (<- JR.getField this "blueComponent"))


def m_getAlphaComponent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asF (<- JR.getField this "alphaComponent"))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alphaValue : JV := (JR.asI (JR.arg jargs 0))
    let mut l_value : JV := (JR.asI (JR.arg jargs 1))
    let mut l_name : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    let mut l_tempValue : JV := (JR.asI (JV.int 0))
    let mut l_basicColorUtil : JV := (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[])
    if JR.truth (<- JR.getField l_basicColorUtil "isAlpha") then
        if JR.truth (<- JR.getField l_basicColorUtil "ffOpaque") then
            l_tempValue := (JR.asI (<- JR.bor l_alphaValue l_value))
            pure ()
        else
            l_tempValue := (JR.asI (<- JR.bor (JV.int (JR.wrapI 0x00000000)) l_value))
            pure ()
        pure ()
    else
        l_tempValue := (JR.asI l_value)
        pure ()
    let mut l_alphaInt : JV := (JR.asI ((<- JR.band ((<- JR.shr l_tempValue (JV.int 24))) (JV.int 255))))
    JR.setField this "alpha" (JR.asS (JR.toS l_alphaInt))
    JR.setField this "alphaComponent" (JR.asF (<- JR.div ((JR.toF l_alphaInt)) (JV.float 255.0)))
    let mut l_redInt : JV := (JR.asI ((<- JR.band ((<- JR.shr l_tempValue (JV.int 16))) (JV.int 255))))
    JR.setField this "red" (JR.asS (JR.toS l_redInt))
    JR.setField this "redComponent" (JR.asF (<- JR.div ((JR.toF l_redInt)) (JV.float 255.0)))
    let mut l_greenInt : JV := (JR.asI ((<- JR.band ((<- JR.shr l_tempValue (JV.int 8))) (JV.int 255))))
    JR.setField this "green" (JR.asS (JR.toS l_greenInt))
    JR.setField this "greenComponent" (JR.asF (<- JR.div ((JR.toF l_greenInt)) (JV.float 255.0)))
    let mut l_blueInt : JV := (JR.asI ((<- JR.band (l_tempValue) (JV.int 255))))
    JR.setField this "blue" (JR.asS (JR.toS l_blueInt))
    JR.setField this "blueComponent" (JR.asF (<- JR.div ((JR.toF l_blueInt)) (JV.float 255.0)))
    JR.setField this "value" (JR.asI l_tempValue)
    pure this

initialize JR.registerClass {
    name := "BasicColor",
    javaName := "org.allbinary.graphics.color.BasicColor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null), ("value", (JV.int 0)), ("redComponent", (JV.float 0.0)), ("greenComponent", (JV.float 0.0)), ("blueComponent", (JV.float 0.0)), ("alphaComponent", (JV.float 0.0)), ("red", (JV.short 0)), ("green", (JV.short 0)), ("blue", (JV.short 0)), ("alpha", (JV.short 0))],
    statics := #[],
    methods := #[
        ("intValue_0", #[], false, m_intValue_0), 
        ("toInt_0", #[], false, m_toInt_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("getRedComponent_0", #[], false, m_getRedComponent_0), 
        ("getGreenComponent_0", #[], false, m_getGreenComponent_0), 
        ("getBlueComponent_0", #[], false, m_getBlueComponent_0), 
        ("getAlphaComponent_0", #[], false, m_getAlphaComponent_0), 
        ("jinit_3", #["int", "int", "String"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicColor


