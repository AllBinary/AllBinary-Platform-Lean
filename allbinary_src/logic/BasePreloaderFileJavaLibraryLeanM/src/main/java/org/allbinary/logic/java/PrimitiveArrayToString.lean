-- Generated Code Do Not Modify
-- package org.allbinary.logic.java
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PrimitiveArrayToString

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_toString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_floats : JV := (JR.arg jargs 0)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_floats))) then break
            let _ := (<- JR.call l_stringBuffer "appendfloat_1" #[(<- JR.aget l_floats l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PrimitiveArrayToString",
    javaName := "org.allbinary.logic.java.PrimitiveArrayToString",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("toString_1", #["floatArr"], true, m_toString_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PrimitiveArrayToString


