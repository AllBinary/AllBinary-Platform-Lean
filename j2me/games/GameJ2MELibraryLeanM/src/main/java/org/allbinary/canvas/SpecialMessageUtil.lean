-- Generated Code Do Not Modify
-- package org.allbinary.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpecialMessageUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SpecialMessageUtil" "SINGLETON" (<- JR.new "SpecialMessageUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SpecialMessageUtil" "SINGLETON")


def m_get_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.callStatic "Memory" "getInfo_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "GameStatisticsFactory" "getInstance_0" #[]) "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Option: ")])
    if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL_AUTO_SELECT")]) then
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL_AUTO_SELECT") "getName_0" #[])])
        pure ()
    else
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL_MINIMUM") "getName_0" #[])])
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SpecialMessageUtil",
    javaName := "org.allbinary.canvas.SpecialMessageUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("get_0", #[], false, m_get_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpecialMessageUtil


