-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlayerComposite

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "timeElapsedHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 0)])
    JR.setField this "gameTickTimeDelayHelper" (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_addPlayerListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "player") "addPlayerListener_1" #[l_playerListener])
    pure JV.null


def m_removePlayerListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "player") "removePlayerListener_1" #[l_playerListener])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "player") "close_0" #[])
    pure JV.null


def m_deallocate_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "player") "deallocate_0" #[])
    pure JV.null


def m_getContentType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "player") "getContentType_0" #[])


def m_getDuration_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.call (<- JR.getField this "player") "getDuration_0" #[]))


def m_getMediaTime_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.call (<- JR.getField this "player") "getMediaTime_0" #[]))


def m_prefetch_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "player") "prefetch_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (JV.str "prefetch"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_realize_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "player") "realize_0" #[])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (JV.str "realize"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def m_getState_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "player") "getState_0" #[]))


def m_setLoopCount_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_count : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "player") "setLoopCount_1" #[l_count])
    pure JV.null


def m_setMediaTime_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_now : JV := (JR.asJ (JR.arg jargs 0))
    try
        return (JR.asJ (<- JR.call (<- JR.getField this "player") "setMediaTime_1" #[l_now]))
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (JV.str "setMediaTime"), l_e])
            return (JR.asJ (JR.toJ (JV.int (-1))))
        else
            throw jex2
    pure JV.null


def m_start_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        if JR.truth (<- JR.call (<- JR.getField this "timeElapsedHelper") "isTime_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]) then
            let _ := (<- JR.call (<- JR.getField this "player") "start_0" #[])
            pure ()
        pure ()
    catch jex3 =>
        if (<- JR.isInstanceOfAny jex3 #["Exception"]) then
            let mut l_e : JV := jex3
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "START_METHOD_NAME"), l_e])
            pure ()
        else
            throw jex3
    pure JV.null


def m_stop_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "player") "stop_0" #[])
        pure ()
    catch jex4 =>
        if (<- JR.isInstanceOfAny jex4 #["Exception"]) then
            let mut l_e : JV := jex4
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (JV.str "stop"), l_e])
            pure ()
        else
            throw jex4
    pure JV.null


def m_getControl_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_controlType : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "player") "getControl_1" #[l_controlType])


def m_getControls_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_setVolume_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_leftVolume : JV := (JR.asI (JR.arg jargs 0))
    let mut l_rightVolume : JV := (JR.asI (JR.arg jargs 1))
    let mut l_controllable2 : JV := ((<- JR.getField this "player"))
    let _ := (<- JR.call l_controllable2 "setVolume_2" #[l_leftVolume, l_rightVolume])
    pure JV.null


def m_getPlayerP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "player")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_player : JV := (JR.arg jargs 0)
    let mut l_repeatTime : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "player" l_player
    JR.setField (<- JR.getField this "timeElapsedHelper") "delay" (JR.asI l_repeatTime)
    pure this

initialize JR.registerClass {
    name := "PlayerComposite",
    javaName := "org.allbinary.media.audio.PlayerComposite",
    super := "Object",
    interfaces := #["Controllable", "Player"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("player", JV.null), ("timeElapsedHelper", JV.null), ("gameTickTimeDelayHelper", JV.null)],
    statics := #[],
    methods := #[
        ("addPlayerListener_1", #["PlayerListener"], false, m_addPlayerListener_1), 
        ("removePlayerListener_1", #["PlayerListener"], false, m_removePlayerListener_1), 
        ("close_0", #[], false, m_close_0), 
        ("deallocate_0", #[], false, m_deallocate_0), 
        ("getContentType_0", #[], false, m_getContentType_0), 
        ("getDuration_0", #[], false, m_getDuration_0), 
        ("getMediaTime_0", #[], false, m_getMediaTime_0), 
        ("prefetch_0", #[], false, m_prefetch_0), 
        ("realize_0", #[], false, m_realize_0), 
        ("getState_0", #[], false, m_getState_0), 
        ("setLoopCount_1", #["int"], false, m_setLoopCount_1), 
        ("setMediaTime_1", #["long"], false, m_setMediaTime_1), 
        ("start_0", #[], false, m_start_0), 
        ("stop_0", #[], false, m_stop_0), 
        ("getControl_1", #["String"], false, m_getControl_1), 
        ("getControls_0", #[], false, m_getControls_0), 
        ("setVolume_2", #["int", "int"], false, m_setVolume_2), 
        ("getPlayerP_0", #[], false, m_getPlayerP_0), 
        ("jinit_2", #["Player", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlayerComposite


