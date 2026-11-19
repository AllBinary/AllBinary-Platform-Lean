-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item.validation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TextItemVisitor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_value : JV := l_anyType
    if JR.truth (<- JR.lt (<- JR.call l_value "length_0" #[]) (JV.int 2)) then
        return (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "TRUE")
    else
        return (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "FALSE")
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Visitor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TextItemVisitor",
    javaName := "org.allbinary.graphics.form.item.validation.TextItemVisitor",
    super := "Visitor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("visit_1", #["Any"], false, m_visit_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TextItemVisitor


