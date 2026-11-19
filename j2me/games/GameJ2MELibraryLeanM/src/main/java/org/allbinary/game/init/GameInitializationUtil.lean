-- Generated Code Do Not Modify
-- package org.allbinary.game.init
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInitializationUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "EVENT" (<- JR.new "GameInitializedEvent" #[this])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameInitializationUtil" "instance" (<- JR.new "GameInitializationUtil" #[])
    pure JV.null


def m_initDemo_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_canvas : JV := (JR.arg jargs 1)
    let mut l_gameInitializationInterfaceFactoryInterface : JV := (JR.arg jargs 2)
    let mut l_mainFeatureFactory : JV := (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call (<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[]) "isChangedFeature_1" #[(<- JR.getField l_mainFeatureFactory "STATIC")]) then
        let mut l_gameInitializationInterface : JV := (<- JR.call l_gameInitializationInterfaceFactoryInterface "getInstance_0" #[])
        let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
        if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_mainFeatureFactory "LOAD_ALL")]) then
            let _ := (<- JR.call this "initGame_3" #[l_abeClientInformation, l_canvas, l_gameInitializationInterfaceFactoryInterface])
            pure ()
        else
            if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_mainFeatureFactory "LOAD_ONDEMAND")]) then
                let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
                let _ := (<- JR.call l_gameInitializationInterface "init_3" #[l_abeClientInformation, (<- JR.call l_canvas "getCustomCommandListener_0" #[]), (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_EARLY") "getLevel_0" #[])])
                let _ := (<- JR.call (<- JR.getField this "EVENT") "setResourceLoadingLevel_1" #[(<- JR.getField l_resourceLoadingLevelFactory "LOAD_EARLY")])
                pure ()
            else
                throw (<- JR.new "Exception" #[(JV.str "No Loading Feature Available")])
        let _ := (<- JR.call (<- JR.callStatic "GameInitializedEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.getField this "EVENT")])
        pure ()
    pure JV.null


def m_initGame_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_canvas : JV := (JR.arg jargs 1)
    let mut l_gameInitializationInterfaceFactoryInterface : JV := (JR.arg jargs 2)
    if JR.truth (<- JR.call (<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[]) "isChangedFeature_1" #[(<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "STATIC")]) then
        let mut l_gameInitializationInterface : JV := (<- JR.call l_gameInitializationInterfaceFactoryInterface "getInstance_0" #[])
        let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_gameInitializationInterface "init_3" #[l_abeClientInformation, (<- JR.call l_canvas "getCustomCommandListener_0" #[]), (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_ALL") "getLevel_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "EVENT") "setResourceLoadingLevel_1" #[(<- JR.getField l_resourceLoadingLevelFactory "LOAD_ALL")])
        let _ := (<- JR.call (<- JR.callStatic "GameInitializedEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.getField this "EVENT")])
        let _ := (<- JR.call (<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[]) "remove_1" #[(<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "STATIC")])
        pure ()
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameInitializationUtil" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameInitializationUtil",
    javaName := "org.allbinary.game.init.GameInitializationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EVENT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("initDemo_3", #["AbeClientInformationInterface", "MyCanvas", "BasicBuildGameInitializerFactory"], false, m_initDemo_3), 
        ("initGame_3", #["AbeClientInformationInterface", "MyCanvas", "BasicBuildGameInitializerFactory"], false, m_initGame_3), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInitializationUtil


