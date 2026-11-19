-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommandFormInputProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "MOTION_GESTURE_SOURCE_ID" (JR.asI (<- JR.getField (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[]) "MOTION_GESTURE_SOURCE_ID"))
    JR.setField this "CLICK_DELAY" (JR.asI (JV.int 150))
    JR.setField this "clickTimeHelper" (<- JR.new "TimeDelayHelper" #[(<- JR.getField this "CLICK_DELAY")])
    JR.setField this "DOUBLE_CLICK_DELAY" (JR.asI (JV.int 1200))
    JR.setField this "doubleClickTimeHelper" (<- JR.new "TimeDelayHelper" #[(<- JR.getField this "DOUBLE_CLICK_DELAY")])
    JR.setField this "isSingleKeyProcessing" (<- JR.call (<- JR.callStatic "InputFeatureFactory" "getInstance_0" #[]) "isSingleKeyProcessing_0" #[])
    JR.setField this "hasPressed" (JV.bool false)
    JR.setField this "PROCESS_COMMAND" (JV.str "processCommand")
    JR.setField this "NAME_LABEL" (JV.str " ScrollSelectionForm: ")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.cor (<- JR.cor (<- JR.cor (<- JR.eq l_key (<- JR.getStatic "Canvas" "LEFT")) (do pure (<- JR.eq l_key (<- JR.getStatic "Canvas" "RIGHT")))) (do pure (<- JR.eq l_key (<- JR.getStatic "Canvas" "UP")))) (do pure (<- JR.eq l_key (<- JR.getStatic "Canvas" "DOWN")))) then
        let _ := (<- JR.call (<- JR.callStatic "PrimaryPlayerQueueFactory" "getInstance_0" #[]) "add_1" #[(<- JR.callStatic "SelectSound" "getInstance_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "form") "processInputKey_1" #[l_key])
        return (JR.asI (JV.int 1))
    else
        if JR.truth (<- JR.eq l_key (<- JR.getStatic "Canvas" "FIRE")) then
            let _ := (<- JR.call (<- JR.callStatic "PrimaryPlayerQueueFactory" "getInstance_0" #[]) "add_1" #[(<- JR.callStatic "SelectSound" "getInstance_0" #[])])
            return (JR.asI (<- JR.call this "processCommand_0" #[]))
    return (JR.asI (JV.int 0))


def m_processCommand_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandCurrentSelectionForm : JV := (<- JR.getField this "form")
    let mut l_command : JV := (<- JR.call l_commandCurrentSelectionForm "getSelectedCommand_0" #[])
    let _ := (<- JR.call (<- JR.getInherited this "CommandFormInputProcessor" "logUtil") "putF_3" #[(<- JR.call l_command "toString_0" #[]), this, (<- JR.getField this "PROCESS_COMMAND")])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_openGLFeatureFactory : JV := (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.cand (<- JR.cand (<- JR.getStatic "SWTUtil" "isSWT") (do pure (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_openGLFeatureFactory "OPENGL")]))) (do pure (<- JR.ne l_command (<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "EXIT_COMMAND")))) then
        let _ := (<- JR.call (<- JR.new "CommandRunnable" #[this, l_command]) "run_0" #[])
        pure ()
    else
        let _ := (<- JR.call (<- JR.callStatic "PrimaryThreadPool" "getInstance_0" #[]) "runTask_1" #[(<- JR.new "CommandRunnable" #[this, l_command])])
        pure ()
    if JR.truth (<- JR.eq l_command (<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "QUIT_COMMAND")) then
        return (JR.asI (JV.int (-1)))
    else
        return (JR.asI (JV.int 1))
    pure JV.null


def m_processInputList_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_motionInputsIndex : JV := (JR.asI (<- JR.call this "processMotionInputs_0" #[]))
        let mut l_list : JV := (<- JR.callInherited this "CommandFormInputProcessor" "getGameKeyEventList_0" #[])
        let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
        let mut l_key : JV := (JR.asI (JV.int 0))
        let mut l_gameKeyEvent : JV := JV.null
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                l_gameKeyEvent := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
                l_key := (JR.asI (<- JR.call l_gameKeyEvent "getKey_0" #[]))
                if JR.truth (<- JR.ne (<- JR.call l_gameKeyEvent "getSourceId_0" #[]) (<- JR.getField this "MOTION_GESTURE_SOURCE_ID")) then
                    if JR.truth (<- JR.eq (<- JR.call this "processInput_1" #[l_key]) (JV.int 1)) then
                        break
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        let _ := (<- JR.callInherited this "CommandFormInputProcessor" "clear_0" #[])
        if JR.truth (<- JR.cor (<- JR.gt l_size (JV.int 0)) (do pure (<- JR.ge l_motionInputsIndex (JV.int 0)))) then
            return (JR.asI (JV.int 1))
        else
            return (JR.asI (JV.int (-1)))
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "CommandFormInputProcessor" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "CommandFormInputProcessor" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "CommandFormInputProcessor" "gameInputStrings") "PROCESS_INPUT"), l_e])
            return (JR.asI (JV.int (-1)))
        else
            throw jex0
    pure JV.null


def m_processMotionInputs_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lastIndex : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getInherited this "CommandFormInputProcessor" "motionGestureEventList") "size_0" #[]) (JV.int 1)))
    if JR.truth (<- JR.ge l_lastIndex (JV.int 0)) then
        let mut l_motionGestureEvent : JV := (<- JR.aget (<- JR.getField (<- JR.getInherited this "CommandFormInputProcessor" "motionGestureEventList") "objectArray") l_lastIndex)
        let _ := (<- JR.call this "processMotionInput_1" #[l_motionGestureEvent])
        pure ()
    let _ := (<- JR.call (<- JR.getInherited this "CommandFormInputProcessor" "motionGestureEventList") "clear_0" #[])
    return (JR.asI l_lastIndex)


def m_processMotionInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGestureEvent : JV := (JR.arg jargs 0)
    let mut l_touchMotionGestureFactory : JV := (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[])
    let mut l_motionGestureInput : JV := (<- JR.call l_motionGestureEvent "getMotionGesture_0" #[])
    if JR.truth (<- JR.eq l_motionGestureInput (<- JR.getField l_touchMotionGestureFactory "RELEASED")) then
        let mut l_point : JV := (<- JR.call l_motionGestureEvent "getCurrentPoint_0" #[])
        if JR.truth (<- JR.call (<- JR.getField this "form") "isInForm_1" #[l_point]) then
            let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "form") "getSelectedIndexForPoint_1" #[l_point]))
            if JR.truth (<- JR.ne l_index (JV.int (-1))) then
                let _ := (<- JR.call (<- JR.callStatic "PrimaryPlayerQueueFactory" "getInstance_0" #[]) "add_1" #[(<- JR.callStatic "SelectSound" "getInstance_0" #[])])
                if JR.truth (<- JR.eq l_index (<- JR.call (<- JR.getField this "form") "getSelectedIndex_0" #[])) then
                    if JR.truth (<- JR.call (<- JR.getField this "clickTimeHelper") "isTimeTNT_0" #[]) then
                        let _ := (<- JR.call this "processCommand_0" #[])
                        pure ()
                    pure ()
                else
                    let _ := (<- JR.call (<- JR.getField this "form") "setSelectedIndex_1" #[l_index])
                    pure ()
                pure ()
            else
                pure ()
            pure ()
        if JR.truth (<- JR.getField this "hasPressed") then
            if JR.truth (JR.not (<- JR.call (<- JR.getField this "doubleClickTimeHelper") "isTimeTNT_0" #[])) then
                let _ := (<- JR.call (<- JR.getInherited this "CommandFormInputProcessor" "logUtil") "putF_3" #[(JV.str "Double Press"), this, (<- JR.getField (<- JR.getInherited this "CommandFormInputProcessor" "gameInputStrings") "PROCESS_MOTION_INPUT")])
                let _ := (<- JR.call this "processCommand_0" #[])
                pure ()
            JR.setField (<- JR.getField this "doubleClickTimeHelper") "delay" (JR.asI (<- JR.getField this "DOUBLE_CLICK_DELAY"))
            let _ := (<- JR.call (<- JR.getField this "doubleClickTimeHelper") "setStartTimeTNT_0" #[])
            pure ()
        JR.setField this "hasPressed" (JV.bool false)
        pure ()
    else
        if JR.truth (<- JR.eq l_motionGestureInput (<- JR.getField l_touchMotionGestureFactory "PRESSED")) then
            JR.setField (<- JR.getField this "doubleClickTimeHelper") "delay" (JR.asI (JV.int 0))
            JR.setField this "hasPressed" (JV.bool true)
            pure ()
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.callSuper "BasicMenuInputProcessor" this "toString_0" #[])]) "append_1" #[(<- JR.getField this "NAME_LABEL")]) "append_1" #[(<- JR.call (<- JR.getField this "form") "toString_0" #[])]) "toString_0" #[])


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEventList : JV := (JR.arg jargs 0)
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_gameCanvas : JV := (JR.arg jargs 2)
    let mut l_form : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "BasicMenuInputProcessor" this #[l_gameKeyEventList, l_playerInputId, l_gameCanvas]
    let _ <- jfields this
    JR.setField this "form" l_form
    pure this

initialize JR.registerClass {
    name := "CommandFormInputProcessor",
    javaName := "org.allbinary.game.displayable.canvas.CommandFormInputProcessor",
    super := "BasicMenuInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("MOTION_GESTURE_SOURCE_ID", (JV.int 0)), ("CLICK_DELAY", (JV.int 0)), ("clickTimeHelper", JV.null), ("DOUBLE_CLICK_DELAY", (JV.int 0)), ("doubleClickTimeHelper", JV.null), ("isSingleKeyProcessing", (JV.bool false)), ("form", JV.null), ("hasPressed", (JV.bool false)), ("PROCESS_COMMAND", JV.null), ("NAME_LABEL", JV.null)],
    statics := #[],
    methods := #[
        ("processInput_1", #["int"], false, m_processInput_1), 
        ("processCommand_0", #[], false, m_processCommand_0), 
        ("processInputList_0", #[], false, m_processInputList_0), 
        ("processMotionInputs_0", #[], false, m_processMotionInputs_0), 
        ("processMotionInput_1", #["MotionGestureEvent"], false, m_processMotionInput_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_4", #["BasicArrayList", "int", "MyCanvas", "ScrollSelectionForm"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommandFormInputProcessor


