-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.visitor
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Visitor

def jfields (this : JV) : JM JV := do
    JR.setField this "nullUtil" (<- JR.callStatic "NullUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Visitor" "instance" (<- JR.new "Visitor" #[])
    pure JV.null


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    return (<- JR.getField (<- JR.getField this "nullUtil") "NULL_OBJECT")


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "Visitor" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Visitor",
    javaName := "org.allbinary.logic.util.visitor.Visitor",
    super := "Object",
    interfaces := #["VisitorInterface"],
    isInterface := false,
    fields := #[("nullUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("visit_1", #["Any"], false, m_visit_1), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Visitor


