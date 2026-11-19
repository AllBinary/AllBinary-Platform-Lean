-- Generated Code Do Not Modify
-- package org.allbinary.animation.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AdjustedCircleAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createAnimation_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_xAdjustment : JV := (JR.asI (JR.arg jargs 2))
    let mut l_yAdjustment : JV := (JR.asI (JR.arg jargs 3))
    let mut l_basicColor : JV := (JR.arg jargs 4)
    let mut l_adjustedCircleAnimation : JV := (<- JR.new "AdjustedCircleAnimation" #[l_width, l_height, l_basicColor])
    let _ := (<- JR.call l_adjustedCircleAnimation "initXY_2" #[l_xAdjustment, l_yAdjustment])
    return l_adjustedCircleAnimation


def m_createW_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_innerWidth : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicColor : JV := (JR.arg jargs 3)
    let mut l_adjustedCircleAnimation : JV := (<- JR.new "AdjustedCircleAnimation" #[l_width, l_height, l_basicColor])
    let _ := (<- JR.call l_adjustedCircleAnimation "init_1" #[l_innerWidth])
    return l_adjustedCircleAnimation


def m_initXY_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_xAdjustment : JV := (JR.asI (JR.arg jargs 0))
    let mut l_yAdjustment : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "xAdjustment" (JR.asI l_xAdjustment)
    JR.setField this "yAdjustment" (JR.asI l_yAdjustment)
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_innerWidth : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.callStatic "AndroidUtil" "isAndroid_0" #[]) then
        let mut l_widthPortion : JV := (JR.asI ((<- JR.div ((<- JR.mul ((<- JR.div l_innerWidth (JV.int 3))) (JV.int 10))) (JV.int 7))))
        JR.setField this "xAdjustment" (JR.asI (JR.neg ((<- JR.sub ((<- JR.shr (<- JR.getInherited this "AdjustedCircleAnimation" "width") (JV.int 1))) l_widthPortion))))
        JR.setField this "yAdjustment" (JR.asI (<- JR.getField this "xAdjustment"))
        pure ()
    else
        JR.setField this "xAdjustment" (JR.asI (JR.neg ((<- JR.sub ((<- JR.shr (<- JR.getInherited this "AdjustedCircleAnimation" "width") (JV.int 1))) l_innerWidth))))
        JR.setField this "yAdjustment" (JR.asI (<- JR.getField this "xAdjustment"))
        pure ()
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "AdjustedCircleAnimation" "basicSetColorUtil") "setBasicColorP3_3" #[l_graphics, (<- JR.callInherited this "AdjustedCircleAnimation" "getBasicColorP_0" #[]), (<- JR.callInherited this "AdjustedCircleAnimation" "getColor_0" #[])])
    let _ := (<- JR.call l_graphics "drawArc_6" #[(<- JR.add l_x (<- JR.getField this "xAdjustment")), (<- JR.add l_y (<- JR.getField this "yAdjustment")), (<- JR.getInherited this "AdjustedCircleAnimation" "width"), (<- JR.getInherited this "AdjustedCircleAnimation" "height"), (JV.int 0), (<- JR.getInherited this "AdjustedCircleAnimation" "TOTAL_ANGLE")])
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_basicColor : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "CircleAnimation" this #[l_width, l_height, l_basicColor]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AdjustedCircleAnimation",
    javaName := "org.allbinary.animation.vector.AdjustedCircleAnimation",
    super := "CircleAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("xAdjustment", (JV.int 0)), ("yAdjustment", (JV.int 0))],
    statics := #[],
    methods := #[
        ("createAnimation_5", #["int", "int", "int", "int", "BasicColor"], true, m_createAnimation_5), 
        ("createW_4", #["int", "int", "int", "BasicColor"], true, m_createW_4), 
        ("initXY_2", #["int", "int"], false, m_initXY_2), 
        ("init_1", #["int"], false, m_init_1), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_3", #["int", "int", "BasicColor"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AdjustedCircleAnimation


