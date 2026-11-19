-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_KeyPressesAI

def jfields (this : JV) : JM JV := do
    JR.setField this "on" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.getField this "on") then
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index (<- JR.alen (<- JR.getField this "keys")))) then break
                let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.call (<- JR.aget (<- JR.getField this "keys") l_index) "intValue_0" #[])])
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_toggle_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call this "isOn_0" #[]) then
        let _ := (<- JR.call this "setOn_1" #[(JV.bool false)])
        pure ()
    else
        let _ := (<- JR.call this "setOn_1" #[(JV.bool true)])
        pure ()
    pure JV.null


def m_disable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setOn_1" #[(JV.bool false)])
    pure JV.null


def m_enable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setOn_1" #[(JV.bool true)])
    pure JV.null


def m_setOn_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_on : JV := (JR.arg jargs 0)
    JR.setField this "on" l_on
    pure JV.null


def m_isOn_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "on")


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "keys" (<- JR.newArray "L" 1 #[(<- JR.call l_hashtable "size_0" #[])])
    let mut l_objectArray : JV := (<- JR.call (<- JR.callStatic "HashtableUtil" "getInstance_0" #[]) "getKeysAsArray_1" #[l_hashtable])
    let mut l_size : JV := (JR.asI (<- JR.alen l_objectArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset (<- JR.getField this "keys") l_index (<- JR.call l_hashtable "get_1" #[(<- JR.aget l_objectArray l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure this

initialize JR.registerClass {
    name := "KeyPressesAI",
    javaName := "org.allbinary.game.ag.ai.KeyPressesAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("on", (JV.bool false)), ("keys", JV.null)],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("toggle_0", #[], false, m_toggle_0), 
        ("disable_0", #[], false, m_disable_0), 
        ("enable_0", #[], false, m_enable_0), 
        ("setOn_1", #["boolean"], false, m_setOn_1), 
        ("isOn_0", #[], false, m_isOn_0), 
        ("jinit_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_KeyPressesAI


