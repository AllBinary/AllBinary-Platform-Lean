-- Generated Code Do Not Modify
-- package javax.microedition.lcdui
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullCanvas

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullCanvas" "NULL_CANVAS" (<- JR.new "NullCanvas" #[])
    pure JV.null


def m_setFullScreenMode_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mode : JV := (JR.arg jargs 0)
    pure JV.null


def m_sizeChanged_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_w : JV := (JR.asI (JR.arg jargs 0))
    let mut l_h : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_getCommandStack_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_isCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    throw (<- JR.new "RuntimeException" #[])


def m_addCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    pure JV.null


def m_removeCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    pure JV.null


def m_removeAllCommands_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setCommandListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_l : JV := (JR.arg jargs 0)
    pure JV.null


def m_getCustomCommandListener_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_isPaused_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_removePauseCommand_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_pause_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_unPause_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_destroy_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setPaused_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isPaused : JV := (JR.arg jargs 0)
    throw (<- JR.new "RuntimeException" #[])


def m_pointerDragged_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_pointerPressed_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_pointerReleased_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Canvas" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullCanvas",
    javaName := "javax.microedition.lcdui.NullCanvas",
    super := "Canvas",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_CANVAS", JV.null)],
    methods := #[
        ("setFullScreenMode_1", #["boolean"], false, m_setFullScreenMode_1), 
        ("sizeChanged_2", #["int", "int"], false, m_sizeChanged_2), 
        ("getCommandStack_0", #[], false, m_getCommandStack_0), 
        ("isCommand_1", #["Command"], false, m_isCommand_1), 
        ("addCommand_1", #["Command"], false, m_addCommand_1), 
        ("removeCommand_1", #["Command"], false, m_removeCommand_1), 
        ("removeAllCommands_0", #[], false, m_removeAllCommands_0), 
        ("setCommandListener_1", #["CommandListener"], false, m_setCommandListener_1), 
        ("getCustomCommandListener_0", #[], false, m_getCustomCommandListener_0), 
        ("isPaused_0", #[], false, m_isPaused_0), 
        ("removePauseCommand_0", #[], false, m_removePauseCommand_0), 
        ("pause_0", #[], false, m_pause_0), 
        ("unPause_0", #[], false, m_unPause_0), 
        ("process_0", #[], false, m_process_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("destroy_0", #[], false, m_destroy_0), 
        ("setPaused_1", #["boolean"], false, m_setPaused_1), 
        ("pointerDragged_2", #["int", "int"], false, m_pointerDragged_2), 
        ("pointerPressed_2", #["int", "int"], false, m_pointerPressed_2), 
        ("pointerReleased_2", #["int", "int"], false, m_pointerReleased_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullCanvas


