-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFeatureItemStateListener

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameFeatureItemStateListener" "toggleList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getStatic "GameFeatureItemStateListener" "toggleList") "contains_1" #[l_gameFeature])) then
        let _ := (<- JR.call (<- JR.getStatic "GameFeatureItemStateListener" "toggleList") "add_1" #[l_gameFeature])
        pure ()
    pure JV.null


def m_itemStateChanged_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_item : JV := (JR.arg jargs 0)
    try
        let mut l_itemLabel : JV := (<- JR.call l_item "getLabel_0" #[])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "ITEM_LABEL")]) "append_1" #[l_itemLabel]) "toString_0" #[]), this, (JV.str "itemStateChanged")])
        if JR.truth (<- JR.instanceOf l_item "GameConfigurationGauge") then
            let _ := (<- JR.call (<- JR.callStatic "GameConfigurationUtil" "getInstance_0" #[]) "change_2" #[(<- JR.getField this "gameOptionsForm"), l_item])
            pure ()
        else
            if JR.truth (<- JR.instanceOf l_item "ChoiceGroup") then
                let mut l_gameFeatureUtil : JV := (<- JR.callStatic "GameFeatureUtil" "getInstance_0" #[])
                if JR.truth (<- JR.call l_gameFeatureUtil "isExclusive_1" #[l_itemLabel]) then
                    let _ := (<- JR.call l_gameFeatureUtil "updateExclusiveForChoiceGroup_1" #[l_item])
                    pure ()
                else
                    let _ := (<- JR.call l_gameFeatureUtil "updateMultiple_1" #[l_item])
                    pure ()
                pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (JV.str "itemStateChanged"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameOptionsForm : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "gameOptionsForm" l_gameOptionsForm
    let mut l_gameFeatureFactory : JV := (<- JR.callStatic "GameFeatureFactory" "getInstance_0" #[])
    let _ := (<- JR.callStatic "GameFeatureItemStateListener" "add_1" #[(<- JR.getField l_gameFeatureFactory "ARTIFICIAL_INTELLEGENCE_PROCESSOR")])
    let _ := (<- JR.callStatic "GameFeatureItemStateListener" "add_1" #[(<- JR.getField l_gameFeatureFactory "COLLIDABLE_INTERFACE_LAYER_PROCESSOR")])
    let _ := (<- JR.callStatic "GameFeatureItemStateListener" "add_1" #[(<- JR.getField l_gameFeatureFactory "DAMAGE_FLOATERS")])
    let _ := (<- JR.callStatic "GameFeatureItemStateListener" "add_1" #[(<- JR.getField l_gameFeatureFactory "DROPPED_ITEMS")])
    let _ := (<- JR.callStatic "GameFeatureItemStateListener" "add_1" #[(<- JR.getField l_gameFeatureFactory "GAME_INPUT_LAYER_PROCESSOR")])
    let _ := (<- JR.callStatic "GameFeatureItemStateListener" "add_1" #[(<- JR.getField l_gameFeatureFactory "HEALTH_BARS")])
    let _ := (<- JR.callStatic "GameFeatureItemStateListener" "add_1" #[(<- JR.getField l_gameFeatureFactory "SOUND")])
    let _ := (<- JR.callStatic "GameFeatureItemStateListener" "add_1" #[(<- JR.getField l_gameFeatureFactory "TICKABLE_LAYER_PROCESSOR")])
    pure this

initialize JR.registerClass {
    name := "GameFeatureItemStateListener",
    javaName := "org.allbinary.game.configuration.feature.GameFeatureItemStateListener",
    super := "Object",
    interfaces := #["ItemStateListener"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("gameOptionsForm", JV.null)],
    statics := #[("toggleList", JV.null)],
    methods := #[
        ("add_1", #["GameFeature"], true, m_add_1), 
        ("itemStateChanged_1", #["LcduiItem"], false, m_itemStateChanged_1), 
        ("jinit_1", #["GameOptionsForm"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameFeatureItemStateListener


