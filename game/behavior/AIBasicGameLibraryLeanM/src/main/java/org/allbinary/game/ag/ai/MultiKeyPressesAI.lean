-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MultiKeyPressesAI

def jfields (this : JV) : JM JV := do
    JR.setField this "toggleTimeHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 600)])
    JR.setField this "gameTickTimeDelayHelper" (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInput : JV := (<- JR.callInherited this "MultiKeyPressesAI" "getGameInput_0" #[])
    let mut l_keys : JV := (<- JR.getInherited this "MultiKeyPressesAI" "keys")
    let mut l_size : JV := (JR.asI (<- JR.alen l_keys))
    if JR.truth (<- JR.callInherited this "MultiKeyPressesAI" "isOn_0" #[]) then
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                let mut l_key : JV := (JR.asI (<- JR.call (<- JR.aget l_keys l_index) "intValue_0" #[]))
                if JR.truth (<- JR.ne l_key (JV.int (-1))) then
                    let _ := (<- JR.call l_gameInput "add_1" #[(<- JR.call (<- JR.getInherited this "MultiKeyPressesAI" "gameKeyEventFactory") "getInstanceForKey_2" #[this, l_key])])
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    else
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                let mut l_key : JV := (JR.asI (<- JR.call (<- JR.aget l_keys l_index) "intValue_0" #[]))
                if JR.truth (<- JR.ne l_key (JV.int (-1))) then
                    let _ := (<- JR.call l_gameInput "addForRemoval_1" #[(<- JR.call (<- JR.getInherited this "MultiKeyPressesAI" "gameKeyEventFactory") "getInstanceForKey_2" #[this, l_key])])
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_toggle_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.getField this "toggleTimeHelper") "isTime_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]) then
        let _ := (<- JR.callSuper "KeyPressesAI" this "toggle_0" #[])
        let _ := (<- JR.call this "update_0" #[])
        pure ()
    pure JV.null


def m_disable_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.getField this "toggleTimeHelper") "isTime_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]) then
        let _ := (<- JR.callSuper "KeyPressesAI" this "disable_0" #[])
        let _ := (<- JR.call this "update_0" #[])
        pure ()
    pure JV.null


def m_enable_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.getField this "toggleTimeHelper") "isTime_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]) then
        let _ := (<- JR.callSuper "KeyPressesAI" this "enable_0" #[])
        let _ := (<- JR.call this "update_0" #[])
        pure ()
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "KeyPressesAI" this #[l_hashtable, l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    let _ := (<- JR.call this "update_0" #[])
    pure this

initialize JR.registerClass {
    name := "MultiKeyPressesAI",
    javaName := "org.allbinary.game.ag.ai.MultiKeyPressesAI",
    super := "KeyPressesAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("toggleTimeHelper", JV.null), ("gameTickTimeDelayHelper", JV.null)],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("update_0", #[], false, m_update_0), 
        ("toggle_0", #[], false, m_toggle_0), 
        ("disable_0", #[], false, m_disable_0), 
        ("enable_0", #[], false, m_enable_0), 
        ("jinit_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MultiKeyPressesAI


