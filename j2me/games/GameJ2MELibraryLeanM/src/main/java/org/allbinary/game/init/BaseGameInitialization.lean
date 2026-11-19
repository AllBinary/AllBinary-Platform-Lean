-- Generated Code Do Not Modify
-- package org.allbinary.game.init
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseGameInitialization

def jfields (this : JV) : JM JV := do
    JR.setField this "EARLY_RESOURCES" (JR.asI (JV.int 0))
    JR.setField this "GAME_RESOURCES" (JR.asI (JV.int 1))
    JR.setField this "EARLY_CHANGABLE_RESOURCES" (JR.asI (JV.int 2))
    JR.setField this "GAME_CHANGABLE_RESOURCES" (JR.asI (JV.int 3))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BaseGameInitialization" "NULL_BASE_GAME_INITIALIZATION" (<- JR.new "BaseGameInitialization" #[(<- JR.newArray "L" 1 #[(JV.int 0)]), (JV.int 0)])
    pure JV.null


def m_initKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_portion : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_initKeyMapping_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_portion : JV := (JR.asI (JR.arg jargs 1))
    if JR.truth (<- JR.call (<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[]) "isChangedFeature_1" #[(<- JR.getField (<- JR.callStatic "InputFeatureFactory" "getInstance_0" #[]) "INPUT_MAPPING")]) then
        let _ := (<- JR.call (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[]) "init_1" #[l_abeClientInformation])
        let _ := (<- JR.call (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[]) "addNormalPortion_2" #[(JV.int 50), (JV.str "Game Keys")])
        let _ := (<- JR.call (<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[]) "remove_1" #[(<- JR.getField (<- JR.callStatic "InputFeatureFactory" "getInstance_0" #[]) "INPUT_MAPPING")])
        pure ()
    pure JV.null


def m_init_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_commandListener : JV := (JR.arg jargs 1)
    let mut l_level : JV := (JR.asI (JR.arg jargs 2))
    let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
    if JR.truth (<- JR.cand (JR.not (<- JR.call this "isInitialized_0" #[])) (do pure ((<- JR.cor (<- JR.eq l_level (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_ALL") "getLevel_0" #[])) (do pure (<- JR.eq l_level (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_EARLY") "getLevel_0" #[]))))))) then
        let mut l_localPortion : JV := (JR.asI (JV.int 40))
        if JR.truth (<- JR.eq l_level (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_EARLY") "getLevel_0" #[])) then
            l_localPortion := (JR.asI (JV.int 8))
            pure ()
        let _ := (<- JR.call this "setInitialized_1" #[(JV.bool true)])
        let _ := (<- JR.call this "initKey_1" #[(<- JR.call this "getPortion_0" #[])])
        let _ := (<- JR.call this "initKeyMapping_2" #[l_abeClientInformation, (<- JR.call this "getPortion_0" #[])])
        let _ := (<- JR.call (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[]) "init_0" #[])
        let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[l_localPortion, (JV.str "Game Key Events")])
        let _ := (<- JR.call (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[]) "init_1" #[(<- JR.call (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[]) "getInputMapping_0" #[])])
        let _ := (<- JR.callStatic "CancelTouchButtonInputFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[l_localPortion, (JV.str "Touch Input")])
        let _ := (<- JR.call (<- JR.callStatic "CompleteMotionGestureInputToGameMotionGestureInput" "getInstance_0" #[]) "init_0" #[])
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[l_localPortion, (JV.str "Motion Input")])
        let _ := (<- JR.callStatic "GameFeatureImageCacheFactory" "init_0" #[])
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[l_localPortion, (JV.str "Image Cache")])
        let _ := (<- JR.call (<- JR.aget (<- JR.getField this "resourceInitializationArray") (<- JR.getField this "EARLY_RESOURCES")) "init_0" #[])
        pure ()
    pure JV.null


def m_resourceInitialization_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
    if JR.truth (<- JR.cand (<- JR.call this "resourceAnimationChange_0" #[]) (do pure (<- JR.eq l_level (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_EARLY") "getLevel_0" #[])))) then
        let _ := (<- JR.call this "clearResources_0" #[])
        let _ := (<- JR.call (<- JR.aget (<- JR.getField this "resourceInitializationArray") (<- JR.getField this "EARLY_CHANGABLE_RESOURCES")) "init_0" #[])
        pure ()
    if JR.truth (<- JR.cand (<- JR.call this "resourceAnimationChange_0" #[]) (do pure (<- JR.eq l_level (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_ALL") "getLevel_0" #[])))) then
        if JR.truth (<- JR.getField this "allLoaded") then
            let _ := (<- JR.call this "clearResources_0" #[])
            pure ()
        if JR.truth (<- JR.eq (<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "getList_0" #[]) "size_0" #[]) (JV.int 0)) then
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "resourceInitializationArray") (<- JR.getField this "EARLY_CHANGABLE_RESOURCES")) "init_0" #[])
            pure ()
        let _ := (<- JR.call (<- JR.aget (<- JR.getField this "resourceInitializationArray") (<- JR.getField this "GAME_CHANGABLE_RESOURCES")) "init_0" #[])
        JR.setField this "allLoaded" (JV.bool true)
        pure ()
    pure JV.null


def m_resourceAnimationChange_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_changedGameFeatureListener : JV := (<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[])
    let mut l_gameConfigurationCentral : JV := (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[])
    if JR.truth (<- JR.call l_changedGameFeatureListener "isChangedGameConfiguration_1" #[(<- JR.getField l_gameConfigurationCentral "SCALE")]) then
        return (JV.bool true)
    if JR.truth (<- JR.call (<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[]) "isChangedFeature_1" #[(<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "STATIC")]) then
        return (JV.bool true)
    return (JV.bool false)


def m_clearResources_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "allLoaded" (JV.bool false)
    let _ := (<- JR.callStatic "GameFeatureImageCacheFactory" "releaseAll_0" #[])
    let mut l_featuredAnimationInterfaceFactoryInterfaceFactory : JV := (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_featuredAnimationInterfaceFactoryInterfaceFactory "clear_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "FeaturedResourceRelativeRelationshipFactory" "getInstance_0" #[]) "clear_0" #[])
    pure JV.null


def m_setGameInitialized_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInitialized : JV := (JR.arg jargs 0)
    JR.setField this "gameInitialized" l_gameInitialized
    pure JV.null


def m_isGameInitialized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameInitialized")


def m_getPortion_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "portion"))


def m_setInitialized_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initialized : JV := (JR.arg jargs 0)
    JR.setField this "initialized" l_initialized
    pure JV.null


def m_isInitialized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "initialized")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resourceInitializationArray : JV := (JR.arg jargs 0)
    let mut l_portion : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "resourceInitializationArray" l_resourceInitializationArray
    JR.setField this "portion" (JR.asI l_portion)
    pure this

initialize JR.registerClass {
    name := "BaseGameInitialization",
    javaName := "org.allbinary.game.init.BaseGameInitialization",
    super := "Object",
    interfaces := #["GameInitializationInterface"],
    isInterface := false,
    fields := #[("resourceInitializationArray", JV.null), ("portion", (JV.int 0)), ("initialized", (JV.bool false)), ("EARLY_RESOURCES", (JV.int 0)), ("GAME_RESOURCES", (JV.int 0)), ("EARLY_CHANGABLE_RESOURCES", (JV.int 0)), ("GAME_CHANGABLE_RESOURCES", (JV.int 0)), ("gameInitialized", (JV.bool false)), ("allLoaded", (JV.bool false))],
    statics := #[("NULL_BASE_GAME_INITIALIZATION", JV.null)],
    methods := #[
        ("initKey_1", #["int"], false, m_initKey_1), 
        ("initKeyMapping_2", #["AbeClientInformationInterface", "int"], false, m_initKeyMapping_2), 
        ("init_3", #["AbeClientInformationInterface", "CommandListener", "int"], false, m_init_3), 
        ("resourceInitialization_1", #["int"], false, m_resourceInitialization_1), 
        ("resourceAnimationChange_0", #[], false, m_resourceAnimationChange_0), 
        ("clearResources_0", #[], false, m_clearResources_0), 
        ("setGameInitialized_1", #["boolean"], false, m_setGameInitialized_1), 
        ("isGameInitialized_0", #[], false, m_isGameInitialized_0), 
        ("getPortion_0", #[], false, m_getPortion_0), 
        ("setInitialized_1", #["boolean"], false, m_setInitialized_1), 
        ("isInitialized_0", #[], false, m_isInitialized_0), 
        ("jinit_2", #["ResourceInitializationArr", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseGameInitialization


