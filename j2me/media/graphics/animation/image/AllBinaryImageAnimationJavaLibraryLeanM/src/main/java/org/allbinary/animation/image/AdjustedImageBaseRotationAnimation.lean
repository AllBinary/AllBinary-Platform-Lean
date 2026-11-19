-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AdjustedImageBaseRotationAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "ImageBaseRotationAnimation" this "paintXY_3" #[l_graphics, (<- JR.add l_x (<- JR.getField this "dx")), (<- JR.add l_y (<- JR.getField this "dy"))])
    pure JV.null


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_angleInfo : JV := (JR.arg jargs 1)
    let mut l_totalAngle : JV := (JR.asS (JR.arg jargs 2))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    let mut l_animationBehavior : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "ImageBaseRotationAnimation" this #[l_image, l_angleInfo, l_totalAngle, l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call this "init_2" #[l_dx, l_dy])
    pure this

initialize JR.registerClass {
    name := "AdjustedImageBaseRotationAnimation",
    javaName := "org.allbinary.animation.image.AdjustedImageBaseRotationAnimation",
    super := "ImageBaseRotationAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("dx", (JV.int 0)), ("dy", (JV.int 0))],
    statics := #[],
    methods := #[
        ("init_2", #["int", "int"], false, m_init_2), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_6", #["Image", "AngleInfo", "short", "int", "int", "AnimationBehavior"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AdjustedImageBaseRotationAnimation


