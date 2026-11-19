-- Generated Code Do Not Modify
-- package org.allbinary.logic.java.bool
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BooleanFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "TRUE" (<- JR.new "Boolean" #[(JV.bool true)])
    JR.setField this "FALSE" (<- JR.new "Boolean" #[(JV.bool false)])
    JR.setField this "TRUE_STRING" (<- JR.call (<- JR.getField this "TRUE") "toString_0" #[])
    JR.setField this "FALSE_STRING" (<- JR.call (<- JR.getField this "FALSE") "toString_0" #[])
    JR.setField this "YES" (JV.str "yes")
    JR.setField this "NO" (JV.str "no")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BooleanFactory" "instance" (<- JR.new "BooleanFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BooleanFactory" "instance")


def m_toStringb_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bool : JV := (JR.arg jargs 0)
    if JR.truth l_bool then
        return (<- JR.getField this "TRUE_STRING")
    else
        return (<- JR.getField this "FALSE_STRING")
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BooleanFactory",
    javaName := "org.allbinary.logic.java.bool.BooleanFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("TRUE", JV.null), ("FALSE", JV.null), ("TRUE_STRING", JV.null), ("FALSE_STRING", JV.null), ("YES", JV.null), ("NO", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("toStringb_1", #["boolean"], false, m_toStringb_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BooleanFactory


