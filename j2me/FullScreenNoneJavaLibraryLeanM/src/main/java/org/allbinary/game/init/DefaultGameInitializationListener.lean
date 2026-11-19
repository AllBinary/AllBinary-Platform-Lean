-- Generated Code Do Not Modify
-- package org.allbinary.game.init
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DefaultGameInitializationListener

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "swtJOGLProcessor" (<- JR.callStatic "SWTJOGLProcessor" "getInstance_0" #[])
    JR.setField this "firstTime" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onGameInitialized_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInitializedEvent : JV := (JR.arg jargs 0)
    let mut l_ON_GAME_INITIALIZED : JV := (JV.str "onGameInitialized")
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField l_commonStrings "START"), this, l_ON_GAME_INITIALIZED])
        repeat
            if !(JR.truth (JR.not (<- JR.call (<- JR.getField this "swtJOGLProcessor") "isHolderCreated_0" #[]))) then break
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField l_commonStrings "UPDATE"), this, l_ON_GAME_INITIALIZED])
            let _ := (<- JR.callStatic "Thread" "sleep_1" #[(JV.int 20)])
            pure ()
        let _ := (<- JR.call (<- JR.callStatic "FeatureResourceInitializationUtil" "getInstance_0" #[]) "init_1" #[(<- JR.call l_gameInitializedEvent "getLevel_0" #[])])
        if JR.truth (<- JR.getField this "firstTime") then
            JR.setField this "firstTime" (JV.bool false)
            pure ()
        else
            let _ := (<- JR.call (<- JR.getField this "swtJOGLProcessor") "onSurfaceChanged_0" #[])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, l_ON_GAME_INITIALIZED, l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_gameInitializedEventHandler : JV := (<- JR.callStatic "GameInitializedEventHandler" "getInstance_0" #[])
    let _ := (<- JR.call l_gameInitializedEventHandler "removeAllListeners_0" #[])
    let _ := (<- JR.call l_gameInitializedEventHandler "addListenerInterface_1" #[this])
    pure this

initialize JR.registerClass {
    name := "DefaultGameInitializationListener",
    javaName := "org.allbinary.game.init.DefaultGameInitializationListener",
    super := "Object",
    interfaces := #["GameInitializedListenerInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("swtJOGLProcessor", JV.null), ("firstTime", (JV.bool false))],
    statics := #[],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onGameInitialized_1", #["GameInitializedEvent"], false, m_onGameInitialized_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DefaultGameInitializationListener


