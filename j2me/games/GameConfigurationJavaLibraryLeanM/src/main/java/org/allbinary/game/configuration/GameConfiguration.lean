-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameConfiguration

def jfields (this : JV) : JM JV := do
    JR.setField this "name" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "defaultValue" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 0)])
    JR.setField this "value" (<- JR.getStatic "GameConfiguration" "MIN_VALUE")
    JR.setField this "minValue" (<- JR.getField this "defaultValue")
    JR.setField this "maxValue" (<- JR.getField this "defaultValue")
    JR.setField this "modifiable" (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "TRUE")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameConfiguration" "MIN_VALUE" (<- JR.new "Integer" #[(<- JR.getStatic "Integer" "MIN_VALUE")])
    pure JV.null


def m_setValue_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.ne (<- JR.getField this "value") l_value) then
        let mut l_oldValue : JV := (<- JR.getField this "value")
        JR.setField this "value" l_value
        let _ := (<- JR.call (<- JR.callStatic "GameFeatureEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.new "GameFeatureEvent" #[this, (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "name")]) "append_1" #[(JV.str " value: from: ")]) "appendint_1" #[(JR.toI (<- JR.call l_oldValue "intValue_0" #[]))]) "append_1" #[(JV.str " to ")]) "appendint_1" #[(JR.toI (<- JR.call (<- JR.getField this "value") "intValue_0" #[]))]) "toString_0" #[])])])
        pure ()
    pure JV.null


def m_getValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "value")


def m_setMaxValue_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxValue : JV := (JR.arg jargs 0)
    JR.setField this "maxValue" l_maxValue
    pure JV.null


def m_getMaxValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "maxValue")


def m_setMinValue_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_minValue : JV := (JR.arg jargs 0)
    JR.setField this "minValue" l_minValue
    pure JV.null


def m_getMinValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "minValue")


def m_setName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    JR.setField this "name" l_name
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_setDefaultValue_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_defaultValue : JV := (JR.arg jargs 0)
    JR.setField this "defaultValue" l_defaultValue
    pure JV.null


def m_getDefaultValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "defaultValue")


def m_setDefault_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setValue_1" #[(<- JR.call this "getDefaultValue_0" #[])])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Name: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "name")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Min: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call this "getMinValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Max: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call this "getMaxValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Value: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call this "getValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Default: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(JR.toI (<- JR.call (<- JR.call this "getDefaultValue_0" #[]) "intValue_0" #[]))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Modifiable: ")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call (<- JR.call this "isModifiable_0" #[]) "booleanValue_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_setModifiable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_modifiable : JV := (JR.arg jargs 0)
    JR.setField this "modifiable" l_modifiable
    pure JV.null


def m_isModifiable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "modifiable")


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_defaultValue : JV := (JR.arg jargs 1)
    let mut l_minValue : JV := (JR.arg jargs 2)
    let mut l_maxValue : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setName_1" #[l_name])
    let _ := (<- JR.call this "setDefaultValue_1" #[l_defaultValue])
    JR.setField this "value" (<- JR.call this "getDefaultValue_0" #[])
    let _ := (<- JR.call this "setMinValue_1" #[l_minValue])
    let _ := (<- JR.call this "setMaxValue_1" #[l_maxValue])
    let _ := (<- JR.call (<- JR.call (<- JR.callStatic "GameConfigurationSingleton" "getInstance_0" #[]) "getHashtable_0" #[]) "put_2" #[(<- JR.call this "getName_0" #[]), this])
    pure this

initialize JR.registerClass {
    name := "GameConfiguration",
    javaName := "org.allbinary.game.configuration.GameConfiguration",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null), ("defaultValue", JV.null), ("value", JV.null), ("minValue", JV.null), ("maxValue", JV.null), ("modifiable", JV.null)],
    statics := #[("MIN_VALUE", JV.null)],
    methods := #[
        ("setValue_1", #["Integer"], false, m_setValue_1), 
        ("getValue_0", #[], false, m_getValue_0), 
        ("setMaxValue_1", #["Integer"], false, m_setMaxValue_1), 
        ("getMaxValue_0", #[], false, m_getMaxValue_0), 
        ("setMinValue_1", #["Integer"], false, m_setMinValue_1), 
        ("getMinValue_0", #[], false, m_getMinValue_0), 
        ("setName_1", #["String"], false, m_setName_1), 
        ("getName_0", #[], false, m_getName_0), 
        ("setDefaultValue_1", #["Integer"], false, m_setDefaultValue_1), 
        ("getDefaultValue_0", #[], false, m_getDefaultValue_0), 
        ("setDefault_0", #[], false, m_setDefault_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("setModifiable_1", #["Boolean"], false, m_setModifiable_1), 
        ("isModifiable_0", #[], false, m_isModifiable_0), 
        ("jinit_4", #["String", "Integer", "Integer", "Integer"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameConfiguration


