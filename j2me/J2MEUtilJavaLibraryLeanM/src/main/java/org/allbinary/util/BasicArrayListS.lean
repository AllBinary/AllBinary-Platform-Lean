-- Generated Code Do Not Modify
-- package org.allbinary.util
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicArrayListS

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "BasicArrayList" this #[(<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT_ARRAY")]
    let _ <- jfields this
    if JR.truth (<- JR.lt l_size (JV.int 0)) then
        throw (<- JR.new "IllegalArgumentException" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Init Size Exception: ")]) "appendint_1" #[l_size]) "toString_0" #[])])
    JR.setInherited this "BasicArrayListS" "objectArray" (<- JR.newArray "L" 1 #[l_size])
    pure this

initialize JR.registerClass {
    name := "BasicArrayListS",
    javaName := "org.allbinary.util.BasicArrayListS",
    super := "BasicArrayList",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicArrayListS


