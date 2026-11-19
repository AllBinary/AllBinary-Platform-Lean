-- Generated Code Do Not Modify
-- package org.allbinary.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryLayerFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "AllBinaryLayer" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField this "rectangle"), (<- JR.callStatic "ViewPosition" "getInstanceD_0" #[])])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "rectangle" l_rectangle
    pure this

initialize JR.registerClass {
    name := "AllBinaryLayerFactory",
    javaName := "org.allbinary.layer.AllBinaryLayerFactory",
    super := "Object",
    interfaces := #["AllBinaryLayerFactoryInterface"],
    isInterface := false,
    fields := #[("rectangle", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_0", #[], false, m_getInstance_0), 
        ("jinit_1", #["Rectangle"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryLayerFactory


