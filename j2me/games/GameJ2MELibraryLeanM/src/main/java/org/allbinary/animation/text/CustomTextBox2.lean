-- Generated Code Do Not Modify
-- package org.allbinary.animation.text
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CustomTextBox2

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let mut l_label : JV := (JR.arg jargs 1)
    let mut l_text : JV := (JR.arg jargs 2)
    let mut l_maxSize : JV := (JR.asI (JR.arg jargs 3))
    let mut l_constraints : JV := (JR.asI (JR.arg jargs 4))
    let mut l_font : JV := (JR.arg jargs 5)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 6)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 7)
    let _ <- JR.superInit "CustomTextBox" this #[l_cmdListener, l_label, l_text, l_maxSize, l_constraints, l_font, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.callInherited this "CustomTextBox2" "getTextFieldItem_0" #[]) "setFocus_1" #[(JV.bool true)])
    pure this

initialize JR.registerClass {
    name := "CustomTextBox2",
    javaName := "org.allbinary.animation.text.CustomTextBox2",
    super := "CustomTextBox",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_8", #["CommandListener", "String", "String", "int", "int", "Font", "BasicColor", "BasicColor"], false, jinit_8)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CustomTextBox2


