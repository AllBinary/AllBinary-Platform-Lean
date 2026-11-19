-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullGameCanvas

def jfields (this : JV) : JM JV := do
    JR.setField this "runningNull" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullGameCanvas" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_createNull_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        return (<- JR.new "NullGameCanvas" #[(<- JR.callStatic "AllBinaryGameLayerManager" "getNullInstance_0" #[])])
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.callStatic "LogUtil" "getInstance_0" #[]) "put_4" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "EXCEPTION"), (JV.str "NullGameCanvas"), (<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "GET_INSTANCE"), l_e])
            throw (<- JR.new "RuntimeException" #[])
        else
            throw jex0
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "NullGameCanvas" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "NullGameCanvas" "instance" (<- JR.callStatic "NullGameCanvas" "createNull_0" #[])
        pure ()
    return (<- JR.getStatic "NullGameCanvas" "instance")


def m_createCanvas_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameLayerManager : JV := (JR.arg jargs 0)
    let mut l_nullGameCanvas : JV := (<- JR.new "NullGameCanvas" #[l_gameLayerManager])
    let _ := (<- JR.call l_nullGameCanvas "setInitialized_1" #[(JV.bool true)])
    let _ := (<- JR.call l_nullGameCanvas "setTitle_1" #[(<- JR.getStatic "NullGameCanvas" "NO_GAME")])
    return l_nullGameCanvas


def m_isGameOver_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_setRunning_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_running : JV := (JR.arg jargs 0)
    JR.setField this "runningNull" l_running
    pure JV.null


def m_isRunning_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "runningNull")


def m_pause_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callInherited this "NullGameCanvas" "setPaused_1" #[(JV.bool true)])
    pure JV.null


def m_unPause_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callInherited this "NullGameCanvas" "setPaused_1" #[(JV.bool false)])
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "NullGameCanvas" "removeAllCommands_0" #[])
    let _ := (<- JR.callInherited this "NullGameCanvas" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_buildGameInit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isProgress : JV := (JR.arg jargs 0)
    pure JV.null


def m_draw_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getInherited this "NullGameCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "NullGameCanvas" "commonStrings") "START_RUNNABLE"), this, (<- JR.getField (<- JR.getInherited this "NullGameCanvas" "commonStrings") "RUN")])
        let _ := (<- JR.call (<- JR.getInherited this "NullGameCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "NullGameCanvas" "commonStrings") "END_RUNNABLE"), this, (<- JR.getField (<- JR.getInherited this "NullGameCanvas" "commonStrings") "RUN")])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getInherited this "NullGameCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "NullGameCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "NullGameCanvas" "commonStrings") "RUN"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getStatic "NullGameCanvas" "TYPE"))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameLayerManager : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AllBinaryGameCanvas" this #[(<- JR.getStatic "NullCommandListener" "NULL_COMMAND_LISTENER"), l_gameLayerManager, (<- JR.callStatic "NoHighScoresFactory" "getInstance_0" #[]), (<- JR.getStatic "BasicBuildGameInitializerFactory" "NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY"), (JV.bool false)]
    let _ <- jfields this
    let _ := (<- JR.callSuper "AllBinaryGameCanvas" this "setWait_1" #[(JV.int 1200)])
    pure this

initialize JR.registerClass {
    name := "NullGameCanvas",
    javaName := "org.allbinary.game.displayable.canvas.NullGameCanvas",
    super := "AllBinaryGameCanvas",
    interfaces := #[],
    isInterface := false,
    fields := #[("runningNull", (JV.bool false))],
    statics := #[("instance", JV.null), ("NO_GAME", (JV.str "No Background Game")), ("TYPE", (JR.asI (JV.int 1)))],
    methods := #[
        ("createNull_0", #[], true, m_createNull_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createCanvas_1", #["AllBinaryGameLayerManager"], true, m_createCanvas_1), 
        ("isGameOver_0", #[], false, m_isGameOver_0), 
        ("setRunning_1", #["boolean"], false, m_setRunning_1), 
        ("isRunning_0", #[], false, m_isRunning_0), 
        ("pause_0", #[], false, m_pause_0), 
        ("unPause_0", #[], false, m_unPause_0), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("buildGameInit_1", #["boolean"], false, m_buildGameInit_1), 
        ("draw_1", #["Graphics"], false, m_draw_1), 
        ("run_0", #[], false, m_run_0), 
        ("getType_0", #[], false, m_getType_0), 
        ("jinit_1", #["AllBinaryGameLayerManager"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullGameCanvas


