-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InGameFeatures

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_LABEL : JV := (JV.str "Screen Buttons")
    let mut l_orientationData : JV := (<- JR.callStatic "OrientationData" "getInstance_0" #[])
    let mut l_exclusiveOrientationSensorVector : JV := (<- JR.call (<- JR.call (<- JR.callStatic "GameFeatureChoiceGroups" "getExclusiveInstance_0" #[]) "get_0" #[]) "get_1" #[(<- JR.getField l_orientationData "ORIENTATION_SENSOR_INPUT")])
    let mut l_inGameFeatureChoiceGroups : JV := (<- JR.callStatic "InGameFeatureChoiceGroups" "getExclusiveInstance_0" #[])
    if JR.truth (<- JR.ne l_exclusiveOrientationSensorVector JV.null) then
        let mut l_inGameExclusiveOrientationSensorVectorCanBeNull : JV := (<- JR.call (<- JR.call l_inGameFeatureChoiceGroups "get_0" #[]) "get_1" #[(<- JR.getField l_orientationData "ORIENTATION_SENSOR_INPUT")])
        if JR.truth (<- JR.eq l_inGameExclusiveOrientationSensorVectorCanBeNull JV.null) then
            let _ := (<- JR.call this "addToInGameMenu_0" #[])
            pure ()
        else
            let mut l_inGameExclusiveOrientationSensorVector : JV := l_inGameExclusiveOrientationSensorVectorCanBeNull
            if JR.truth (<- JR.eq (<- JR.call l_inGameExclusiveOrientationSensorVector "size_0" #[]) (JV.int 0)) then
                let _ := (<- JR.call this "addToInGameMenu_0" #[])
                pure ()
            pure ()
        pure ()
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.callStatic "TouchFeatureFactory" "getInstance_0" #[]) "SHOW_SCREEN_BUTTONS")]) (do pure (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.callStatic "TouchFeatureFactory" "getInstance_0" #[]) "AUTO_HIDE_SHOW_SCREEN_BUTTONS")]))) (do pure (<- JR.call l_features "isFeature_1" #[(<- JR.getField (<- JR.callStatic "TouchFeatureFactory" "getInstance_0" #[]) "HIDE_SCREEN_BUTTONS")]))) then
        let mut l_exclusiveScreenButtonsVector : JV := (<- JR.new "BasicArrayListD" #[])
        let mut l_touchFeatureFactory : JV := (<- JR.callStatic "TouchFeatureFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_exclusiveScreenButtonsVector "add_1" #[(<- JR.getField l_touchFeatureFactory "AUTO_HIDE_SHOW_SCREEN_BUTTONS")])
        let _ := (<- JR.call l_exclusiveScreenButtonsVector "add_1" #[(<- JR.getField l_touchFeatureFactory "SHOW_SCREEN_BUTTONS")])
        let _ := (<- JR.call l_exclusiveScreenButtonsVector "add_1" #[(<- JR.getField l_touchFeatureFactory "HIDE_SCREEN_BUTTONS")])
        let _ := (<- JR.call l_inGameFeatureChoiceGroups "add_2" #[l_LABEL, l_exclusiveScreenButtonsVector])
        pure ()
    pure JV.null


def m_addToInGameMenu_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_orientationData : JV := (<- JR.callStatic "OrientationData" "getInstance_0" #[])
    let mut l_inGameExclusiveOrientationSensorVector : JV := (<- JR.new "BasicArrayListD" #[])
    let _ := (<- JR.call l_inGameExclusiveOrientationSensorVector "add_1" #[(<- JR.getField (<- JR.callStatic "SensorFeatureFactory" "getInstance_0" #[]) "ORIENTATION_SENSORS")])
    let _ := (<- JR.call l_inGameExclusiveOrientationSensorVector "add_1" #[(<- JR.getField (<- JR.callStatic "SensorFeatureFactory" "getInstance_0" #[]) "NO_ORIENTATION")])
    let _ := (<- JR.call (<- JR.callStatic "InGameFeatureChoiceGroups" "getExclusiveInstance_0" #[]) "add_2" #[(<- JR.getField l_orientationData "ORIENTATION_SENSOR_INPUT"), l_inGameExclusiveOrientationSensorVector])
    pure JV.null


def m_isAny_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_touchFeatureFactory : JV := (<- JR.callStatic "TouchFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_touchFeatureFactory "SHOW_SCREEN_BUTTONS")]) (do pure (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_touchFeatureFactory "AUTO_HIDE_SHOW_SCREEN_BUTTONS")]))) (do pure (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_touchFeatureFactory "HIDE_SCREEN_BUTTONS")]))) then
        return (JV.bool true)
    let mut l_exclusiveOrientationSensorVector : JV := (<- JR.call (<- JR.call (<- JR.callStatic "GameFeatureChoiceGroups" "getExclusiveInstance_0" #[]) "get_0" #[]) "get_1" #[(<- JR.getField (<- JR.callStatic "OrientationData" "getInstance_0" #[]) "ORIENTATION_SENSOR_INPUT")])
    if JR.truth (<- JR.ne l_exclusiveOrientationSensorVector JV.null) then
        return (JV.bool true)
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Init" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InGameFeatures",
    javaName := "org.allbinary.game.configuration.InGameFeatures",
    super := "Init",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("addToInGameMenu_0", #[], false, m_addToInGameMenu_0), 
        ("isAny_0", #[], false, m_isAny_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InGameFeatures


