-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PopupCommandFormInputProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (<- JR.callSuper "CommandFormInputProcessor" this "processInput_1" #[l_key]))


def m_processMotionInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGestureEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "CommandFormInputProcessor" this "processMotionInput_1" #[l_motionGestureEvent])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEventList : JV := (JR.arg jargs 0)
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_gameCanvas : JV := (JR.arg jargs 2)
    let mut l_form : JV := (JR.arg jargs 3)
    let mut l_popupMenuInputProcessor : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "CommandFormInputProcessor" this #[l_gameKeyEventList, l_playerInputId, l_gameCanvas, l_form]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PopupCommandFormInputProcessor",
    javaName := "org.allbinary.game.displayable.canvas.PopupCommandFormInputProcessor",
    super := "CommandFormInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("processInput_1", #["int"], false, m_processInput_1), 
        ("processMotionInput_1", #["MotionGestureEvent"], false, m_processMotionInput_1), 
        ("jinit_5", #["BasicArrayList", "int", "MyCanvas", "ScrollSelectionForm", "PopupMenuInputProcessor"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PopupCommandFormInputProcessor


