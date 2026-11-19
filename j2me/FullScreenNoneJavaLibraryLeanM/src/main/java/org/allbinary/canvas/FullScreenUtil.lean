-- Generated Code Do Not Modify
-- package org.allbinary.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FullScreenUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FullScreenUtil" "instance" (<- JR.new "FullScreenUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FullScreenUtil" "instance")


def m_initOnRun_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fullScreenInterface : JV := (JR.arg jargs 0)
    let mut l_commandListener : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.ne l_commandListener JV.null) then
        let _ := (<- JR.call this "init_1" #[l_fullScreenInterface])
        pure ()
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fullScreenInterface : JV := (JR.arg jargs 0)
    pure JV.null


def m_isScreenChange_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isFullScreen : JV := (JR.arg jargs 0)
    let mut l_mainFeatureFactory : JV := (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if JR.truth (<- JR.ne (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_mainFeatureFactory "FULL_SCREEN")]) l_isFullScreen) then
        return (JV.bool true)
    return (JV.bool false)


def m_isScreenChangeCanvas_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fullScreenInterface : JV := (JR.arg jargs 0)
    return (<- JR.call this "isScreenChange_1" #[(JV.bool false)])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FullScreenUtil",
    javaName := "org.allbinary.canvas.FullScreenUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("initOnRun_2", #["Canvas", "CommandListener"], false, m_initOnRun_2), 
        ("init_1", #["Canvas"], false, m_init_1), 
        ("isScreenChange_1", #["boolean"], false, m_isScreenChange_1), 
        ("isScreenChangeCanvas_1", #["Canvas"], false, m_isScreenChangeCanvas_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FullScreenUtil


