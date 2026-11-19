-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseChangedGameFeatureListener

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "gameFeatureUtil" (<- JR.callStatic "GameFeatureUtil" "getInstance_0" #[])
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "changed" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "NOT_IMPLEMENTED"), this])
    pure JV.null


def m_onGameFeatureChange_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeatureEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "gameFeatureUtil") "GAME_FEATURE_CHANGED")]) "append_1" #[(<- JR.call l_gameFeatureEvent "getWhatChanged_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "gameFeatureUtil") "ON_GAME_FEATURE_CHANGE")])
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.call l_gameFeatureEvent "getGameOption_0" #[])])
    let _ := (<- JR.call this "setChanged_1" #[(JV.bool true)])
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_gameFeature])
    pure JV.null


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "remove_1" #[l_gameFeature])
    pure JV.null


def m_setChanged_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initialized : JV := (JR.arg jargs 0)
    JR.setField this "changed" l_initialized
    if JR.truth (JR.not (<- JR.call this "isChanged_0" #[])) then
        let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
        pure ()
    pure JV.null


def m_isChangedFeature_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    let mut l_isChanged : JV := (<- JR.call (<- JR.getField this "list") "contains_1" #[l_gameFeature])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "GameFeature: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_gameFeature])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " isFeature: ")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[l_gameFeature])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " isChanged: ")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[l_isChanged])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (JV.str "isChanged")])
    return l_isChanged


def m_isChanged_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "changed")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BaseChangedGameFeatureListener",
    javaName := "org.allbinary.game.configuration.event.BaseChangedGameFeatureListener",
    super := "Object",
    interfaces := #["GameFeatureListenerInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("gameFeatureUtil", JV.null), ("list", JV.null), ("changed", (JV.bool false))],
    statics := #[],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onGameFeatureChange_1", #["GameFeatureEvent"], false, m_onGameFeatureChange_1), 
        ("add_1", #["Feature"], false, m_add_1), 
        ("remove_1", #["Feature"], false, m_remove_1), 
        ("setChanged_1", #["boolean"], false, m_setChanged_1), 
        ("isChangedFeature_1", #["Feature"], false, m_isChangedFeature_1), 
        ("isChanged_0", #[], false, m_isChanged_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseChangedGameFeatureListener


