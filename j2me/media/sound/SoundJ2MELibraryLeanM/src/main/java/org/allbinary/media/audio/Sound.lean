-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Sound

def jfields (this : JV) : JM JV := do
    JR.setField this "player" (<- JR.getStatic "NoPlayer" "NO_PLAYER")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getResource_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "resource")


def m_getPlayerP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "player")


def m_setPlayerP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_player : JV := (JR.arg jargs 0)
    JR.setField this "player" l_player
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getDuration_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int (-1)))


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "player") "start_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "RUN")])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "resource" l_resource
    pure this

initialize JR.registerClass {
    name := "Sound",
    javaName := "org.allbinary.media.audio.Sound",
    super := "Object",
    interfaces := #["SoundInterface", "Runnable"],
    isInterface := false,
    fields := #[("resource", JV.null), ("player", JV.null)],
    statics := #[],
    methods := #[
        ("getResource_0", #[], false, m_getResource_0), 
        ("getPlayerP_0", #[], false, m_getPlayerP_0), 
        ("setPlayerP_1", #["Player"], false, m_setPlayerP_1), 
        ("init_0", #[], false, m_init_0), 
        ("getDuration_0", #[], false, m_getDuration_0), 
        ("run_0", #[], false, m_run_0), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Sound


