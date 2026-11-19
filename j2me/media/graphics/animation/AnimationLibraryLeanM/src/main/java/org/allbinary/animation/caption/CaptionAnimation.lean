-- Generated Code Do Not Modify
-- package org.allbinary.animation.caption
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CaptionAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, (<- JR.add l_x (<- JR.getField this "captionDx")), (<- JR.add l_y (<- JR.getField this "captionDy"))])
    let _ := (<- JR.call (<- JR.getField this "overlayAnimationInterface") "paintXY_3" #[l_graphics, (<- JR.add (<- JR.add l_x (<- JR.getField this "captionDx")) (<- JR.getField this "dx")), (<- JR.add (<- JR.add l_y (<- JR.getField this "captionDy")) (<- JR.getField this "dy"))])
    pure JV.null


def m_paintThreedXYZ_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintThreedXYZ_4" #[l_graphics, (<- JR.add l_x (<- JR.getField this "captionDx")), (<- JR.add l_y (<- JR.getField this "captionDy")), l_z])
    let _ := (<- JR.call (<- JR.getField this "overlayAnimationInterface") "paintThreedXYZ_4" #[l_graphics, (<- JR.add (<- JR.add l_x (<- JR.getField this "captionDx")) (<- JR.getField this "dx")), (<- JR.add (<- JR.add l_y (<- JR.getField this "captionDy")) (<- JR.getField this "dy")), l_z])
    pure JV.null


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_overlayAnimationInterface : JV := (JR.arg jargs 1)
    let mut l_captionDx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_captionDy : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 4))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 5))
    let _ <- JR.superInit "Animation" this #[]
    let _ <- jfields this
    JR.setField this "animationInterface" l_animationInterface
    JR.setField this "overlayAnimationInterface" l_overlayAnimationInterface
    JR.setField this "captionDx" (JR.asI l_captionDx)
    JR.setField this "captionDy" (JR.asI l_captionDy)
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    pure this

initialize JR.registerClass {
    name := "CaptionAnimation",
    javaName := "org.allbinary.animation.caption.CaptionAnimation",
    super := "Animation",
    interfaces := #[],
    isInterface := false,
    fields := #[("animationInterface", JV.null), ("overlayAnimationInterface", JV.null), ("captionDx", (JV.int 0)), ("captionDy", (JV.int 0)), ("dx", (JV.int 0)), ("dy", (JV.int 0))],
    statics := #[],
    methods := #[
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paintThreedXYZ_4", #["Graphics", "int", "int", "int"], false, m_paintThreedXYZ_4), 
        ("jinit_6", #["Animation", "Animation", "int", "int", "int", "int"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CaptionAnimation


