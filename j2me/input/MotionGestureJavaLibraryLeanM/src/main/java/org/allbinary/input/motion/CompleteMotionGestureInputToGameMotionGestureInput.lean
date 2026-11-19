-- Generated Code Do Not Modify
-- package org.allbinary.input.motion
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CompleteMotionGestureInputToGameMotionGestureInput

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CompleteMotionGestureInputToGameMotionGestureInput" "instance" (<- JR.new "CompleteMotionGestureInputToGameMotionGestureInput" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CompleteMotionGestureInputToGameMotionGestureInput" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    try
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(JV.str "Compound Motion Gestures"), this, (<- JR.getField l_commonStrings "INIT")])
        let mut l_motionGestureConfiguration : JV := (<- JR.callStatic "MotionGestureConfigurationFactory" "getInstance_0" #[])
        let mut l_touchMotionGestureFactory : JV := (<- JR.callStatic "TouchMotionGestureFactory" "getInstance_0" #[])
        let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_touchMotionGestureFactory "DIAGONAL_DOWN_LEFT")])
        let _ := (<- JR.call l_motionGestureConfiguration "addMotionGestureAction_2" #[l_list, (<- JR.callStatic "DiagonalDownLeftTouchInputToGameKeyEventAction" "getInstance_0" #[])])
        l_list := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_touchMotionGestureFactory "DIAGONAL_DOWN_RIGHT")])
        let _ := (<- JR.call l_motionGestureConfiguration "addMotionGestureAction_2" #[l_list, (<- JR.callStatic "DiagonalDownRightTouchInputToGameKeyEventAction" "getInstance_0" #[])])
        l_list := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_touchMotionGestureFactory "DIAGONAL_UP_LEFT")])
        let _ := (<- JR.call l_motionGestureConfiguration "addMotionGestureAction_2" #[l_list, (<- JR.callStatic "DiagonalUpLeftTouchInputToGameKeyEventAction" "getInstance_0" #[])])
        l_list := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_touchMotionGestureFactory "DIAGONAL_UP_RIGHT")])
        let _ := (<- JR.call l_motionGestureConfiguration "addMotionGestureAction_2" #[l_list, (<- JR.callStatic "DiagonalUpRightTouchInputToGameKeyEventAction" "getInstance_0" #[])])
        l_list := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_touchMotionGestureFactory "LEFT")])
        let _ := (<- JR.call l_motionGestureConfiguration "addMotionGestureAction_2" #[l_list, (<- JR.callStatic "LeftTouchInputToGameKeyEventAction" "getInstance_0" #[])])
        l_list := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_touchMotionGestureFactory "RIGHT")])
        let _ := (<- JR.call l_motionGestureConfiguration "addMotionGestureAction_2" #[l_list, (<- JR.callStatic "RightTouchInputToGameKeyEventAction" "getInstance_0" #[])])
        l_list := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_touchMotionGestureFactory "DOWN")])
        let _ := (<- JR.call l_motionGestureConfiguration "addMotionGestureAction_2" #[l_list, (<- JR.callStatic "DownTouchInputToGameKeyEventAction" "getInstance_0" #[])])
        l_list := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_touchMotionGestureFactory "UP")])
        let _ := (<- JR.call l_motionGestureConfiguration "addMotionGestureAction_2" #[l_list, (<- JR.callStatic "UpTouchInputToGameKeyEventAction" "getInstance_0" #[])])
        l_list := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_list "add_1" #[(<- JR.getField l_touchMotionGestureFactory "RELEASED")])
        let _ := (<- JR.call l_motionGestureConfiguration "addMotionGestureAction_2" #[l_list, (<- JR.callStatic "ReleaseTouchInputToGameKeyEventAction" "getInstance_0" #[])])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "INIT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CompleteMotionGestureInputToGameMotionGestureInput",
    javaName := "org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CompleteMotionGestureInputToGameMotionGestureInput


