-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicNeededTouchButtonsBuilder

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "BasicNeededTouchButtonsBuilder" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "BasicNeededTouchButtonsBuilder" "commonStrings") "CONSTRUCTOR")])
        let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
        let mut l_touchButtonLocationHelper : JV := (<- JR.new "TouchButtonLocationHelper" #[])
        let mut l_basicTouchButtonCellPositionFactory : JV := (<- JR.new "BasicTouchButtonCellPositionFactory" #[])
        let mut l_commonButtons : JV := (<- JR.callStatic "CommonButtons" "getInstance_0" #[])
        let mut l_animationInterface : JV := (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])
        let mut l_UP : JV := (<- JR.new "TouchButton" #[(<- JR.getField (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[]) "UP"), l_animationInterface, l_animationInterface, (<- JR.getField l_commonButtons "NORMAL_BUTTON"), (<- JR.getField l_basicTouchButtonCellPositionFactory "SECOND_FROM_BOTTOM_LEFT"), (<- JR.call l_touchButtonLocationHelper "getColumnsRemainderHalf_0" #[]), (<- JR.call l_touchButtonLocationHelper "getRowsRemainderHalf_0" #[])])
        let mut l_DOWN : JV := (<- JR.new "TouchButton" #[(<- JR.getField (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[]) "DOWN"), l_animationInterface, l_animationInterface, (<- JR.getField l_commonButtons "NORMAL_BUTTON"), (<- JR.getField l_basicTouchButtonCellPositionFactory "BOTTOM_LEFT"), (<- JR.call l_touchButtonLocationHelper "getColumnsRemainderHalf_0" #[]), (<- JR.call l_touchButtonLocationHelper "getRowsRemainderHalf_0" #[])])
        let mut l_LEFT : JV := (<- JR.new "TouchButton" #[(<- JR.getField (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[]) "LEFT"), l_animationInterface, l_animationInterface, (<- JR.getField l_commonButtons "NORMAL_BUTTON"), (<- JR.getField l_basicTouchButtonCellPositionFactory "BOTTOM_SECOND_FROM_RIGHT"), (<- JR.call l_touchButtonLocationHelper "getColumnsRemainderHalf_0" #[]), (<- JR.call l_touchButtonLocationHelper "getRowsRemainderHalf_0" #[])])
        let mut l_RIGHT : JV := (<- JR.new "TouchButton" #[(<- JR.getField (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[]) "RIGHT"), l_animationInterface, l_animationInterface, (<- JR.getField l_commonButtons "NORMAL_BUTTON"), (<- JR.getField l_basicTouchButtonCellPositionFactory "BOTTOM_RIGHT"), (<- JR.call l_touchButtonLocationHelper "getColumnsRemainderHalf_0" #[]), (<- JR.call l_touchButtonLocationHelper "getRowsRemainderHalf_0" #[])])
        let _ := (<- JR.call l_list "add_1" #[l_UP])
        let _ := (<- JR.call l_list "add_1" #[l_DOWN])
        let _ := (<- JR.call l_list "add_1" #[l_LEFT])
        let _ := (<- JR.call l_list "add_1" #[l_RIGHT])
        return l_list
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "BasicNeededTouchButtonsBuilder" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "BasicNeededTouchButtonsBuilder" "commonStrings") "GET_LIST"), l_e])
            return (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BaseTouchInput" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicNeededTouchButtonsBuilder",
    javaName := "org.allbinary.input.motion.button.BasicNeededTouchButtonsBuilder",
    super := "BaseTouchInput",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[],
    methods := #[
        ("getList_0", #[], false, m_getList_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicNeededTouchButtonsBuilder


