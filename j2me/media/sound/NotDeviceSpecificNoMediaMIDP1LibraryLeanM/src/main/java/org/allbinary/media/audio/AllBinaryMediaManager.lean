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


def m_createPlayerFromInputStream_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stream : JV := (JR.arg jargs 0)
    let mut l_type : JV := (JR.arg jargs 1)
    let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    let mut l_commonString : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.getField l_commonString "START"), (<- JR.getStatic "AllBinaryMediaManager" "THIS"), (JV.str "creatPlayer(InputStream)")])
    return (<- JR.getStatic "NoPlayer" "NO_PLAYER")


def m_createPlayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_locator : JV := (JR.arg jargs 0)
    let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    let mut l_commonString : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.getField l_commonString "START"), (<- JR.getStatic "AllBinaryMediaManager" "THIS"), (JV.str "creatPlayer(locator)")])
    return (<- JR.getStatic "NoPlayer" "NO_PLAYER")


def m_playTone_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frequency : JV := (JR.asI (JR.arg jargs 0))
    let mut l_time : JV := (JR.asI (JR.arg jargs 1))
    let mut l_volume : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_getSupportedContentTypes_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_protocol : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[])


def m_getSupportedProtocols_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_content_type : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[])


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
    statics := #[("THIS", (JV.str "AllBinaryMediaManagerNoMediaMIDP1"))],
    methods := #[
        ("isMuted_0", #[], true, m_isMuted_0), 
        ("setMuted_1", #["boolean"], true, m_setMuted_1), 
        ("update_0", #[], true, m_update_0), 
        ("init_1", #["SoundsFactoryInterface"], true, m_init_1), 
        ("shutdown_1", #["SoundsFactoryInterface"], true, m_shutdown_1), 
        ("createPlayerFromInputStream_2", #["InputStream", "String"], true, m_createPlayerFromInputStream_2), 
        ("createPlayer_1", #["String"], true, m_createPlayer_1), 
        ("playTone_3", #["int", "int", "int"], true, m_playTone_3), 
        ("getSupportedContentTypes_1", #["String"], true, m_getSupportedContentTypes_1), 
        ("getSupportedProtocols_1", #["String"], true, m_getSupportedProtocols_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryMediaManager


