-- Generated Code Do Not Modify
-- package org.allbinary.game.score.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoresCanvas

def jfields (this : JV) : JM JV := do
    JR.setField this "paintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "highScoreCommandsFactory" (<- JR.callStatic "HighScoreCommandsFactory" "getInstance_0" #[])
    JR.setField this "waitPaintable" (<- JR.new "SimpleTextPaintable" #[(<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "PLEASE_WAIT_FOR_SERVER"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")])
    JR.setField this "highScoresHelper" (<- JR.new "HighScoresHelperBase" #[])
    JR.setField this "currentCommand" (<- JR.aget (<- JR.getField (<- JR.getField this "highScoreCommandsFactory") "HIGH_SCORE_COMMANDS") (JV.int 0))
    JR.setField this "hasPainted" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "HighScoresCanvas" "removeAllCommands_0" #[])
    let _ := (<- JR.callInherited this "HighScoresCanvas" "addCommand_1" #[(<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "CLOSE_AND_SHOW_GAME_CANVAS")])
    let _ := (<- JR.callInherited this "HighScoresCanvas" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "GameCommandCanvas" this "open_0" #[])
    let _ := (<- JR.call (<- JR.getField this "highScoresCanvasInputProcessor") "open_0" #[])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "GameCommandCanvas" this "close_0" #[])
    let _ := (<- JR.call (<- JR.getField this "highScoresCanvasInputProcessor") "close_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "colorFillPaintable") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "paintable") "paint_1" #[l_graphics])
    if JR.truth (<- JR.ne (<- JR.getField this "waitPaintable") (<- JR.getField this "paintable")) then
        let _ := (<- JR.call (<- JR.getField this "highScoresCanvasInputProcessor") "paint_1" #[l_graphics])
        pure ()
    let _ := (<- JR.callSuper "GameCommandCanvas" this "paint_1" #[l_graphics])
    JR.setField this "hasPainted" (JV.bool true)
    pure JV.null


def m_executeUpdate_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "highScoresFactoryInterface") "fetchHighScores_2" #[(<- JR.call this "getGameInfo_0" #[]), this])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "HighScoresCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "UPDATE"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_getHighScoresPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "highScoresPaintable")


def m_setHighScoresArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_highScoresArray : JV := (JR.arg jargs 0)
    try
        if JR.truth (<- JR.ne l_highScoresArray JV.null) then
            let _ := (<- JR.call (<- JR.getInherited this "HighScoresCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "START")]) "appendint_1" #[(<- JR.alen l_highScoresArray)]) "toString_0" #[]), this, (JV.str "setHighScoresArray")])
            pure ()
        else
            let _ := (<- JR.call (<- JR.getInherited this "HighScoresCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "START"), this, (JV.str "setHighScoresArray")])
            pure ()
        let _ := (<- JR.call (<- JR.getField this "highScoresHelper") "setHighScoresArray_1" #[l_highScoresArray])
        let _ := (<- JR.call this "updateCommand_1" #[(<- JR.getField this "currentCommand")])
        let _ := (<- JR.call this "setPaintable_1" #[(<- JR.call this "getHighScoresPaintable_0" #[])])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getInherited this "HighScoresCanvas" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "UPDATE"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def m_updateCommand_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "HighScoresCanvas" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "START")]) "append_1" #[(<- JR.call (<- JR.getInherited this "HighScoresCanvas" "stringUtil") "toString_1" #[l_command])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "UPDATE")])
    let mut l_gameCommandsFactory : JV := (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call (<- JR.getField this "highScoreCommandsFactory") "isHighScoreCommand_1" #[l_command]) then
        let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "highScoreCommandsFactory") "getIndex_1" #[l_command]))
        let mut l_nextIndex : JV := (JR.asI (<- JR.add l_index (JV.int 1)))
        let mut l_highScoresArray : JV := (<- JR.call (<- JR.getField this "highScoresHelper") "getHighScoresArray_0" #[])
        if JR.truth (<- JR.ge l_nextIndex (<- JR.alen l_highScoresArray)) then
            l_nextIndex := (JR.asI (JV.int 0))
            pure ()
        if JR.truth (<- JR.gt (<- JR.alen l_highScoresArray) (JV.int 0)) then
            let _ := (<- JR.call (<- JR.call this "getHighScoresPaintable_0" #[]) "setHighScores_1" #[(<- JR.aget l_highScoresArray l_index)])
            pure ()
        else
            let _ := (<- JR.call (<- JR.call this "getHighScoresPaintable_0" #[]) "setHighScores_1" #[(<- JR.callStatic "NullHighScoresSingletonFactory" "getInstance_0" #[])])
            pure ()
        if JR.truth (<- JR.ne l_index l_nextIndex) then
            let _ := (<- JR.callInherited this "HighScoresCanvas" "removeAllCommands_0" #[])
            let _ := (<- JR.callInherited this "HighScoresCanvas" "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "CLOSE_AND_SHOW_GAME_CANVAS")])
            let _ := (<- JR.callInherited this "HighScoresCanvas" "addCommand_1" #[(<- JR.aget (<- JR.getField (<- JR.getField this "highScoreCommandsFactory") "HIGH_SCORE_COMMANDS") l_nextIndex)])
            pure ()
        pure ()
    JR.setField this "currentCommand" l_command
    let _ := (<- JR.call this "close_0" #[])
    let _ := (<- JR.callSuper "GameCommandCanvas" this "initMenu_0" #[])
    let _ := (<- JR.call this "open_0" #[])
    let _ := (<- JR.call (<- JR.getInherited this "HighScoresCanvas" "repaintBehavior") "onChangeRepaint_1" #[this])
    pure JV.null


def m_getGameInfo_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameInfo")


def m_setPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_paintable : JV := (JR.arg jargs 0)
    JR.setField this "paintable" l_paintable
    let _ := (<- JR.call (<- JR.getInherited this "HighScoresCanvas" "repaintBehavior") "onChangeRepaint_1" #[this])
    pure JV.null


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_allBinaryGameLayerManager : JV := (JR.arg jargs 1)
    let mut l_gameInfo : JV := (JR.arg jargs 2)
    let mut l_paintable : JV := (JR.arg jargs 3)
    let mut l_highScoresFactoryInterface : JV := (JR.arg jargs 4)
    let mut l_highScoresCanvasInputProcessorFactoryInterface : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "GameCommandCanvas" this #[l_commandListener, (<- JR.getStatic "HighScoresCanvas" "NAME"), (<- JR.call l_allBinaryGameLayerManager "getBackgroundBasicColor_0" #[]), (<- JR.call l_allBinaryGameLayerManager "getForegroundBasicColor_0" #[])]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "HighScoresCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "CONSTRUCTOR")])
    JR.setField this "highScoresPaintable" l_paintable
    JR.setField this "highScoresFactoryInterface" l_highScoresFactoryInterface
    JR.setField this "highScoresCanvasInputProcessor" (<- JR.call l_highScoresCanvasInputProcessorFactoryInterface "getInstance_1" #[this])
    JR.setField this "gameInfo" l_gameInfo
    let _ := (<- JR.call (<- JR.getField this "waitPaintable") "setBasicColorP_1" #[(<- JR.call l_allBinaryGameLayerManager "getForegroundBasicColor_0" #[])])
    let _ := (<- JR.call (<- JR.call this "getHighScoresPaintable_0" #[]) "setBasicColorP_1" #[(<- JR.call l_allBinaryGameLayerManager "getForegroundBasicColor_0" #[])])
    JR.setField this "colorFillPaintable" (<- JR.call (<- JR.callStatic "ColorFillPaintableFactory" "getInstance_0" #[]) "getInstance_2" #[(<- JR.call l_allBinaryGameLayerManager "getBackgroundBasicColor_0" #[]), (JV.bool false)])
    if JR.truth (<- JR.eq (<- JR.alen (<- JR.call (<- JR.getField this "highScoresHelper") "getHighScoresArray_0" #[])) (<- JR.alen (<- JR.getField (<- JR.callStatic "NoHighScoresFactory" "getInstance_0" #[]) "NO_HIGH_SCORES"))) then
        let _ := (<- JR.call this "setPaintable_1" #[(<- JR.getField this "waitPaintable")])
        pure ()
    else
        let _ := (<- JR.call (<- JR.getInherited this "HighScoresCanvas" "logUtil") "putF_3" #[(JV.str "Show HighScores that are already loaded"), this, (<- JR.getField (<- JR.getInherited this "HighScoresCanvas" "commonStrings") "CONSTRUCTOR")])
        let _ := (<- JR.call this "updateCommand_1" #[(<- JR.getField this "currentCommand")])
        let _ := (<- JR.call this "setPaintable_1" #[(<- JR.call this "getHighScoresPaintable_0" #[])])
        pure ()
    let _ := (<- JR.call (<- JR.callStatic "SecondaryThreadPool" "getInstance_0" #[]) "runTask_1" #[(<- JR.new "HighScoreRunnable" #[this])])
    pure this

initialize JR.registerClass {
    name := "HighScoresCanvas",
    javaName := "org.allbinary.game.score.displayable.HighScoresCanvas",
    super := "GameCommandCanvas",
    interfaces := #["HighScoresResultsListener"],
    isInterface := false,
    fields := #[("paintable", JV.null), ("highScoreCommandsFactory", JV.null), ("waitPaintable", JV.null), ("highScoresPaintable", JV.null), ("highScoresFactoryInterface", JV.null), ("colorFillPaintable", JV.null), ("highScoresHelper", JV.null), ("gameInfo", JV.null), ("highScoresCanvasInputProcessor", JV.null), ("currentCommand", JV.null), ("hasPainted", (JV.bool false))],
    statics := #[("NAME", (JV.str "HighScoresCanvas"))],
    methods := #[
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("executeUpdate_0", #[], false, m_executeUpdate_0), 
        ("getHighScoresPaintable_0", #[], false, m_getHighScoresPaintable_0), 
        ("setHighScoresArray_1", #["HighScoresArr"], false, m_setHighScoresArray_1), 
        ("updateCommand_1", #["Command"], false, m_updateCommand_1), 
        ("getGameInfo_0", #[], false, m_getGameInfo_0), 
        ("setPaintable_1", #["Paintable"], false, m_setPaintable_1), 
        ("jinit_6", #["CommandListener", "AllBinaryGameLayerManager", "GameInfo", "HighScoresPaintable", "HighScoresFactoryInterface", "HighScoresCanvasInputProcessorFactoryInterface"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoresCanvas


