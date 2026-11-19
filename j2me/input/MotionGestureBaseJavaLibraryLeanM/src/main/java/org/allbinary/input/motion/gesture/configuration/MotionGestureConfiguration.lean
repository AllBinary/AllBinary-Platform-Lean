-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MotionGestureConfiguration

def jfields (this : JV) : JM JV := do
    JR.setField this "diagonalMotionGestureAllowed" (JV.bool true)
    JR.setField this "diagonalTolerance" (JR.asI (JV.int 7))
    JR.setField this "minimumMotionGesture" (JR.asI (JV.int 9))
    JR.setField this "button" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "color" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLUE")
    JR.setField this "executingActions" (JV.bool true)
    JR.setField this "mouseButtonMask" (JR.asI (JV.int 0))
    JR.setField this "activeCommands" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_addMotionGestureAction_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_commandAction : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "activeCommands") "add_1" #[(<- JR.new "MotionGestureToMotionGestureActionAssociation" #[l_list, l_commandAction])])
    pure JV.null


def m_clearMotionGestureAction_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "activeCommands") "clear_0" #[])
    pure JV.null


def m_getAssociateCommandActionsList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "activeCommands")


def m_isDiagonalMotionGestureAllowed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "diagonalMotionGestureAllowed")


def m_isExecutingActionsAllowed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "executingActions")


def m_setExecutingActionsAllowed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_executingActionAllowed : JV := (JR.arg jargs 0)
    JR.setField this "executingActions" l_executingActionAllowed
    pure JV.null


def m_setDiagonalMotionGestureAllowed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_diagonalMotionGestureAllowed : JV := (JR.arg jargs 0)
    JR.setField this "diagonalMotionGestureAllowed" l_diagonalMotionGestureAllowed
    pure JV.null


def m_getDiagonalTolerance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "diagonalTolerance"))


def m_setDiagonalTolerance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_diagonalTolerance : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "diagonalTolerance" (JR.asI l_diagonalTolerance)
    pure JV.null


def m_getMinimumMotionGesture_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "minimumMotionGesture"))


def m_setMinimumMotionGesture_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_minimumMotionGesture : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "minimumMotionGesture" (JR.asI l_minimumMotionGesture)
    pure JV.null


def m_getButton_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "button")


def m_setButton_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_button : JV := (JR.arg jargs 0)
    JR.setField this "button" l_button
    pure JV.null


def m_getColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "color")


def m_setColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_color : JV := (JR.arg jargs 0)
    JR.setField this "color" l_color
    pure JV.null


def m_getMouseButtonMask_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "mouseButtonMask"))


def m_setMouseButtonMask_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mouseButtonMask : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "mouseButtonMask" (JR.asI l_mouseButtonMask)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MotionGestureConfiguration",
    javaName := "org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("diagonalMotionGestureAllowed", (JV.bool false)), ("diagonalTolerance", (JV.int 0)), ("minimumMotionGesture", (JV.int 0)), ("button", JV.null), ("color", JV.null), ("executingActions", (JV.bool false)), ("mouseButtonMask", (JV.int 0)), ("activeCommands", JV.null)],
    statics := #[],
    methods := #[
        ("addMotionGestureAction_2", #["BasicArrayList", "CompleteMotionGestureInputEvent"], false, m_addMotionGestureAction_2), 
        ("clearMotionGestureAction_0", #[], false, m_clearMotionGestureAction_0), 
        ("getAssociateCommandActionsList_0", #[], false, m_getAssociateCommandActionsList_0), 
        ("isDiagonalMotionGestureAllowed_0", #[], false, m_isDiagonalMotionGestureAllowed_0), 
        ("isExecutingActionsAllowed_0", #[], false, m_isExecutingActionsAllowed_0), 
        ("setExecutingActionsAllowed_1", #["boolean"], false, m_setExecutingActionsAllowed_1), 
        ("setDiagonalMotionGestureAllowed_1", #["boolean"], false, m_setDiagonalMotionGestureAllowed_1), 
        ("getDiagonalTolerance_0", #[], false, m_getDiagonalTolerance_0), 
        ("setDiagonalTolerance_1", #["int"], false, m_setDiagonalTolerance_1), 
        ("getMinimumMotionGesture_0", #[], false, m_getMinimumMotionGesture_0), 
        ("setMinimumMotionGesture_1", #["int"], false, m_setMinimumMotionGesture_1), 
        ("getButton_0", #[], false, m_getButton_0), 
        ("setButton_1", #["String"], false, m_setButton_1), 
        ("getColor_0", #[], false, m_getColor_0), 
        ("setColor_1", #["BasicColor"], false, m_setColor_1), 
        ("getMouseButtonMask_0", #[], false, m_getMouseButtonMask_0), 
        ("setMouseButtonMask_1", #["int"], false, m_setMouseButtonMask_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MotionGestureConfiguration


