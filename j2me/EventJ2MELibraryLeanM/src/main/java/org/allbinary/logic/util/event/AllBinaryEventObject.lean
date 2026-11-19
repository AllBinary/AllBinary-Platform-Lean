-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryEventObject

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinaryEventObject" "NULL_EVENT" (<- JR.new "AllBinaryEventObject" #[(<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")])
    pure JV.null


def m_getSource_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "source")


def m_setSource_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_source : JV := (JR.arg jargs 0)
    JR.setField this "source" l_source
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "source" l_anyType
    pure this

initialize JR.registerClass {
    name := "AllBinaryEventObject",
    javaName := "org.allbinary.logic.util.event.AllBinaryEventObject",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("source", JV.null)],
    statics := #[("NULL_EVENT", JV.null)],
    methods := #[
        ("getSource_0", #[], false, m_getSource_0), 
        ("setSource_1", #["Any"], false, m_setSource_1), 
        ("jinit_1", #["Any"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryEventObject


