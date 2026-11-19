-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryMediaManager

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isMuted_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_setMuted_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aMuted : JV := (JR.arg jargs 0)
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_soundsFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    let mut l_commonString : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.getField l_commonString "START"), (<- JR.getStatic "AllBinaryMediaManager" "THIS"), (<- JR.getField l_commonString "INIT")])
    let _ := (<- JR.call (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[]) "addNormalPortion_2" #[(JV.int 50), (JV.str "Media Manager")])
    let _ := (<- JR.call (<- JR.new "Sounds" #[l_soundsFactoryInterface]) "init_0" #[])
    pure JV.null


def m_shutdown_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_soundsFactoryInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.new "Sounds" #[l_soundsFactoryInterface]) "stopAll_0" #[])
    let _ := (<- JR.call (<- JR.new "Sounds" #[l_soundsFactoryInterface]) "closeAll_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "gc_0" #[])
    pure JV.null


def m_createPlayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField (<- JR.callStatic "GameFeatureFactory" "getInstance_0" #[]) "SOUND")]) then
        if JR.truth (<- JR.eq (<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "compareTo_2" #[l_resource, (<- JR.getStatic "Manager" "TONE_DEVICE_LOCATOR")]) (JV.int 0)) then
            return (<- JR.callStatic "Manager" "createPlayer_1" #[l_resource])
        else
            let mut l_inputStream : JV := (<- JR.call (<- JR.callStatic "ResourceUtil" "getInstance_0" #[]) "getResourceAsStream_1" #[l_resource])
            return (<- JR.call (<- JR.callStatic "MIDPUtil" "getInstance_0" #[]) "createPlayerFromInputStream_2" #[l_inputStream, (<- JR.call (<- JR.getField (<- JR.callStatic "AudioContentTypeDataFactory" "getInstance_0" #[]) "MIME_AUDIO_WAV") "getName_0" #[])])
        pure ()
    else
        return (<- JR.getStatic "NoPlayer" "NO_PLAYER")
    pure JV.null


def m_playTone_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frequency : JV := (JR.asI (JR.arg jargs 0))
    let mut l_time : JV := (JR.asI (JR.arg jargs 1))
    let mut l_volume : JV := (JR.asI (JR.arg jargs 2))
    if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField (<- JR.callStatic "GameFeatureFactory" "getInstance_0" #[]) "SOUND")]) then
        let _ := (<- JR.callStatic "Manager" "playTone_3" #[l_frequency, l_time, l_volume])
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryMediaManager",
    javaName := "org.allbinary.media.audio.AllBinaryMediaManager",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("THIS", (JV.str "AllBinaryMediaManagerNoMIPD2"))],
    methods := #[
        ("isMuted_0", #[], true, m_isMuted_0), 
        ("setMuted_1", #["boolean"], true, m_setMuted_1), 
        ("update_0", #[], true, m_update_0), 
        ("init_1", #["SoundsFactoryInterface"], true, m_init_1), 
        ("shutdown_1", #["SoundsFactoryInterface"], true, m_shutdown_1), 
        ("createPlayer_1", #["String"], true, m_createPlayer_1), 
        ("playTone_3", #["int", "int", "int"], true, m_playTone_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryMediaManager


