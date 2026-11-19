-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MotionGestureRecognizer

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "j2seMath" (<- JR.callStatic "J2SEMath" "getInstance_0" #[])
    JR.setField this "origin" (<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO")
    JR.setField this "previous" (<- JR.getField this "origin")
    JR.setField this "intermediate" (<- JR.getField this "origin")
    JR.setField this "line" (<- JR.new "Line" #[(<- JR.getField this "origin"), (<- JR.getField this "origin")])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processPressedMotionEvent_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_current : JV := (JR.arg jargs 0)
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_button : JV := (JR.asI (JR.arg jargs 2))
    JR.setField this "intermediate" (<- JR.getField this "origin")
    JR.setField this "previous" (<- JR.getField this "origin")
    let mut l_event : JV := (<- JR.call (<- JR.getField this "motionEventCircularPool") "getInstance_1" #[(<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "PRESSED")])
    let _ := (<- JR.call l_event "setPreviousPoint_1" #[(<- JR.getField this "previous")])
    let _ := (<- JR.call l_event "setCurrentPoint_1" #[l_current])
    let _ := (<- JR.call (<- JR.getField this "motionGesturesHandler") "fireEvent_1" #[l_event])
    return (JV.bool true)


def m_processReleasedMotionEvent_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_current : JV := (JR.arg jargs 0)
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_button : JV := (JR.asI (JR.arg jargs 2))
    let mut l_event : JV := (<- JR.call (<- JR.getField this "motionEventCircularPool") "getInstance_1" #[(<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "RELEASED")])
    let _ := (<- JR.call l_event "setPreviousPoint_1" #[(<- JR.getField this "previous")])
    let _ := (<- JR.call l_event "setCurrentPoint_1" #[l_current])
    let _ := (<- JR.call (<- JR.getField this "motionGesturesHandler") "fireEvent_1" #[l_event])
    return (JV.bool true)


def m_processDraggedMotionEvent_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_current : JV := (JR.arg jargs 0)
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_buttonMask : JV := (JR.asI (JR.arg jargs 2))
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.getField this "previous") (<- JR.getField this "origin")) (do pure (<- JR.eq (<- JR.getField this "intermediate") (<- JR.getField this "origin")))) then
        JR.setField this "previous" l_current
        JR.setField this "intermediate" l_current
        return JV.null
    let _ := (<- JR.call (<- JR.getField this "line") "setP1_1" #[(<- JR.getField this "previous")])
    let _ := (<- JR.call (<- JR.getField this "line") "setP2_1" #[l_current])
    let mut l_minimumMotionGesture : JV := (JR.asI (<- JR.call (<- JR.callStatic "MotionGestureConfigurationFactory" "getInstance_0" #[]) "getMinimumMotionGesture_0" #[]))
    if JR.truth (<- JR.cand (<- JR.lt (<- JR.call (<- JR.getField this "j2seMath") "abs_1" #[(JR.toF (<- JR.call (<- JR.getField this "line") "getDeltaX_0" #[]))]) l_minimumMotionGesture) (do pure (<- JR.lt (<- JR.call (<- JR.getField this "j2seMath") "abs_1" #[(JR.toF (<- JR.call (<- JR.getField this "line") "getDeltaY_0" #[]))]) l_minimumMotionGesture))) then
        JR.setField this "intermediate" l_current
        return JV.null
    let mut l_gradient : JV := (JR.asD (<- JR.call (<- JR.getField this "line") "getGradient_0" #[]))
    let mut l_absGradient : JV := (JR.asD (JR.toD (<- JR.call (<- JR.getField this "j2seMath") "abs_1" #[(JR.toF l_gradient)])))
    let mut l_conf : JV := (<- JR.callStatic "MotionGestureConfigurationFactory" "getInstance_0" #[])
    let mut l_touchMotionGestureFactory : JV := (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[])
    let mut l_newMotionGesture : JV := (<- JR.getField l_touchMotionGestureFactory "NO_MOTION")
    let mut l_diagonalToleranceHigher : JV := (JR.asD (JV.double 12.0))
    let mut l_diagonalToleranceLower : JV := (JR.asD (JV.double 12.0))
    if JR.truth (<- JR.call l_conf "isDiagonalMotionGestureAllowed_0" #[]) then
        l_diagonalToleranceHigher := (JR.asD (JR.toD ((<- JR.sub (JV.int 90) (<- JR.call l_conf "getDiagonalTolerance_0" #[])))))
        l_diagonalToleranceLower := (JR.asD (JR.toD (<- JR.call l_conf "getDiagonalTolerance_0" #[])))
        pure ()
    if JR.truth (<- JR.gt l_absGradient (<- JR.callStatic "Math" "tan_1" #[(<- JR.callStatic "Math" "toRadians_1" #[l_diagonalToleranceHigher])])) then
        if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "line") "getDeltaY_0" #[]) (JV.double 0.0)) then
            l_newMotionGesture := (<- JR.getField l_touchMotionGestureFactory "UP")
            pure ()
        else
            l_newMotionGesture := (<- JR.getField l_touchMotionGestureFactory "DOWN")
            pure ()
        pure ()
    else
        if JR.truth (<- JR.lt l_absGradient (<- JR.callStatic "Math" "tan_1" #[(<- JR.callStatic "Math" "toRadians_1" #[l_diagonalToleranceLower])])) then
            if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "line") "getDeltaX_0" #[]) (JV.double 0.0)) then
                l_newMotionGesture := (<- JR.getField l_touchMotionGestureFactory "LEFT")
                pure ()
            else
                l_newMotionGesture := (<- JR.getField l_touchMotionGestureFactory "RIGHT")
                pure ()
            pure ()
        else
            if JR.truth (<- JR.gt l_gradient (JV.double 0.0)) then
                if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "line") "getDeltaX_0" #[]) (JV.double 0.0)) then
                    l_newMotionGesture := (<- JR.getField l_touchMotionGestureFactory "DIAGONAL_UP_LEFT")
                    pure ()
                else
                    l_newMotionGesture := (<- JR.getField l_touchMotionGestureFactory "DIAGONAL_DOWN_RIGHT")
                    pure ()
                pure ()
            else
                if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "line") "getDeltaX_0" #[]) (JV.double 0.0)) then
                    l_newMotionGesture := (<- JR.getField l_touchMotionGestureFactory "DIAGONAL_DOWN_LEFT")
                    pure ()
                else
                    l_newMotionGesture := (<- JR.getField l_touchMotionGestureFactory "DIAGONAL_UP_RIGHT")
                    pure ()
                pure ()
            pure ()
        pure ()
    JR.setField this "previous" l_current
    JR.setField this "intermediate" l_current
    let mut l_event : JV := (<- JR.call (<- JR.getField this "motionEventCircularPool") "getInstance_1" #[l_newMotionGesture])
    let _ := (<- JR.call l_event "setPreviousPoint_1" #[(<- JR.getField this "previous")])
    let _ := (<- JR.call l_event "setCurrentPoint_1" #[l_current])
    let _ := (<- JR.call (<- JR.getField this "motionGesturesHandler") "fireEvent_1" #[l_event])
    return JV.null


def m_processMovedMotionEvent_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_current : JV := (JR.arg jargs 0)
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_button : JV := (JR.asI (JR.arg jargs 2))
    let mut l_event : JV := (<- JR.call (<- JR.getField this "motionEventCircularPool") "getInstance_1" #[(<- JR.getField (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[]) "NO_MOTION")])
    let _ := (<- JR.call l_event "setPreviousPoint_1" #[(<- JR.getField this "previous")])
    let _ := (<- JR.call l_event "setCurrentPoint_1" #[l_current])
    let _ := (<- JR.call (<- JR.getField this "movedMotionGesturesHandler") "fireEvent_1" #[l_event])
    return (JV.bool true)


def m_processScrolledMotionEvent_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_current : JV := (JR.arg jargs 0)
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_button : JV := (JR.asI (JR.arg jargs 2))
    let mut l_touchMotionGestureFactory : JV := (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[])
    let mut l_newMotionGesture : JV := (<- JR.getField l_touchMotionGestureFactory "NO_MOTION")
    if JR.truth (<- JR.gt l_button (JV.int 0)) then
        l_newMotionGesture := (<- JR.getField l_touchMotionGestureFactory "SCROLL_UP")
        pure ()
    else
        if JR.truth (<- JR.lt l_button (JV.int 0)) then
            l_newMotionGesture := (<- JR.getField l_touchMotionGestureFactory "SCROLL_DOWN")
            pure ()
    let mut l_event : JV := (<- JR.call (<- JR.getField this "motionEventCircularPool") "getInstance_1" #[l_newMotionGesture])
    let _ := (<- JR.call l_event "setPreviousPoint_1" #[(<- JR.getField this "previous")])
    let _ := (<- JR.call l_event "setCurrentPoint_1" #[l_current])
    let _ := (<- JR.call (<- JR.getField this "scrolledMotionGesturesHandler") "fireEvent_1" #[l_event])
    return (JV.bool true)


def m_getMotionGesturesHandler_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "motionGesturesHandler")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "motionEventCircularPool" (<- JR.callStatic "MotionEventCircularPool" "createPool_1" #[l_id])
    let mut l_motionGesturesHandler : JV := (<- JR.new "BasicEventHandler" #[])
    let mut l_movedMotionGesturesHandler : JV := l_motionGesturesHandler
    let mut l_scrolledMotionGesturesHandler : JV := l_motionGesturesHandler
    try
        l_motionGesturesHandler := (<- JR.callStatic "BasicMotionGesturesHandler" "getInstance_0" #[])
        l_movedMotionGesturesHandler := (<- JR.callStatic "MovedMotionGesturesHandler" "getInstance_0" #[])
        l_scrolledMotionGesturesHandler := (<- JR.callStatic "ScrolledMotionGesturesHandler" "getInstance_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "CONSTRUCTOR"), l_e])
            pure ()
        else
            throw jex0
    JR.setField this "motionGesturesHandler" l_motionGesturesHandler
    JR.setField this "movedMotionGesturesHandler" l_movedMotionGesturesHandler
    JR.setField this "scrolledMotionGesturesHandler" l_scrolledMotionGesturesHandler
    pure this

initialize JR.registerClass {
    name := "MotionGestureRecognizer",
    javaName := "org.allbinary.input.motion.gesture.MotionGestureRecognizer",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("j2seMath", JV.null), ("origin", JV.null), ("previous", JV.null), ("intermediate", JV.null), ("line", JV.null), ("motionGesturesHandler", JV.null), ("movedMotionGesturesHandler", JV.null), ("scrolledMotionGesturesHandler", JV.null), ("motionEventCircularPool", JV.null)],
    statics := #[],
    methods := #[
        ("processPressedMotionEvent_3", #["GPoint", "int", "int"], false, m_processPressedMotionEvent_3), 
        ("processReleasedMotionEvent_3", #["GPoint", "int", "int"], false, m_processReleasedMotionEvent_3), 
        ("processDraggedMotionEvent_3", #["GPoint", "int", "int"], false, m_processDraggedMotionEvent_3), 
        ("processMovedMotionEvent_3", #["GPoint", "int", "int"], false, m_processMovedMotionEvent_3), 
        ("processScrolledMotionEvent_3", #["GPoint", "int", "int"], false, m_processScrolledMotionEvent_3), 
        ("getMotionGesturesHandler_0", #[], false, m_getMotionGesturesHandler_0), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MotionGestureRecognizer


