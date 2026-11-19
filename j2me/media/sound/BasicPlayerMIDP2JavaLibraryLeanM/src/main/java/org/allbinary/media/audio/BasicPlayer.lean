-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicPlayer

def jfields (this : JV) : JM JV := do
    JR.setField this "listenersList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getContentType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_getControl_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_controlType : JV := (JR.arg jargs 0)
    return (<- JR.new "NullControl" #[])


def m_getControls_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.newArray "L" 1 #[(JV.int 0)])


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_addPlayerListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerListener : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "listenersList") "contains_1" #[l_playerListener])) then
        let _ := (<- JR.call (<- JR.getField this "listenersList") "add_1" #[l_playerListener])
        pure ()
    pure JV.null


def m_removePlayerListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "listenersList") "remove_1" #[l_playerListener])
    pure JV.null


def m_getState_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "stateP"))


def m_setState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_state : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "stateP" (JR.asI l_state)
    pure JV.null


def m_getDuration_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (JV.long 0))


def m_getMediaTime_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (JV.long 0))


def m_getTimeBase_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "timeBase")


def m_setTimeBase_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_timeBase : JV := (JR.arg jargs 0)
    JR.setField this "timeBase" l_timeBase
    pure JV.null


def m_deallocate_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_prefetch_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_realize_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setLoopCount_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_count : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "loopCountP" (JR.asI l_count)
    pure JV.null


def m_getLoopCount_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "loopCountP"))


def m_setMediaTime_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_now : JV := (JR.asJ (JR.arg jargs 0))
    return (JR.asJ (JV.long 0))


def m_start_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setState_1" #[(<- JR.getStatic "Player" "STARTED")])
    pure JV.null


def m_stop_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setState_1" #[(<- JR.getStatic "Player" "PREFETCHED")])
    pure JV.null


def m_setVolume_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_leftVolume : JV := (JR.asI (JR.arg jargs 0))
    let mut l_rightVolume : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setLoopCount_1" #[(JV.int 0)])
    let _ := (<- JR.call this "setState_1" #[(<- JR.getStatic "Player" "UNREALIZED")])
    pure this

initialize JR.registerClass {
    name := "BasicPlayer",
    javaName := "org.allbinary.media.audio.BasicPlayer",
    super := "Object",
    interfaces := #["Player", "TimeBaseInterface", "Controllable2"],
    isInterface := false,
    fields := #[("listenersList", JV.null), ("timeBase", JV.null), ("stateP", (JV.int 0)), ("loopCountP", (JV.int 0))],
    statics := #[("CONTROL_TYPE", (JV.str "ToneControl"))],
    methods := #[
        ("getContentType_0", #[], false, m_getContentType_0), 
        ("getControl_1", #["String"], false, m_getControl_1), 
        ("getControls_0", #[], false, m_getControls_0), 
        ("close_0", #[], false, m_close_0), 
        ("addPlayerListener_1", #["PlayerListener"], false, m_addPlayerListener_1), 
        ("removePlayerListener_1", #["PlayerListener"], false, m_removePlayerListener_1), 
        ("getState_0", #[], false, m_getState_0), 
        ("setState_1", #["int"], false, m_setState_1), 
        ("getDuration_0", #[], false, m_getDuration_0), 
        ("getMediaTime_0", #[], false, m_getMediaTime_0), 
        ("getTimeBase_0", #[], false, m_getTimeBase_0), 
        ("setTimeBase_1", #["TimeBase"], false, m_setTimeBase_1), 
        ("deallocate_0", #[], false, m_deallocate_0), 
        ("prefetch_0", #[], false, m_prefetch_0), 
        ("realize_0", #[], false, m_realize_0), 
        ("setLoopCount_1", #["int"], false, m_setLoopCount_1), 
        ("getLoopCount_0", #[], false, m_getLoopCount_0), 
        ("setMediaTime_1", #["long"], false, m_setMediaTime_1), 
        ("start_0", #[], false, m_start_0), 
        ("stop_0", #[], false, m_stop_0), 
        ("setVolume_2", #["int", "int"], false, m_setVolume_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicPlayer


