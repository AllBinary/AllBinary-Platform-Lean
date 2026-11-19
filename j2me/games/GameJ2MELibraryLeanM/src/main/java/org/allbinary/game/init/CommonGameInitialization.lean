-- Generated Code Do Not Modify
-- package org.allbinary.game.init
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommonGameInitialization

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_commandListener : JV := (JR.arg jargs 1)
    let mut l_level : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "BaseGameInitialization" this "init_3" #[l_abeClientInformation, l_commandListener, l_level])
    let mut l_resourceLoadingLevelFactory : JV := (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[])
    if JR.truth (<- JR.cand (JR.not (<- JR.callInherited this "CommonGameInitialization" "isGameInitialized_0" #[])) (do pure (<- JR.eq l_level (<- JR.call (<- JR.getField l_resourceLoadingLevelFactory "LOAD_ALL") "getLevel_0" #[])))) then
        let _ := (<- JR.callInherited this "CommonGameInitialization" "setGameInitialized_1" #[(JV.bool true)])
        let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
        let _ := (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "init_0" #[])
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 50), (JV.str "Integers")])
        let _ := (<- JR.call (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "init_0" #[])
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 50), (JV.str "Points")])
        let _ := (<- JR.callStatic "AngleFactory" "getInstance_0" #[])
        let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 50), (JV.str "Angles")])
        let _ := (<- JR.call this "initGame_0" #[])
        let _ := (<- JR.call (<- JR.aget (<- JR.getInherited this "CommonGameInitialization" "resourceInitializationArray") (<- JR.getInherited this "CommonGameInitialization" "GAME_RESOURCES")) "init_0" #[])
        pure ()
    let _ := (<- JR.callSuper "BaseGameInitialization" this "resourceInitialization_1" #[l_level])
    pure JV.null


def m_initGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resourceInitializationArray : JV := (JR.arg jargs 0)
    let mut l_portion : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "BaseGameInitialization" this #[l_resourceInitializationArray, l_portion]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CommonGameInitialization",
    javaName := "org.allbinary.game.init.CommonGameInitialization",
    super := "BaseGameInitialization",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonStrings", JV.null)],
    statics := #[],
    methods := #[
        ("init_3", #["AbeClientInformationInterface", "CommandListener", "int"], false, m_init_3), 
        ("initGame_0", #[], false, m_initGame_0), 
        ("jinit_2", #["ResourceInitializationArr", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommonGameInitialization


