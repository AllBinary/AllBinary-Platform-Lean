-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RightToLeftImageAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "anchor_RightToLeftImageAnimation" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "ImageSegmentAnimation" this "previousFrame_0" #[])
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "ImageSegmentAnimation" this "nextFrame_0" #[])
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "ImageSegmentAnimation" this "setFrame_1" #[l_index])
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "startWidth" (JR.asI (<- JR.div (<- JR.mul (<- JR.callInherited this "RightToLeftImageAnimation" "getDrawWidth_0" #[]) (<- JR.callInherited this "RightToLeftImageAnimation" "getFrame_0" #[])) (<- JR.callInherited this "RightToLeftImageAnimation" "getSize_0" #[])))
    JR.setField this "currentWidth" (JR.asI (<- JR.sub (<- JR.callInherited this "RightToLeftImageAnimation" "getDrawWidth_0" #[]) (<- JR.getField this "startWidth")))
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call l_graphics "drawRegion_9" #[(<- JR.callInherited this "RightToLeftImageAnimation" "getImage_0" #[]), (<- JR.getField this "startWidth"), (<- JR.callInherited this "RightToLeftImageAnimation" "getStartY_0" #[]), (<- JR.getField this "currentWidth"), (<- JR.callInherited this "RightToLeftImageAnimation" "getDrawHeight_0" #[]), (<- JR.getStatic "Sprite" "TRANS_NONE"), (<- JR.add l_x (<- JR.getField this "startWidth")), l_y, (<- JR.getField this "anchor_RightToLeftImageAnimation")])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "ImageSegmentAnimation" this #[l_image, (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[]), l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call this "setFrame_1" #[(<- JR.sub (<- JR.callInherited this "RightToLeftImageAnimation" "getSize_0" #[]) (JV.int 1))])
    pure this

initialize JR.registerClass {
    name := "RightToLeftImageAnimation",
    javaName := "org.allbinary.animation.image.RightToLeftImageAnimation",
    super := "ImageSegmentAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("startWidth", (JV.int 0)), ("currentWidth", (JV.int 0)), ("anchor_RightToLeftImageAnimation", (JV.int 0))],
    statics := #[],
    methods := #[
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("update_0", #[], false, m_update_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_2", #["Image", "AnimationBehavior"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RightToLeftImageAnimation


