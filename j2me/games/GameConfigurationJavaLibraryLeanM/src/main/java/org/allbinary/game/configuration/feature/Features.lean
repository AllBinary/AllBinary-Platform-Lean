-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Features

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Features" "SINGLETON" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "Features" "SINGLETON") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "Features" "SINGLETON" (<- JR.new "Features" #[])
        pure ()
    return (<- JR.getStatic "Features" "SINGLETON")


def m_addDefault_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "add_1" #[l_gameFeature])
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "defaultList") "contains_1" #[l_gameFeature])) then
        let _ := (<- JR.call (<- JR.getField this "defaultList") "add_1" #[l_gameFeature])
        pure ()
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "list") "contains_1" #[l_gameFeature])) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[(<- JR.call l_gameFeature "toString_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD")])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_gameFeature])
        let _ := (<- JR.call (<- JR.callStatic "GameFeatureEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.new "GameFeatureEvent" #[l_gameFeature, (<- JR.call l_gameFeature "toString_0" #[])])])
        pure ()
    pure JV.null


def m_removeDefault_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[(<- JR.call l_gameFeature "toString_0" #[])]) "toString_0" #[]), this, (JV.str "removeDefault")])
    let _ := (<- JR.call this "remove_1" #[l_gameFeature])
    let _ := (<- JR.call (<- JR.getField this "defaultList") "remove_1" #[l_gameFeature])
    pure JV.null


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.getField this "list") "contains_1" #[l_gameFeature]) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "commonStrings") "REMOVE")])
        let _ := (<- JR.call (<- JR.getField this "list") "remove_1" #[l_gameFeature])
        let _ := (<- JR.call (<- JR.callStatic "GameFeatureEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.new "GameFeatureEvent" #[l_gameFeature, (<- JR.call l_gameFeature "toString_0" #[])])])
        pure ()
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_gameFeatureFactory : JV := (<- JR.callStatic "GameFeatureFactory" "getInstance_0" #[])
        let mut l_inputFeatureFactory : JV := (<- JR.callStatic "InputFeatureFactory" "getInstance_0" #[])
        let mut l_sensorFeatureFactory : JV := (<- JR.callStatic "SensorFeatureFactory" "getInstance_0" #[])
        let mut l_touchFeatureFactory : JV := (<- JR.callStatic "TouchFeatureFactory" "getInstance_0" #[])
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_gameFeatureFactory "ARTIFICIAL_INTELLEGENCE_PROCESSOR")])
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_gameFeatureFactory "COLLIDABLE_INTERFACE_LAYER_PROCESSOR")])
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_gameFeatureFactory "GAME_INPUT_LAYER_PROCESSOR")])
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_gameFeatureFactory "TICKABLE_LAYER_PROCESSOR")])
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_inputFeatureFactory "MULTI_KEY_PRESS")])
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_inputFeatureFactory "REMOVE_DUPLICATE_KEY_PRESSES")])
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_gameFeatureFactory "SCREEN_SHAKE")])
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_gameFeatureFactory "POST_IMAGE_LOADING_MODIFICATION")])
        let mut l_operatingSystemInterface : JV := (<- JR.call (<- JR.callStatic "OperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[])
        if JR.truth (<- JR.call l_operatingSystemInterface "isOverScan_0" #[]) then
            let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_sensorFeatureFactory "NO_ORIENTATION")])
            let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_touchFeatureFactory "HIDE_SCREEN_BUTTONS")])
            pure ()
        else
            let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_sensorFeatureFactory "ORIENTATION_SENSORS")])
            let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_touchFeatureFactory "AUTO_HIDE_SHOW_SCREEN_BUTTONS")])
            pure ()
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField l_touchFeatureFactory "TOUCH_ENABLED")])
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "FULL_SCREEN")])
        let _ := (<- JR.call this "addDefault_1" #[(<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "LOAD_ONDEMAND")])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_isDefault_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "defaultList") "contains_1" #[l_gameFeature])


def m_isFeature_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "list") "contains_1" #[l_gameFeature])


def m_toggle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call this "isFeature_1" #[l_gameFeature]) then
        let _ := (<- JR.call this "remove_1" #[l_gameFeature])
        pure ()
    else
        let _ := (<- JR.call this "add_1" #[l_gameFeature])
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "defaultList" (<- JR.new "BasicArrayListD" #[])
    let _ := (<- JR.call this "init_0" #[])
    pure this

initialize JR.registerClass {
    name := "Features",
    javaName := "org.allbinary.game.configuration.feature.Features",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("list", JV.null), ("defaultList", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("addDefault_1", #["Feature"], false, m_addDefault_1), 
        ("add_1", #["Feature"], false, m_add_1), 
        ("removeDefault_1", #["Feature"], false, m_removeDefault_1), 
        ("remove_1", #["Feature"], false, m_remove_1), 
        ("init_0", #[], false, m_init_0), 
        ("isDefault_1", #["Feature"], false, m_isDefault_1), 
        ("isFeature_1", #["Feature"], false, m_isFeature_1), 
        ("toggle_1", #["Feature"], false, m_toggle_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Features


