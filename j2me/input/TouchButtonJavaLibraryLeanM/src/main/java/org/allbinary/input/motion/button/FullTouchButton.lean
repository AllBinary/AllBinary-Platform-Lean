-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FullTouchButton

def jfields (this : JV) : JM JV := do
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
    return (<- JR.new "FullTouchButton" #[l_touchButtonInput, (<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "get_1" #[(<- JR.getField l_touchButtonResource "RESOURCE")]) "getInstance_1" #[(JV.int 0)]), (<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "get_1" #[(<- JR.getField l_touchButtonResource "HINT")]) "getInstance_1" #[(JV.int 0)]), l_rawRectangle, l_cellPosition, l_xBorder, l_yBorder])


def m_updateRectangle_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
        let mut l_x : JV := (JR.asI (<- JR.mul (<- JR.call (<- JR.getInherited this "FullTouchButton" "rawRectangle") "getWidth_0" #[]) (<- JR.call (<- JR.getInherited this "FullTouchButton" "cellPositionP") "getColumn_0" #[])))
        let mut l_y : JV := (JR.asI (<- JR.mul (<- JR.call (<- JR.getInherited this "FullTouchButton" "rawRectangle") "getHeight_0" #[]) (<- JR.call (<- JR.getInherited this "FullTouchButton" "cellPositionP") "getRow_0" #[])))
        JR.setInherited this "FullTouchButton" "rectangleP" (<- JR.new "Rectangle" #[(<- JR.call l_pointFactory "createXY_2" #[l_x, l_y]), (<- JR.add (<- JR.call (<- JR.getInherited this "FullTouchButton" "rawRectangle") "getWidth_0" #[]) ((<- JR.mul (JV.int 2) (<- JR.getInherited this "FullTouchButton" "xBorder")))), (<- JR.add (<- JR.call (<- JR.getInherited this "FullTouchButton" "rawRectangle") "getHeight_0" #[]) ((<- JR.mul (JV.int 2) (<- JR.getInherited this "FullTouchButton" "yBorder"))))])
        let mut l_point : JV := (<- JR.call (<- JR.getInherited this "FullTouchButton" "rectangleP") "getPoint_0" #[])
        JR.setInherited this "FullTouchButton" "animationX" (<- JR.add (<- JR.call l_point "getX_0" #[]) (<- JR.getInherited this "FullTouchButton" "xBorder"))
        JR.setInherited this "FullTouchButton" "animationY" (<- JR.add (<- JR.call l_point "getY_0" #[]) (<- JR.getInherited this "FullTouchButton" "yBorder"))
        JR.setInherited this "FullTouchButton" "hintAnimationY" (<- JR.shr (<- JR.sub (<- JR.getInherited this "FullTouchButton" "animationY") (<- JR.call (<- JR.getInherited this "FullTouchButton" "rectangleP") "getHeight_0" #[])) (JV.int 1))
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "FullTouchButton" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "FullTouchButton" "commonStrings") "EXCEPTION"), this, (JV.str "updateRectangle"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let mut l_animationInterface : JV := (JR.arg jargs 1)
    let mut l_hintAnimationInterface : JV := (JR.arg jargs 2)
    let mut l_rawRectangle : JV := (JR.arg jargs 3)
    let mut l_cellPosition : JV := (JR.arg jargs 4)
    let mut l_xBorder : JV := (JR.asI (JR.arg jargs 5))
    let mut l_yBorder : JV := (JR.asI (JR.arg jargs 6))
    let _ <- JR.superInit "TouchButton" this #[l_touchButtonInput, l_animationInterface, l_hintAnimationInterface, l_rawRectangle, l_cellPosition, l_xBorder, l_yBorder]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FullTouchButton",
    javaName := "org.allbinary.input.motion.button.FullTouchButton",
    super := "TouchButton",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("createButton_6", #["TouchButtonInput", "TouchButtonResource", "Rectangle", "CellPosition", "int", "int"], true, m_createButton_6), 
        ("updateRectangle_0", #[], false, m_updateRectangle_0), 
        ("jinit_7", #["TouchButtonInput", "Animation", "Animation", "Rectangle", "CellPosition", "int", "int"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FullTouchButton


