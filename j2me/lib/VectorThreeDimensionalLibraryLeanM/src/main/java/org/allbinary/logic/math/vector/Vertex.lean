-- Generated Code Do Not Modify
-- package org.allbinary.logic.math.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Vertex

def jfields (this : JV) : JM JV := do
    JR.setField this "x" (<- JR.new "BasicDecimal" #[(JV.int 0)])
    JR.setField this "y" (<- JR.new "BasicDecimal" #[(JV.int 0)])
    JR.setField this "z" (<- JR.new "BasicDecimal" #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_positionStrings : JV := (<- JR.callStatic "PositionStrings" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "X_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "x") "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "Y_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "y") "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "Z_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "z") "toString_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Vertex",
    javaName := "org.allbinary.logic.math.vector.Vertex",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("x", JV.null), ("y", JV.null), ("z", JV.null)],
    statics := #[],
    methods := #[
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Vertex


