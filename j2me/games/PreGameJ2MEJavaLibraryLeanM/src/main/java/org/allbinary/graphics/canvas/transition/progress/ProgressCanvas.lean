-- Generated Code Do Not Modify
-- package org.allbinary.graphics.canvas.transition.progress
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ProgressCanvas

def jfields (this : JV) : JM JV := do
    JR.setField this "GAUGE_PAINTABLE" (<- JR.new "ProgressPaintable" #[this])
    JR.setField this "maxValue" (JR.asF (JV.float 100.0))
    JR.setField this "TEXT" (<- JR.getField (<- JR.getInherited this "ProgressCanvas" "commonStrings") "LOADING")
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    JR.setField this "allbinaryMidlet" (<- JR.callStatic "AllBinaryMidlet" "getNullInstance_0" #[])
    JR.setField this "text" (<- JR.getField this "TEXT")
    JR.setField this "background" (JV.bool true)
    JR.setField this "paintable" (<- JR.getField this "GAUGE_PAINTABLE")
    JR.setField this "inProgress" (JV.bool false)
    JR.setField this "IN_GAME_PROCESSOR" (<- JR.newWith "ProgressCanvas_jAnon1" this #[] #[])
    JR.setField this "inGameProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "progressEndListener" (<- JR.getStatic "ProgressEndListener" "instance")
    JR.setField this "backgroundLabel" (JV.str "Background AI Game Loading...")
    JR.setField this "START_BACKGROUND" (JV.str "startBackground")
    JR.setField this "ADD_PORTION" (JV.str "addPortion")
    JR.setField this "ADD_EARLY_PORTION" (JV.str "addEarlyPortion")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    let _ := (<- JR.call (<- JR.getField this "gauge") "setHeight_1" #[(<- JR.add (<- JR.call l_font "getHeight_0" #[]) (JV.int 2))])
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameMidlet : JV := (JR.arg jargs 0)
    JR.setField this "allbinaryMidlet" l_gameMidlet
    pure JV.null


def m_update_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    pure JV.null


def m_getMaxValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asF (<- JR.getField this "maxValue"))


def m_start_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "ProgressCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "ProgressCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "ProgressCanvas" "commonStrings") "START_METHOD_NAME")])
    let _ := (<- JR.call this "setBackground_1" #[(JV.bool true)])
    let _ := (<- JR.call (<- JR.getField this "gauge") "setHeight_1" #[(JV.int 30)])
    let _ := (<- JR.call (<- JR.getField this "gauge") "setLabel_1" #[(<- JR.getField (<- JR.getInherited this "ProgressCanvas" "commonStrings") "PLEASE_WAIT")])
    let _ := (<- JR.call this "setText_1" #[(<- JR.getField this "TEXT")])
    let _ := (<- JR.call this "setValue_1" #[(JV.int 0)])
    JR.setField this "inGameProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "paintable" (<- JR.getField this "GAUGE_PAINTABLE")
    JR.setField this "inProgress" (JV.bool true)
    pure JV.null


def m_startBackground_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_background : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "ProgressCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "ProgressCanvas" "commonStrings") "START"), this, (<- JR.getField this "START_BACKGROUND")])
    let _ := (<- JR.call this "setBackground_1" #[l_background])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    let _ := (<- JR.call (<- JR.getField this "gauge") "setLabel_1" #[(<- JR.getField this "backgroundLabel")])
    let _ := (<- JR.call this "setText_1" #[(<- JR.getField this "TEXT")])
    let _ := (<- JR.call this "setValue_1" #[(JV.int 0)])
    JR.setField this "inGameProcessor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "paintable" (<- JR.getField this "GAUGE_PAINTABLE")
    pure JV.null


def m_endActual_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "allbinaryMidlet") "commandAction_2" #[(<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "SHOW_GAME_CANVAS"), (<- JR.getStatic "NullCanvas" "NULL_CANVAS")])
    JR.setField this "inProgress" (JV.bool false)
    let _ := (<- JR.call this "inGame_0" #[])
    pure JV.null


def m_inGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "progressEndListener") "onEndEvent_0" #[])
    JR.setField this "inGameProcessor" (<- JR.getField this "IN_GAME_PROCESSOR")
    pure JV.null


def m_end_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "ProgressCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "ProgressCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "ProgressCanvas" "commonStrings") "END_METHOD_NAME")])
    let _ := (<- JR.call (<- JR.getField this "gauge") "setValue_1" #[(<- JR.call this "getMaxValue_0" #[])])
    let _ := (<- JR.call this "endActual_0" #[])
    JR.setField this "paintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    pure JV.null


def m_endFromInitialLazyLoadingComplete_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "progressEndListener") "onEndEvent_0" #[])
    let _ := (<- JR.call (<- JR.getField this "gauge") "setValue_1" #[(<- JR.call this "getMaxValue_0" #[])])
    JR.setField this "inGameProcessor" (<- JR.getField this "IN_GAME_PROCESSOR")
    pure JV.null


def m_isInGame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getField this "inGameProcessor") (<- JR.getField this "IN_GAME_PROCESSOR")) then
        return (JV.bool true)
    return (JV.bool false)


def m_endIfPaintedSinceStart_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_addEarlyPortion_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    let mut l_text : JV := (JR.arg jargs 1)
    let mut l_index : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call this "setText_1" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_text]) "append_1" #[(<- JR.call (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[l_index]) "toString_0" #[])]) "toString_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "gauge") "setValue_1" #[(<- JR.add (<- JR.call (<- JR.getField this "gauge") "getValue_0" #[]) (<- JR.div (<- JR.call this "getMaxValue_0" #[]) (JR.toF l_value)))])
    pure JV.null


def m_addPortion_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    let mut l_text : JV := (JR.arg jargs 1)
    let mut l_index : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call this "setText_1" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_text]) "append_1" #[(<- JR.call (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[l_index]) "toString_0" #[])]) "toString_0" #[])])
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField this "text"), this, (<- JR.getField this "ADD_PORTION")])
    let _ := (<- JR.call (<- JR.getField this "gauge") "setValue_1" #[(<- JR.add (<- JR.call (<- JR.getField this "gauge") "getValue_0" #[]) (<- JR.div (<- JR.call this "getMaxValue_0" #[]) (JR.toF l_value)))])
    pure JV.null


def m_addNormalPortion_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    let mut l_text : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.ne (<- JR.getField this "text") l_text) then
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[l_text, this, (<- JR.getField this "ADD_PORTION")])
        pure ()
    let _ := (<- JR.call this "setText_1" #[l_text])
    let _ := (<- JR.call (<- JR.getField this "gauge") "setValue_1" #[(<- JR.add (<- JR.call (<- JR.getField this "gauge") "getValue_0" #[]) (<- JR.div (<- JR.call this "getMaxValue_0" #[]) (JR.toF l_value)))])
    pure JV.null


def m_setValue_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "value" (JR.asF (JR.toF l_value))
    let _ := (<- JR.call (<- JR.getField this "gauge") "setValue_1" #[(JR.toF l_value)])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "paintable") "paint_1" #[l_graphics])
    pure JV.null


def m_paint2_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.getField this "backgroundBasicColor") "intValue_0" #[])])
    let _ := (<- JR.call l_graphics "fillRect_4" #[(JV.int 0), (JV.int 0), (<- JR.call (<- JR.getInherited this "ProgressCanvas" "displayInfo") "getLastWidth_0" #[]), (<- JR.call (<- JR.getInherited this "ProgressCanvas" "displayInfo") "getLastHeight_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "gauge") "paintXY_3" #[l_graphics, (JV.int 0), (JV.int 0)])
    JR.setField this "hasPainted" (JV.bool true)
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_getValue_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asF (<- JR.getField this "value"))


def m_setText_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    JR.setField this "text" l_text
    pure JV.null


def m_getText_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "text")


def m_setBackground_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_background : JV := (JR.arg jargs 0)
    JR.setField this "background" l_background
    pure JV.null


def m_isBackground_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "background")


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 1)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "RunnableCanvas" this #[(<- JR.getStatic "NullCommandListener" "NULL_COMMAND_LISTENER"), (<- JR.getField (<- JR.callStatic "CanvasStrings" "getInstance_0" #[]) "EMPTY_CHILD_NAME_LIST"), (JV.bool false)]
    let _ <- jfields this
    JR.setField this "backgroundBasicColor" l_backgroundBasicColor
    JR.setField this "gauge" (<- JR.new "ABCustomGaugeItem" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (JR.toI (<- JR.getField this "maxValue")), (JV.int 0), l_backgroundBasicColor, l_foregroundBasicColor])
    pure this

