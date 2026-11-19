-- Generated Code Do Not Modify
-- package org.allbinary.media
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScaleProperties

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ScaleProperties" "instance" (<- JR.new "ScaleProperties" #[])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "COLON_SEP")]) "appendboolean_1" #[(<- JR.getField this "shouldScale")]) "append_1" #[(JV.str "scaleX: ")]) "appendfloat_1" #[(<- JR.getField this "scaleX")]) "append_1" #[(JV.str "scaleY: ")]) "appendfloat_1" #[(<- JR.getField this "scaleY")]) "append_1" #[(JV.str "scaleWidth: ")]) "appendint_1" #[(<- JR.getField this "scaleWidth")]) "append_1" #[(JV.str "scaleHeight: ")]) "appendint_1" #[(<- JR.getField this "scaleHeight")]) "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ScaleProperties",
    javaName := "org.allbinary.media.ScaleProperties",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("scaleX", (JV.float 0.0)), ("scaleY", (JV.float 0.0)), ("scaleWidth", (JV.int 0)), ("scaleHeight", (JV.int 0)), ("shouldScale", (JV.bool false))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScaleProperties


