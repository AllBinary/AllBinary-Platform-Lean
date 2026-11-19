-- Generated Code Do Not Modify
-- package org.allbinary.logic
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "NULL_OBJECT" (<- JR.new "Object" #[])
    JR.setField this "NULL_CLASS" (<- JR.call (<- JR.getField this "NULL_OBJECT") "getClass_0" #[])
    JR.setField this "NULL_OBJECT_ARRAY" (<- JR.newArray "L" 1 #[(JV.int 0)])
    JR.setField this "NULL_CHAR_ARRAY" (<- JR.newArray "C" 1 #[(JV.int 0)])
    JR.setField this "NULL_BYTE_ARRAY" (<- JR.newArray "B" 1 #[(JV.int 0)])
    JR.setField this "NULL_SHORT_ARRAY_ARRAY" (<- JR.newArray "S" 2 #[(JV.int 0), (JV.int 0)])
    JR.setField this "NULL_INT_ARRAY" (<- JR.newArray "I" 1 #[(JV.int 0)])
    JR.setField this "NULL_INT_ARRAY_ARRAY" (<- JR.newArray "I" 2 #[(JV.int 0), (JV.int 0)])
    JR.setField this "NULL_INT_ARRAY_ARRAY_ARRAY" (<- JR.newArray "I" 3 #[(JV.int 0), (JV.int 0), (JV.int 0)])
    JR.setField this "NULL_FLOAT_ARRAY" (<- JR.newArray "F" 1 #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullUtil" "instance" (<- JR.new "NullUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullUtil" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullUtil",
    javaName := "org.allbinary.logic.NullUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NULL_OBJECT", JV.null), ("NULL_CLASS", JV.null), ("NULL_OBJECT_ARRAY", JV.null), ("NULL_CHAR_ARRAY", JV.null), ("NULL_BYTE_ARRAY", JV.null), ("NULL_SHORT_ARRAY_ARRAY", JV.null), ("NULL_INT_ARRAY", JV.null), ("NULL_INT_ARRAY_ARRAY", JV.null), ("NULL_INT_ARRAY_ARRAY_ARRAY", JV.null), ("NULL_FLOAT_ARRAY", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullUtil


