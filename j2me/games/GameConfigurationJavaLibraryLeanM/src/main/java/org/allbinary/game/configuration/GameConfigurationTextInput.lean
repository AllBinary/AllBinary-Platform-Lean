-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameConfigurationTextInput

def jfields (this : JV) : JM JV := do
    JR.setField this "label" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "text" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameConfigurationTextInput" "hashtable" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    JR.setStatic "GameConfigurationTextInput" "SIMULATOR_IP" (<- JR.new "GameConfigurationTextInput" #[(JV.str "IP: "), (JV.str "192.168.1.3")])
    JR.setStatic "GameConfigurationTextInput" "SIMULATOR_PORT" (<- JR.new "GameConfigurationTextInput" #[(JV.str "Port: "), (JV.str "8010")])
    pure JV.null


def m_update_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_textField : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (<- JR.call l_textField "getLabel_0" #[])
    let mut l_gameConfigurationTextInput : JV := (<- JR.call (<- JR.getStatic "GameConfigurationTextInput" "hashtable") "get_1" #[l_anyType])
    let _ := (<- JR.call l_gameConfigurationTextInput "setText_1" #[(<- JR.call l_textField "getString_0" #[])])
    pure JV.null


def m_setText_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    JR.setField this "text" l_text
    pure JV.null


def m_getText_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "text")


def m_setLabel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    JR.setField this "label" l_label
    pure JV.null


def m_getLabel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "label")


def m_getHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameConfigurationTextInput" "hashtable")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    let mut l_text : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setText_1" #[l_text])
    let _ := (<- JR.call this "setLabel_1" #[l_label])
    let _ := (<- JR.call (<- JR.getStatic "GameConfigurationTextInput" "hashtable") "put_2" #[(<- JR.call this "getLabel_0" #[]), this])
    pure this

initialize JR.registerClass {
    name := "GameConfigurationTextInput",
    javaName := "org.allbinary.game.configuration.GameConfigurationTextInput",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("label", JV.null), ("text", JV.null)],
    statics := #[("hashtable", JV.null), ("SIMULATOR_IP", JV.null), ("SIMULATOR_PORT", JV.null)],
    methods := #[
        ("update_1", #["TextField"], true, m_update_1), 
        ("setText_1", #["String"], false, m_setText_1), 
        ("getText_0", #[], false, m_getText_0), 
        ("setLabel_1", #["String"], false, m_setLabel_1), 
        ("getLabel_0", #[], false, m_getLabel_0), 
        ("getHashtable_0", #[], true, m_getHashtable_0), 
        ("jinit_2", #["String", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameConfigurationTextInput


