-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImmediateCommandFormInputProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "timeHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 25)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onPressGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    try
        let _ := (<- JR.callSuper "CommandFormInputProcessor" this "onPressGameKeyEvent_1" #[l_gameKeyEvent])
        if JR.truth (<- JR.call (<- JR.getField this "timeHelper") "isTimeTNT_0" #[]) then
            let _ := (<- JR.callInherited this "ImmediateCommandFormInputProcessor" "processInputList_0" #[])
            let _ := (<- JR.call (<- JR.getField (<- JR.getField this "gameCommandCanvas") "repaintBehavior") "onChangeRepaint_1" #[(<- JR.callInherited this "ImmediateCommandFormInputProcessor" "getCanvas_0" #[])])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "gameInputStrings") "ON_PRESS_GAME_KEY"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_onDownGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    try
        let _ := (<- JR.callSuper "CommandFormInputProcessor" this "onDownGameKeyEvent_1" #[l_gameKeyEvent])
        if JR.truth (<- JR.call (<- JR.getField this "timeHelper") "isTimeTNT_0" #[]) then
            let _ := (<- JR.callInherited this "ImmediateCommandFormInputProcessor" "processInputList_0" #[])
            let _ := (<- JR.call (<- JR.getField (<- JR.getField this "gameCommandCanvas") "repaintBehavior") "onChangeRepaint_1" #[(<- JR.callInherited this "ImmediateCommandFormInputProcessor" "getCanvas_0" #[])])
            pure ()
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "gameInputStrings") "ON_DOWN_GAME_KEY"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def m_onUpGameKeyEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEvent : JV := (JR.arg jargs 0)
    try
        let _ := (<- JR.callSuper "CommandFormInputProcessor" this "onUpGameKeyEvent_1" #[l_gameKeyEvent])
        if JR.truth (<- JR.call (<- JR.getField this "timeHelper") "isTimeTNT_0" #[]) then
            let _ := (<- JR.callInherited this "ImmediateCommandFormInputProcessor" "processInputList_0" #[])
            let _ := (<- JR.call (<- JR.getField (<- JR.getField this "gameCommandCanvas") "repaintBehavior") "onChangeRepaint_1" #[(<- JR.callInherited this "ImmediateCommandFormInputProcessor" "getCanvas_0" #[])])
            pure ()
        pure ()
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.call (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "gameInputStrings") "ON_UP_GAME_KEY"), l_e])
            pure ()
        else
            throw jex2
    pure JV.null


def m_onMotionGestureEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGestureEvent : JV := (JR.arg jargs 0)
    try
        let _ := (<- JR.callSuper "CommandFormInputProcessor" this "onMotionGestureEvent_1" #[l_motionGestureEvent])
        if JR.truth (<- JR.call (<- JR.getField this "timeHelper") "isTimeTNT_0" #[]) then
            let _ := (<- JR.callInherited this "ImmediateCommandFormInputProcessor" "processInputList_0" #[])
            let _ := (<- JR.call (<- JR.getField (<- JR.getField this "gameCommandCanvas") "repaintBehavior") "onChangeRepaint_1" #[(<- JR.callInherited this "ImmediateCommandFormInputProcessor" "getCanvas_0" #[])])
            pure ()
        pure ()
    catch jex3 =>
        if (<- JR.isInstanceOfAny jex3 #["Exception"]) then
            let mut l_e : JV := jex3
            let _ := (<- JR.call (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "ImmediateCommandFormInputProcessor" "commonStrings") "EXCEPTION"), this, (JV.str "onMotionGestureEvent"), l_e])
            pure ()
        else
            throw jex3
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEventList : JV := (JR.arg jargs 0)
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_gameCommandCanvas : JV := (JR.arg jargs 2)
    let mut l_form : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "CommandFormInputProcessor" this #[l_gameKeyEventList, l_playerInputId, l_gameCommandCanvas, l_form]
    let _ <- jfields this
    JR.setField this "gameCommandCanvas" l_gameCommandCanvas
    pure this

initialize JR.registerClass {
    name := "ImmediateCommandFormInputProcessor",
    javaName := "org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor",
    super := "CommandFormInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("timeHelper", JV.null), ("gameCommandCanvas", JV.null)],
    statics := #[],
    methods := #[
        ("onPressGameKeyEvent_1", #["GameKeyEvent"], false, m_onPressGameKeyEvent_1), 
        ("onDownGameKeyEvent_1", #["GameKeyEvent"], false, m_onDownGameKeyEvent_1), 
        ("onUpGameKeyEvent_1", #["GameKeyEvent"], false, m_onUpGameKeyEvent_1), 
        ("onMotionGestureEvent_1", #["MotionGestureEvent"], false, m_onMotionGestureEvent_1), 
        ("jinit_4", #["BasicArrayList", "int", "GameCommandCanvas", "ScrollSelectionForm"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImmediateCommandFormInputProcessor


