-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommandCurrentSelectionFormFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_items : JV := (JR.arg jargs 1)
    let mut l_rectangle : JV := (JR.arg jargs 2)
    let mut l_formType : JV := (JR.arg jargs 3)
    let mut l_border : JV := (JR.asI (JR.arg jargs 4))
    let mut l_moveForSmallScreen : JV := (JR.arg jargs 5)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 6)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 7)
    if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField (<- JR.callStatic "TouchFeatureFactory" "getInstance_0" #[]) "TOUCH_ENABLED")]) then
        let mut l_scrollSelectionForm : JV := (<- JR.new "CommandCurrentSelectionForm" #[l_title, l_items, l_border, l_moveForSmallScreen, l_backgroundBasicColor, l_foregroundBasicColor])
        let _ := (<- JR.call l_scrollSelectionForm "init_2" #[l_rectangle, l_formType])
        return l_scrollSelectionForm
    else
        return (<- JR.callStatic "ScrollSelectionFormNoneFactory" "getInstance_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CommandCurrentSelectionFormFactory",
    javaName := "org.allbinary.graphics.form.CommandCurrentSelectionFormFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_8", #["String", "ABCustomItemArr", "Rectangle", "FormType", "int", "boolean", "BasicColor", "BasicColor"], true, m_getInstance_8), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommandCurrentSelectionFormFactory


