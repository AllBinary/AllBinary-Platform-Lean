-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnimationFactoryInitializationVisitor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_visit_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let mut l_commonLabels : JV := (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "PositionStrings" "getInstance_0" #[]) "DX_LABEL")]) "appendfloat_1" #[(JR.toF (<- JR.getField this "dx"))])
    let _ := (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "PositionStrings" "getInstance_0" #[]) "DY_LABEL")]) "appendfloat_1" #[(JR.toF (<- JR.getField this "dy"))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonLabels "WIDTH_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "width")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonLabels "HEIGHT_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "height")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AnimationFactoryInitializationVisitor",
    javaName := "org.allbinary.animation.image.AnimationFactoryInitializationVisitor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("width", (JV.int 0)), ("height", (JV.int 0)), ("dx", (JV.int 0)), ("dy", (JV.int 0)), ("originalDx", (JV.int 0)), ("originalDy", (JV.int 0))],
    statics := #[],
    methods := #[
        ("visit_0", #[], false, m_visit_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnimationFactoryInitializationVisitor


