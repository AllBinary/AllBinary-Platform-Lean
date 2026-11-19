-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item.validation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_UsernameValidator

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_textFieldItem : JV := (JR.arg jargs 0)
    let mut l_min : JV := (JR.asI (JR.arg jargs 1))
    let mut l_max : JV := (JR.asI (JR.arg jargs 2))
    let mut l_allowOnEmpty : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "TextFieldItemValidator" this #[l_textFieldItem, l_min, l_max, l_allowOnEmpty]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "UsernameValidator",
    javaName := "org.allbinary.graphics.form.item.validation.UsernameValidator",
    super := "TextFieldItemValidator",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_4", #["ABTextFieldItem", "int", "int", "boolean"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_UsernameValidator


