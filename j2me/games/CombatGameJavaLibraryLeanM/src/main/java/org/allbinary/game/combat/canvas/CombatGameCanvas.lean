-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CombatGameCanvas

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CombatGameCanvas" "basicLayerProcessor" (<- JR.newArray "L" 1 #[(JV.int 0)])
    pure JV.null


def m_CombatGameCanvas_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "DestroyEventCircularStaticPool" "getInstance_0" #[]) "init_1" #[this])
    let _ := (<- JR.call (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[]) "addNormalPortion_2" #[(JV.int 50), (JV.str "Destroy Events")])
    pure JV.null


def m_initApp_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "CombatGameCanvas_init_0" #[])
    let _ := (<- JR.callSuper "AllBinaryGameCanvas" this "initApp_1" #[l_abeClientInformation])
    pure JV.null


def m_initConfigurablePortion_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_portion : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callStatic "DestroyedLayerProcessor" "init_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[]) "addNormalPortion_2" #[l_portion, (JV.str "Basic Processors")])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_gameFeatureFactory : JV := (<- JR.callStatic "GameFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.cand (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_gameFeatureFactory "DROPPED_ITEMS")]) (do pure (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_gameFeatureFactory "DROPPED_ITEMS_FROM_DEATH")]))) then
        JR.setStatic "CombatGameCanvas" "basicLayerProcessor" (<- JR.newArray "L" 1 #[(JV.int 2)])
        JR.aset (<- JR.getStatic "CombatGameCanvas" "basicLayerProcessor") (JV.int 0) (<- JR.callStatic "DestroyedLayerProcessor" "getInstance_0" #[])
        JR.aset (<- JR.getStatic "CombatGameCanvas" "basicLayerProcessor") (JV.int 1) (<- JR.callStatic "DropLayerProcessor" "getInstance_0" #[])
        pure ()
    else
        JR.setStatic "CombatGameCanvas" "basicLayerProcessor" (<- JR.newArray "L" 1 #[(JV.int 1)])
        JR.aset (<- JR.getStatic "CombatGameCanvas" "basicLayerProcessor") (JV.int 0) (<- JR.callStatic "DestroyedLayerProcessor" "getInstance_0" #[])
        pure ()
    pure JV.null


def m_processPlayingGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "AllBinaryGameCanvas" this "processPlayingGame_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getStatic "CombatGameCanvas" "basicLayerProcessor")))
        repeat
            let jtemp4 : JV := (JR.dec l_index)
            l_index := jtemp4
            
            if !(JR.truth (<- JR.ge jtemp4 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getStatic "CombatGameCanvas" "basicLayerProcessor") l_index) "process_1" #[(<- JR.getInherited this "CombatGameCanvas" "gameLayerManager")])
            pure ()
        pure ()
    pure JV.null


def m_cleanupGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "AllBinaryGameCanvas" this "cleanupGame_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getStatic "CombatGameCanvas" "basicLayerProcessor")))
        repeat
            let jtemp6 : JV := (JR.dec l_index)
            l_index := jtemp6
            
            if !(JR.truth (<- JR.ge jtemp6 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.call (<- JR.aget (<- JR.getStatic "CombatGameCanvas" "basicLayerProcessor") l_index) "getList_0" #[]) "clear_0" #[])
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.callStatic "GroupLayerManagerListener" "getInstance_0" #[]) "clear_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "GroupLayerManagerListener" "getInstance_0" #[]) "log_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "DestroyedEventHandler" "getInstance_0" #[]) "removeAllListeners_0" #[])
    let _ := (<- JR.call this "cleanupManager_0" #[])
    pure JV.null


def m_cleanupManager_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "CombatGameCanvas" "gameLayerManager") "cleanup_0" #[])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let mut l_gameLayerManager : JV := (JR.arg jargs 1)
    let mut l_highScoresFactoryInterface : JV := (JR.arg jargs 2)
    let mut l_gameInitializationInterfaceFactoryInterface : JV := (JR.arg jargs 3)
    let mut l_buffered : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "AllBinaryGameCanvas" this #[l_cmdListener, l_gameLayerManager, l_highScoresFactoryInterface, l_gameInitializationInterfaceFactoryInterface, l_buffered]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CombatGameCanvas",
    javaName := "org.allbinary.game.combat.canvas.CombatGameCanvas",
    super := "AllBinaryGameCanvas",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("basicLayerProcessor", JV.null)],
    methods := #[
        ("CombatGameCanvas_init_0", #[], false, m_CombatGameCanvas_init_0), 
        ("initApp_1", #["AbeClientInformationInterface"], false, m_initApp_1), 
        ("initConfigurablePortion_1", #["int"], false, m_initConfigurablePortion_1), 
        ("processPlayingGame_0", #[], false, m_processPlayingGame_0), 
        ("cleanupGame_0", #[], false, m_cleanupGame_0), 
        ("cleanupManager_0", #[], false, m_cleanupManager_0), 
        ("jinit_5", #["CommandListener", "AllBinaryGameLayerManager", "HighScoresFactoryInterface", "BasicBuildGameInitializerFactory", "boolean"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CombatGameCanvas


