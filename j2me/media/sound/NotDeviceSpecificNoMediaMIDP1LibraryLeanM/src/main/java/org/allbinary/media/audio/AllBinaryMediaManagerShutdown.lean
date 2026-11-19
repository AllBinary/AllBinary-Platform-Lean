-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryMediaManagerShutdown

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinaryMediaManagerShutdown" "instance" (<- JR.new "AllBinaryMediaManagerShutdown" #[])
    pure JV.null


def m_shutdown_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_soundsFactoryInterface : JV := (JR.arg jargs 0)
    let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.getField l_commonStrings "START"), (<- JR.getStatic "AllBinaryMediaManagerShutdown" "instance"), (JV.str "shutdown")])
    let _ := (<- JR.callStatic "AllBinaryMediaManager" "shutdown_1" #[l_soundsFactoryInterface])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryMediaManagerShutdown",
    javaName := "org.allbinary.media.audio.AllBinaryMediaManagerShutdown",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("shutdown_1", #["SoundsFactoryInterface"], true, m_shutdown_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryMediaManagerShutdown


