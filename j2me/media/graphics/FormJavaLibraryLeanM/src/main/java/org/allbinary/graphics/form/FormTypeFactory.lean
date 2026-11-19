-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FormTypeFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "UNK" (JV.str "Unknown FormType")
    JR.setField this "NULL_FORM_TYPE" (<- JR.new "FormType" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "NULL_STRING")])
    JR.setField this "TEMP_HORIZONTAL_FORM" (<- JR.new "FormType" #[(JV.str "TempHorizontal")])
    JR.setField this "HORIZONTAL_FORM" (<- JR.new "FormType" #[(JV.str "Horizontal")])
    JR.setField this "VERTICAL_CENTER_FORM" (<- JR.new "FormType" #[(JV.str "Vertical")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FormTypeFactory" "instance" (<- JR.new "FormTypeFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FormTypeFactory" "instance")


def m_getFormType_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let mut l_formType : JV := JV.null
    if JR.truth (<- JR.call l_displayInfo "isPortrait_0" #[]) then
        l_formType := (<- JR.getField this "VERTICAL_CENTER_FORM")
        pure ()
    else
        l_formType := (<- JR.getField this "HORIZONTAL_FORM")
        pure ()
    return l_formType


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FormTypeFactory",
    javaName := "org.allbinary.graphics.form.FormTypeFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("UNK", JV.null), ("NULL_FORM_TYPE", JV.null), ("TEMP_HORIZONTAL_FORM", JV.null), ("HORIZONTAL_FORM", JV.null), ("VERTICAL_CENTER_FORM", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getFormType_0", #[], false, m_getFormType_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FormTypeFactory


