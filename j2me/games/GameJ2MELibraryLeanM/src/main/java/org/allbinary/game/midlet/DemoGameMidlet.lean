-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DemoGameMidlet

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isContinue_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (<- JR.callInherited this "DemoGameMidlet" "getStartStateHashtable_0" #[])
    if JR.truth (<- JR.cand (<- JR.ne l_hashtable JV.null) (do pure (<- JR.gt (<- JR.call l_hashtable "size_0" #[]) (JV.int 0)))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_getHighestLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 1))


def m_createDemoGameCanvasRunnableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "DemoGameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "DemoGameMidlet" "commonStrings") "NOT_IMPLEMENTED"), this, (<- JR.getField (<- JR.getInherited this "DemoGameMidlet" "commonStrings") "CREATE")])
    return (<- JR.getStatic "NullGameCanvasRunnable" "NULL_GAME_CANVAS_RUNNABLE")


def m_createGameCanvasRunnable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameLayerManager : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getInherited this "DemoGameMidlet" "commonStrings") "NOT_IMPLEMENTED")])


def m_createGameCanvasRunnableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call this "createGameCanvasRunnable_1" #[(<- JR.callInherited this "DemoGameMidlet" "createGameLayerManager_0" #[])])


def m_demoSetup_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_postDemoSetup_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setDemo_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "DemoGameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "DemoGameMidlet" "commonStrings") "START"), this, (JV.str "setDemo")])
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_progressCanvas "start_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "PrimaryThreadPool" "getInstance_0" #[]) "runTask_1" #[(<- JR.new "DemoRunnable" #[this])])
    pure JV.null


def m_createGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_CREATE_GAME : JV := (JV.str "createGame")
    let _ := (<- JR.call (<- JR.getInherited this "DemoGameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "DemoGameMidlet" "commonStrings") "START"), this, l_CREATE_GAME])
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_progressCanvas "start_0" #[])
    let mut l_hashtable : JV := (<- JR.callInherited this "DemoGameMidlet" "getStartStateHashtable_0" #[])
    let _ := (<- JR.callInherited this "DemoGameMidlet" "setStartStateHashtable_1" #[(<- JR.getField (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "NULL_TABLE")])
    let _ := (<- JR.call (<- JR.callStatic "PrimaryThreadPool" "getInstance_0" #[]) "runTask_1" #[(<- JR.new "CreateGameRunnable" #[this, l_hashtable])])
    let _ := (<- JR.call (<- JR.getInherited this "DemoGameMidlet" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "DemoGameMidlet" "commonStrings") "END"), this, l_CREATE_GAME])
    pure JV.null


def m_isReady_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_clientInformationFactory : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "GameMidlet" this #[l_clientInformationFactory]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DemoGameMidlet",
    javaName := "org.allbinary.game.midlet.DemoGameMidlet",
    super := "GameMidlet",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isContinue_0", #[], false, m_isContinue_0), 
        ("getHighestLevel_0", #[], false, m_getHighestLevel_0), 
        ("createDemoGameCanvasRunnableInterface_0", #[], false, m_createDemoGameCanvasRunnableInterface_0), 
        ("createGameCanvasRunnable_1", #["AllBinaryGameLayerManager"], false, m_createGameCanvasRunnable_1), 
        ("createGameCanvasRunnableInterface_0", #[], false, m_createGameCanvasRunnableInterface_0), 
        ("demoSetup_0", #[], false, m_demoSetup_0), 
        ("postDemoSetup_0", #[], false, m_postDemoSetup_0), 
        ("setDemo_0", #[], false, m_setDemo_0), 
        ("createGame_0", #[], false, m_createGame_0), 
        ("isReady_0", #[], false, m_isReady_0), 
        ("jinit_1", #["ClientInformationFactory"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DemoGameMidlet


