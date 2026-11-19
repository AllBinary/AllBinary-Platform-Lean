-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButton

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "rectangleP" (<- JR.getStatic "RectangleFactory" "SINGLETON")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createButton_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let mut l_touchButtonResource : JV := (JR.arg jargs 1)
    let mut l_rawRectangle : JV := (JR.arg jargs 2)
    let mut l_cellPosition : JV := (JR.arg jargs 3)
    let mut l_xBorder : JV := (JR.asI (JR.arg jargs 4))
    let mut l_yBorder : JV := (JR.asI (JR.arg jargs 5))
    return (<- JR.new "TouchButton" #[l_touchButtonInput, (<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "get_1" #[(<- JR.getField l_touchButtonResource "RESOURCE")]) "getInstance_1" #[(JV.int 0)]), (<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "get_1" #[(<- JR.getField l_touchButtonResource "HINT")]) "getInstance_1" #[(JV.int 0)]), l_rawRectangle, l_cellPosition, l_xBorder, l_yBorder])


def m_paintHint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "hintAnimationInterface") "paintXY_3" #[l_graphics, (<- JR.getField this "animationX"), (<- JR.getField this "hintAnimationY")])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, (<- JR.getField this "animationX"), (<- JR.getField this "animationY")])
    pure JV.null


def m_updateRectangle_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
        let mut l_x : JV := (JR.asI (<- JR.mul (<- JR.call (<- JR.getField this "rawRectangle") "getWidth_0" #[]) (<- JR.call (<- JR.getField this "cellPositionP") "getColumn_0" #[])))
        let mut l_y : JV := (JR.asI (<- JR.mul (<- JR.call (<- JR.getField this "rawRectangle") "getHeight_0" #[]) (<- JR.call (<- JR.getField this "cellPositionP") "getRow_0" #[])))
        JR.setField this "rectangleP" (<- JR.new "Rectangle" #[(<- JR.call l_pointFactory "createXY_2" #[(<- JR.add l_x (<- JR.getField this "xBorder")), (<- JR.add l_y (<- JR.getField this "yBorder"))]), (<- JR.call (<- JR.getField this "rawRectangle") "getWidth_0" #[]), (<- JR.call (<- JR.getField this "rawRectangle") "getHeight_0" #[])])
        let mut l_point : JV := (<- JR.call (<- JR.getField this "rectangleP") "getPoint_0" #[])
        JR.setField this "animationX" (JR.asI (<- JR.call l_point "getX_0" #[]))
        JR.setField this "animationY" (JR.asI (<- JR.call l_point "getY_0" #[]))
        JR.setField this "hintAnimationY" (JR.asI (<- JR.sub (<- JR.getField this "animationY") (JV.int 32)))
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (JV.str "updateRectangle"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_getCellPosition_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "cellPositionP")


def m_getRectangle_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "rectangleP")


def m_getTouchButtonInput_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "touchButtonInput")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_stringUtil : JV := (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "TouchButton: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[(<- JR.call this "getRectangle_0" #[])])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " CellPosition: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[(<- JR.getField this "cellPositionP")])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " xBorder: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "xBorder")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " yBorder: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "yBorder")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let mut l_animationInterface : JV := (JR.arg jargs 1)
    let mut l_hintAnimationInterface : JV := (JR.arg jargs 2)
    let mut l_rawRectangle : JV := (JR.arg jargs 3)
    let mut l_cellPosition : JV := (JR.arg jargs 4)
    let mut l_xBorder : JV := (JR.asI (JR.arg jargs 5))
    let mut l_yBorder : JV := (JR.asI (JR.arg jargs 6))
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "touchButtonInput" l_touchButtonInput
    JR.setField this "animationInterface" l_animationInterface
    JR.setField this "hintAnimationInterface" l_hintAnimationInterface
    JR.setField this "rawRectangle" l_rawRectangle
    JR.setField this "cellPositionP" l_cellPosition
    JR.setField this "xBorder" (JR.asI l_xBorder)
    JR.setField this "yBorder" (JR.asI l_yBorder)
    let _ := (<- JR.call this "updateRectangle_0" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Created: ")]) "append_1" #[(<- JR.call this "toString_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR")])
    pure this

initialize JR.registerClass {
    name := "TouchButton",
    javaName := "org.allbinary.input.motion.button.TouchButton",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("touchButtonInput", JV.null), ("animationInterface", JV.null), ("hintAnimationInterface", JV.null), ("rawRectangle", JV.null), ("xBorder", (JV.int 0)), ("yBorder", (JV.int 0)), ("rectangleP", JV.null), ("cellPositionP", JV.null), ("animationX", (JV.int 0)), ("animationY", (JV.int 0)), ("hintAnimationY", (JV.int 0))],
    statics := #[],
    methods := #[
        ("createButton_6", #["TouchButtonInput", "TouchButtonResource", "Rectangle", "CellPosition", "int", "int"], true, m_createButton_6), 
        ("paintHint_1", #["Graphics"], false, m_paintHint_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("updateRectangle_0", #[], false, m_updateRectangle_0), 
        ("getCellPosition_0", #[], false, m_getCellPosition_0), 
        ("getRectangle_0", #[], false, m_getRectangle_0), 
        ("getTouchButtonInput_0", #[], false, m_getTouchButtonInput_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_7", #["TouchButtonInput", "Animation", "Animation", "Rectangle", "CellPosition", "int", "int"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButton


