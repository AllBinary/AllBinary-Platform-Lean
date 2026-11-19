-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicTouchButtonCellPositionFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR")])
    let mut l_touchButtonLocationHelper : JV := (<- JR.new "TouchButtonLocationHelper" #[])
    let mut l_cellPositionFactory : JV := (<- JR.callStatic "CellPositionFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_cellPositionFactory "init_2" #[(<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]), (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[])])
    JR.setField this "TOP_LEFT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(JV.int 0), (JV.int 0)])
    JR.setField this "TOP_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 1)), (JV.int 0)])
    JR.setField this "BOTTOM_LEFT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(JV.int 0), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 1))])
    JR.setField this "BOTTOM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 1)), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 1))])
    JR.setField this "BOTTOM_SECOND_FROM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 2)), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 1))])
    JR.setField this "SECOND_FROM_BOTTOM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 1)), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 2))])
    JR.setField this "SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 2)), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 2))])
    JR.setField this "BOTTOM_SECOND_FROM_LEFT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(JV.int 1), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 1))])
    JR.setField this "SECOND_FROM_BOTTOM_LEFT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(JV.int 0), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 2))])
    JR.setField this "SECOND_FROM_BOTTOM_SECOND_FROM_LEFT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(JV.int 1), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 2))])
    if JR.truth (<- JR.gt (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 2)) then
        JR.setField this "SECOND_FROM_TOP_LEFT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(JV.int 0), (JV.int 1)])
        JR.setField this "SECOND_FROM_TOP_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 1)), (JV.int 1)])
        pure ()
    else
        JR.setField this "SECOND_FROM_TOP_LEFT" (<- JR.getField l_cellPositionFactory "NONE")
        JR.setField this "SECOND_FROM_TOP_RIGHT" (<- JR.getField l_cellPositionFactory "NONE")
        pure ()
    if JR.truth (<- JR.ge (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 4)) then
        JR.setField this "THIRD_FROM_BOTTOM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 1)), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 3))])
        JR.setField this "FOURTH_FROM_BOTTOM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 1)), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 4))])
        JR.setField this "THIRD_FROM_BOTTOM_LEFT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(JV.int 0), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 3))])
        pure ()
    else
        JR.setField this "THIRD_FROM_BOTTOM_RIGHT" (<- JR.getField l_cellPositionFactory "NONE")
        JR.setField this "FOURTH_FROM_BOTTOM_RIGHT" (<- JR.getField l_cellPositionFactory "NONE")
        JR.setField this "THIRD_FROM_BOTTOM_LEFT" (<- JR.getField l_cellPositionFactory "NONE")
        pure ()
    if JR.truth (<- JR.ge (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 4)) then
        JR.setField this "SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 3)), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 2))])
        JR.setField this "SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 4)), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 2))])
        JR.setField this "BOTTOM_THIRD_FROM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 3)), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 1))])
        JR.setField this "BOTTOM_FOURTH_FROM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 4)), (<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalRows_0" #[]) (JV.int 1))])
        JR.setField this "TOP_SECOND_FROM_LEFT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(JV.int 1), (JV.int 0)])
        JR.setField this "TOP_SECOND_FROM_RIGHT" (<- JR.call l_cellPositionFactory "getInstanceColRow_2" #[(<- JR.sub (<- JR.call l_touchButtonLocationHelper "getTotalColumns_0" #[]) (JV.int 2)), (JV.int 0)])
        pure ()
    else
        JR.setField this "SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT" (<- JR.getField l_cellPositionFactory "NONE")
        JR.setField this "SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT" (<- JR.getField l_cellPositionFactory "NONE")
        JR.setField this "BOTTOM_THIRD_FROM_RIGHT" (<- JR.getField l_cellPositionFactory "NONE")
        JR.setField this "BOTTOM_FOURTH_FROM_RIGHT" (<- JR.getField l_cellPositionFactory "NONE")
        JR.setField this "TOP_SECOND_FROM_LEFT" (<- JR.getField l_cellPositionFactory "NONE")
        JR.setField this "TOP_SECOND_FROM_RIGHT" (<- JR.getField l_cellPositionFactory "NONE")
        pure ()
    pure this

initialize JR.registerClass {
    name := "BasicTouchButtonCellPositionFactory",
    javaName := "org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("TOP_RIGHT", JV.null), ("TOP_LEFT", JV.null), ("SECOND_FROM_TOP_LEFT", JV.null), ("SECOND_FROM_TOP_RIGHT", JV.null), ("TOP_SECOND_FROM_LEFT", JV.null), ("TOP_SECOND_FROM_RIGHT", JV.null), ("BOTTOM_RIGHT", JV.null), ("BOTTOM_SECOND_FROM_RIGHT", JV.null), ("SECOND_FROM_BOTTOM_RIGHT", JV.null), ("THIRD_FROM_BOTTOM_RIGHT", JV.null), ("FOURTH_FROM_BOTTOM_RIGHT", JV.null), ("SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT", JV.null), ("SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT", JV.null), ("SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT", JV.null), ("BOTTOM_THIRD_FROM_RIGHT", JV.null), ("BOTTOM_FOURTH_FROM_RIGHT", JV.null), ("BOTTOM_SECOND_FROM_LEFT", JV.null), ("SECOND_FROM_BOTTOM_LEFT", JV.null), ("THIRD_FROM_BOTTOM_LEFT", JV.null), ("BOTTOM_LEFT", JV.null), ("SECOND_FROM_BOTTOM_SECOND_FROM_LEFT", JV.null)],
    statics := #[],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicTouchButtonCellPositionFactory


