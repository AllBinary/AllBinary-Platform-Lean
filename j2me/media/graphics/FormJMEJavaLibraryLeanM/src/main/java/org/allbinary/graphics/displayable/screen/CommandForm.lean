-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable.screen
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommandForm

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "repaintProcessor" (<- JR.call (<- JR.callStatic "ScreenRepaintProcessorFactory" "getInstance_0" #[]) "create_1" #[this])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CommandForm" "NULL_COMMAND_FORM" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getNullCommandForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "CommandForm" "NULL_COMMAND_FORM") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "CommandForm" "NULL_COMMAND_FORM" (<- JR.new "CommandForm" #[(<- JR.getStatic "NullCommandListener" "NULL_COMMAND_LISTENER"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")])
        pure ()
    return (<- JR.getStatic "CommandForm" "NULL_COMMAND_FORM")


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    pure JV.null


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (JV.str "open")])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CLOSE")])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "repaintProcessor") "process_0" #[])
    pure JV.null


def m_getSourceId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_addCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "commandStack") "push_1" #[l_command])
    let _ := (<- JR.callSuper "Form" this "addCommand_1" #[l_command])
    pure JV.null


def m_removeAllCommands_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "commandStack") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.callSuper "Form" this "removeCommand_1" #[(<- JR.call (<- JR.getField this "commandStack") "pop_0" #[])])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_formTitle : JV := (JR.arg jargs 1)
    let mut l_backgrounBasicColor : JV := (JR.arg jargs 2)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "Form" this #[l_formTitle]
    let _ <- jfields this
    JR.setField this "commandStack" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createStack_0" #[])
    try
        let _ := (<- JR.call (<- JR.getField this "repaintProcessor") "process_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR"), l_e])
            pure ()
        else
            throw jex0
    pure this

initialize JR.registerClass {
    name := "CommandForm",
    javaName := "org.allbinary.graphics.displayable.screen.CommandForm",
    super := "Form",
    interfaces := #["MyCommandInterface", "MenuListener"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("repaintProcessor", JV.null), ("commandStack", JV.null)],
    statics := #[("NULL_COMMAND_FORM", JV.null)],
    methods := #[
        ("getNullCommandForm_0", #[], true, m_getNullCommandForm_0), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("update_0", #[], false, m_update_0), 
        ("getSourceId_0", #[], false, m_getSourceId_0), 
        ("addCommand_1", #["Command"], false, m_addCommand_1), 
        ("removeAllCommands_0", #[], false, m_removeAllCommands_0), 
        ("jinit_4", #["CommandListener", "String", "BasicColor", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommandForm


