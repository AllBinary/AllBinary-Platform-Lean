-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_IconLayer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "IconLayer" "NULL_ICON_LAYER" (<- JR.new "IconLayer" #[(<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)]), (JV.int 0), (JV.int 0)])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, (<- JR.getInherited this "IconLayer" "x"), (<- JR.getInherited this "IconLayer" "y")])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintThreedXYZ_4" #[l_graphics, (<- JR.getInherited this "IconLayer" "x"), (<- JR.getInherited this "IconLayer" "y"), (<- JR.getInherited this "IconLayer" "z")])
    pure JV.null


def m_getAnimationInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animationInterface")


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "AllBinaryLayer" this #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.new "Rectangle" #[(<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO"), l_width, l_height]), (<- JR.callStatic "ViewPosition" "getInstanceD_0" #[])]
    let _ <- jfields this
    JR.setField this "animationInterface" l_animationInterface
    pure this

initialize JR.registerClass {
    name := "IconLayer",
    javaName := "org.allbinary.game.layer.pickup.IconLayer",
    super := "AllBinaryLayer",
    interfaces := #[],
    isInterface := false,
    fields := #[("animationInterface", JV.null)],
    statics := #[("NULL_ICON_LAYER", JV.null)],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("getAnimationInterface_0", #[], false, m_getAnimationInterface_0), 
        ("jinit_3", #["Animation", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_IconLayer


