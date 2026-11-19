-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MyCanvas

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "canvasStrings" (<- JR.callStatic "CanvasStrings" "getInstance_0" #[])
    JR.setField this "stringUtil" (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    JR.setField this "displayInfo" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "commandListener" (<- JR.getStatic "NullCommandListener" "NULL_COMMAND_LISTENER")
    JR.setField this "touchME" (<- JR.new "TouchJ2ME" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "Canvas" this "getWidth_0" #[]))


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "Canvas" this "getHeight_0" #[]))


def m_setFullScreenMode_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mode : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "Canvas" this "setFullScreenMode_1" #[l_mode])
    let _ := (<- JR.call (<- JR.getField this "displayInfo") "update_2" #[this, (<- JR.getField (<- JR.getField this "canvasStrings") "SET_FULL_SCREEN_MODE")])
    pure JV.null


def m_sizeChanged_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_w : JV := (JR.asI (JR.arg jargs 0))
    let mut l_h : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "displayInfo") "update_2" #[this, (<- JR.getField (<- JR.getField this "canvasStrings") "SIZE_CHANGED")])
    pure JV.null


def m_getCommandStack_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "commandStack")


def m_isCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "commandStack") "contains_1" #[l_command])


def m_addCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "commandStack") "contains_1" #[l_command])) then
        let _ := (<- JR.call (<- JR.getField this "commandStack") "push_1" #[l_command])
        let _ := (<- JR.callSuper "Canvas" this "addCommand_1" #[l_command])
        pure ()
    pure JV.null


def m_removeCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "commandStack") "removeElement_1" #[l_command])
    let _ := (<- JR.callSuper "Canvas" this "removeCommand_1" #[l_command])
    pure JV.null


def m_removeAllCommands_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "commandStack") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.callSuper "Canvas" this "removeCommand_1" #[(<- JR.call (<- JR.getField this "commandStack") "pop_0" #[])])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_setCommandListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_l : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "Canvas" this "setCommandListener_1" #[l_l])
    JR.setField this "commandListener" l_l
    pure JV.null


def m_getCustomCommandListener_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "commandListener")


def m_isPaused_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "paused")


def m_removePauseCommand_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "removeCommand_1" #[(<- JR.getField (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[]) "PAUSE_COMMAND")])
    pure JV.null


def m_pause_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "canvasStrings") "PAUSE")])
    let _ := (<- JR.call this "removePauseCommand_0" #[])
    let _ := (<- JR.call this "addCommand_1" #[(<- JR.getField (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[]) "RESUME_COMMAND")])
    let _ := (<- JR.call this "setPaused_1" #[(JV.bool true)])
    pure JV.null


def m_unPause_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "canvasStrings") "UN_PAUSE")])
    let _ := (<- JR.call this "removeCommand_1" #[(<- JR.getField (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[]) "RESUME_COMMAND")])
    let _ := (<- JR.call this "addCommand_1" #[(<- JR.getField (<- JR.callStatic "MyCommandsFactory" "getInstance_0" #[]) "PAUSE_COMMAND")])
    let _ := (<- JR.call this "setPaused_1" #[(JV.bool false)])
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "displayInfo") "process_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_draw_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_hasChild_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayable : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "childNameList") "contains_1" #[(<- JR.getField l_displayable "name")])


def m_destroy_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Destroyed MyCanvas"), this, (JV.str "destroy")])
    pure JV.null


def m_setPaused_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isPaused : JV := (JR.arg jargs 0)
    JR.setField this "paused" l_isPaused
    pure JV.null


def m_keyPressedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_keyRepeatedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_keyReleasedByDevice_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_pointerDragged_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "touchME") "pointerDragged_2" #[l_x, l_y])
    pure JV.null


def m_pointerPressed_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "touchME") "pointerPressed_2" #[l_x, l_y])
    pure JV.null


def m_pointerReleased_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "touchME") "pointerReleased_2" #[l_x, l_y])
    pure JV.null


def m_nextSong_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_nextSongSound : JV := (JR.arg jargs 0)
    let mut l_leftVolume : JV := (JR.asI (JR.arg jargs 1))
    let mut l_rightVolume : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_childNameList : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Canvas" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR")])
    let _ := (<- JR.call (<- JR.getField this "displayInfo") "update_2" #[this, (<- JR.getField (<- JR.getField this "canvasStrings") "CONSTRUCTOR")])
    JR.setField this "name" l_name
    JR.setField this "childNameList" l_childNameList
    JR.setField this "commandStack" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createStack_0" #[])
    pure this

initialize JR.registerClass {
    name := "MyCanvas",
    javaName := "org.allbinary.graphics.displayable.MyCanvas",
    super := "Canvas",
    interfaces := #["DisplayableInterface", "MyCommandInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("canvasStrings", JV.null), ("stringUtil", JV.null), ("displayInfo", JV.null), ("name", JV.null), ("childNameList", JV.null), ("commandStack", JV.null), ("commandListener", JV.null), ("paused", (JV.bool false)), ("touchME", JV.null)],
    statics := #[],
    methods := #[
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("getHeight_0", #[], false, m_getHeight_0), 
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
        ("draw_1", #["Graphics"], false, m_draw_1), 
        ("hasChild_1", #["MyCanvas"], false, m_hasChild_1), 
        ("destroy_0", #[], false, m_destroy_0), 
        ("setPaused_1", #["boolean"], false, m_setPaused_1), 
        ("keyPressedByDevice_2", #["int", "int"], false, m_keyPressedByDevice_2), 
        ("keyRepeatedByDevice_2", #["int", "int"], false, m_keyRepeatedByDevice_2), 
        ("keyReleasedByDevice_2", #["int", "int"], false, m_keyReleasedByDevice_2), 
        ("pointerDragged_2", #["int", "int"], false, m_pointerDragged_2), 
        ("pointerPressed_2", #["int", "int"], false, m_pointerPressed_2), 
        ("pointerReleased_2", #["int", "int"], false, m_pointerReleased_2), 
        ("nextSong_3", #["Sound", "int", "int"], false, m_nextSong_3), 
        ("jinit_2", #["String", "BasicArrayList"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MyCanvas


