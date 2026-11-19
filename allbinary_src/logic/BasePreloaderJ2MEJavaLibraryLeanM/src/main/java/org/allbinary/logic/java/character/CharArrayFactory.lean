-- Generated Code Do Not Modify
-- package org.allbinary.logic.java.character
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CharArrayFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "zeroCharArray" (<- JR.newArray "C" 1 #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CharArrayFactory" "instance" (<- JR.new "CharArrayFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CharArrayFactory" "instance")


def m_getZeroCharArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "zeroCharArray")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CharArrayFactory",
    javaName := "org.allbinary.logic.java.character.CharArrayFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("zeroCharArray", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getZeroCharArray_0", #[], false, m_getZeroCharArray_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CharArrayFactory