initialize JR.registerClass {
    name := "ProgressCanvas",
    javaName := "org.allbinary.graphics.canvas.transition.progress.ProgressCanvas",
    super := "RunnableCanvas",
    interfaces := #["PaintableInterface", "UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("hasPainted", (JV.bool false)), ("backgroundBasicColor", JV.null), ("GAUGE_PAINTABLE", JV.null), ("maxValue", (JV.float 0.0)), ("gauge", JV.null), ("TEXT", JV.null), ("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null), ("allbinaryMidlet", JV.null), ("value", (JV.float 0.0)), ("text", JV.null), ("background", (JV.bool false)), ("paintable", JV.null), ("inProgress", (JV.bool false)), ("IN_GAME_PROCESSOR", JV.null), ("inGameProcessor", JV.null), ("progressEndListener", JV.null), ("backgroundLabel", JV.null), ("START_BACKGROUND", JV.null), ("ADD_PORTION", JV.null), ("ADD_EARLY_PORTION", JV.null)],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("init_1", #["AllBinaryMidlet"], false, m_init_1), 
        ("update_1", #["Graphics"], false, m_update_1), 
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("getMaxValue_0", #[], false, m_getMaxValue_0), 
        ("start_0", #[], false, m_start_0), 
        ("startBackground_1", #["boolean"], false, m_startBackground_1), 
        ("endActual_0", #[], false, m_endActual_0), 
        ("inGame_0", #[], false, m_inGame_0), 
        ("end_0", #[], false, m_end_0), 
        ("endFromInitialLazyLoadingComplete_0", #[], false, m_endFromInitialLazyLoadingComplete_0), 
        ("isInGame_0", #[], false, m_isInGame_0), 
        ("endIfPaintedSinceStart_0", #[], false, m_endIfPaintedSinceStart_0), 
        ("addEarlyPortion_3", #["int", "String", "int"], false, m_addEarlyPortion_3), 
        ("addPortion_3", #["int", "String", "int"], false, m_addPortion_3), 
        ("addNormalPortion_2", #["int", "String"], false, m_addNormalPortion_2), 
        ("setValue_1", #["int"], false, m_setValue_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paint2_1", #["Graphics"], false, m_paint2_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("getValue_0", #[], false, m_getValue_0), 
        ("setText_1", #["String"], false, m_setText_1), 
        ("getText_0", #[], false, m_getText_0), 
        ("setBackground_1", #["boolean"], false, m_setBackground_1), 
        ("isBackground_0", #[], false, m_isBackground_0), 
        ("jinit_3", #["String", "BasicColor", "BasicColor"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ProgressCanvas


namespace jclass_ProgressCanvas_jAnon1

def jfields (this : JV) : JM JV := do
    JR.setField this "pathFindingThreadPool" (<- JR.callStatic "PathFindingThreadPool" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "pathFindingThreadPool") "runAPriorityTask_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Processor" this jargs
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ProgressCanvas_jAnon1",
    javaName := "org.allbinary.graphics.canvas.transition.progress.ProgressCanvas$1",
    super := "Processor",
    interfaces := #[],
    isInterface := false,
    fields := #[("jouter", JV.null), ("pathFindingThreadPool", JV.null)],
    statics := #[],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ProgressCanvas_jAnon1


