-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PopupMenuInputProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "rectangleCollisionUtil" (<- JR.callStatic "RectangleCollisionUtil" "getInstance_0" #[])
    JR.setField this "CLICK_DELAY" (JR.asI (JV.int 120))
    JR.setField this "clickTimeHelper" (<- JR.new "TimeDelayHelper" #[(<- JR.getField this "CLICK_DELAY")])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    JR.setField this "rectangle" l_rectangle
    pure JV.null


def m_processInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.eq l_key (<- JR.getStatic "Canvas" "KEY_STAR")) then
        let mut l_gameCanvas : JV := (<- JR.callInherited this "PopupMenuInputProcessor" "getCanvas_0" #[])
        let _ := (<- JR.call l_gameCanvas "toggleMenu_0" #[])
        return (JR.asI (JV.int 1))
    return (JR.asI (JV.int 0))


def m_processInputList_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_motionInputsIndex : JV := (JR.asI (<- JR.call this "processMotionInputs_0" #[]))
        let mut l_list : JV := (<- JR.callInherited this "PopupMenuInputProcessor" "getGameKeyEventList_0" #[])
        let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
        let mut l_key : JV := (JR.asI (JV.int 0))
        let mut l_gameKeyEvent : JV := JV.null
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                l_gameKeyEvent := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
                if JR.truth (<- JR.ne l_gameKeyEvent JV.null) then
                    l_key := (JR.asI (<- JR.call l_gameKeyEvent "getKey_0" #[]))
                    if JR.truth (<- JR.eq (<- JR.call this "processInput_1" #[l_key]) (JV.int 1)) then
                        break
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        let _ := (<- JR.callInherited this "PopupMenuInputProcessor" "clear_0" #[])
        if JR.truth (<- JR.cor (<- JR.gt l_size (JV.int 0)) (do pure (<- JR.ge l_motionInputsIndex (JV.int 0)))) then
            return (JR.asI (JV.int 1))
        else
            return (JR.asI (JV.int (-1)))
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "PopupMenuInputProcessor" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "PopupMenuInputProcessor" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.callStatic "GameInputStrings" "getInstance_0" #[]) "PROCESS_INPUT"), l_e])
            return (JR.asI (JV.int (-1)))
        else
            throw jex0
    pure JV.null


def m_processMotionInputs_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lastIndex : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getInherited this "PopupMenuInputProcessor" "motionGestureEventList") "size_0" #[]) (JV.int 1)))
    if JR.truth (<- JR.ge l_lastIndex (JV.int 0)) then
        let mut l_motionGestureEvent : JV := (<- JR.aget (<- JR.getField (<- JR.getInherited this "PopupMenuInputProcessor" "motionGestureEventList") "objectArray") l_lastIndex)
        let _ := (<- JR.call this "processMotionInput_1" #[l_motionGestureEvent])
        pure ()
    let _ := (<- JR.call (<- JR.getInherited this "PopupMenuInputProcessor" "motionGestureEventList") "clear_0" #[])
    return (JR.asI l_lastIndex)


def m_processMotionInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_motionGestureEvent : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_motionGestureEvent JV.null) then
        let _ := (<- JR.call (<- JR.getInherited this "PopupMenuInputProcessor" "logUtil") "putF_3" #[(JV.str "Exception: Bug"), this, (<- JR.getField (<- JR.getInherited this "PopupMenuInputProcessor" "gameInputStrings") "PROCESS_MOTION_INPUT")])
        return JV.null
    let mut l_touchMotionGestureFactory : JV := (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[])
    let mut l_motionGestureInput : JV := (<- JR.call l_motionGestureEvent "getMotionGesture_0" #[])
    if JR.truth (<- JR.eq l_motionGestureInput (<- JR.getField l_touchMotionGestureFactory "RELEASED")) then
        let mut l_point : JV := (<- JR.call l_motionGestureEvent "getCurrentPoint_0" #[])
        let mut l_rectPoint : JV := (<- JR.call (<- JR.getField this "rectangle") "getPoint_0" #[])
        if JR.truth (<- JR.call (<- JR.getField this "rectangleCollisionUtil") "isInside_6" #[(<- JR.call l_rectPoint "getX_0" #[]), (<- JR.call l_rectPoint "getY_0" #[]), (<- JR.add (<- JR.call (<- JR.getField this "rectangle") "getMaxX_0" #[]) (JV.int 20)), (<- JR.call (<- JR.getField this "rectangle") "getMaxY_0" #[]), (<- JR.call l_point "getX_0" #[]), (<- JR.call l_point "getY_0" #[])]) then
            if JR.truth (<- JR.call (<- JR.getField this "clickTimeHelper") "isTimeTNT_0" #[]) then
                let mut l_gameCanvas : JV := (<- JR.callInherited this "PopupMenuInputProcessor" "getCanvas_0" #[])
                let _ := (<- JR.call l_gameCanvas "toggleMenu_0" #[])
                pure ()
            pure ()
        pure ()
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEventList : JV := (JR.arg jargs 0)
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_gameCanvas : JV := (JR.arg jargs 2)
    let mut l_rectangle : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "BasicMenuInputProcessor" this #[l_gameKeyEventList, l_playerInputId, l_gameCanvas]
    let _ <- jfields this
    JR.setField this "rectangle" l_rectangle
    pure this

initialize JR.registerClass {
    name := "PopupMenuInputProcessor",
    javaName := "org.allbinary.game.displayable.canvas.PopupMenuInputProcessor",
    super := "BasicMenuInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("rectangleCollisionUtil", JV.null), ("CLICK_DELAY", (JV.int 0)), ("clickTimeHelper", JV.null), ("rectangle", JV.null)],
    statics := #[],
    methods := #[
        ("init_1", #["Rectangle"], false, m_init_1), 
        ("processInput_1", #["int"], false, m_processInput_1), 
        ("processInputList_0", #[], false, m_processInputList_0), 
        ("processMotionInputs_0", #[], false, m_processMotionInputs_0), 
        ("processMotionInput_1", #["MotionGestureEvent"], false, m_processMotionInput_1), 
        ("jinit_4", #["BasicArrayList", "int", "MyCanvas", "Rectangle"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PopupMenuInputProcessor


