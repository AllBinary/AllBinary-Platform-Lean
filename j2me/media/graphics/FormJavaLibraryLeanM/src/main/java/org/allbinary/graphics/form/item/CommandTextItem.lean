-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommandTextItem

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isFocusable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_getCommand_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "command")


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    let mut l_layout : JV := (JR.asI (JR.arg jargs 1))
    let mut l_altText : JV := (JR.arg jargs 2)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 3)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "ABTextItem" this #[(<- JR.call l_command "getLabel_0" #[]), l_layout, l_altText, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    JR.setField this "command" l_command
    pure this

initialize JR.registerClass {
    name := "CommandTextItem",
    javaName := "org.allbinary.graphics.form.item.CommandTextItem",
    super := "ABTextItem",
    interfaces := #[],
    isInterface := false,
    fields := #[("command", JV.null)],
    statics := #[],
    methods := #[
        ("isFocusable_0", #[], false, m_isFocusable_0), 
        ("getCommand_0", #[], false, m_getCommand_0), 
        ("jinit_5", #["Command", "int", "String", "BasicColor", "BasicColor"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommandTextItem


