-- Generated Code Do Not Modify
-- package org.allbinary.animation.image.sprite
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AdjustedSpriteIndexedAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paintFrame_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_frame : JV := (JR.asI (JR.arg jargs 1))
    let mut l_x : JV := (JR.asI (JR.arg jargs 2))
    let mut l_y : JV := (JR.asI (JR.arg jargs 3))
    let _ := (<- JR.callInherited this "AdjustedSpriteIndexedAnimation" "setFrame_1" #[l_frame])
    let _ := (<- JR.call (<- JR.getInherited this "AdjustedSpriteIndexedAnimation" "sprite") "setPosition_2" #[(<- JR.add l_x (<- JR.getField this "dx")), (<- JR.add l_y (<- JR.getField this "dy"))])
    let _ := (<- JR.callSuper "SpriteIndexedAnimation" this "paint_1" #[l_graphics])
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_g : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "AdjustedSpriteIndexedAnimation" "sprite") "setPosition_2" #[(<- JR.add l_x (<- JR.getField this "dx")), (<- JR.add l_y (<- JR.getField this "dy"))])
    let _ := (<- JR.callSuper "SpriteIndexedAnimation" this "paint_1" #[l_g])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_g : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "AdjustedSpriteIndexedAnimation" "sprite") "setPosition_2" #[(<- JR.getField this "dx"), (<- JR.getField this "dy")])
    let _ := (<- JR.callSuper "SpriteIndexedAnimation" this "paint_1" #[l_g])
    pure JV.null


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sprite : JV := (JR.arg jargs 0)
    let mut l_image : JV := (JR.arg jargs 1)
    let mut l_basicColorArray : JV := (JR.arg jargs 2)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    let mut l_animationBehavior : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "SpriteIndexedAnimation" this #[l_sprite, l_image, l_basicColorArray, l_animationBehavior]
    let _ <- jfields this
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    pure this

initialize JR.registerClass {
    name := "AdjustedSpriteIndexedAnimation",
    javaName := "org.allbinary.animation.image.sprite.AdjustedSpriteIndexedAnimation",
    super := "SpriteIndexedAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("dx", (JV.int 0)), ("dy", (JV.int 0))],
    statics := #[],
    methods := #[
        ("paintFrame_4", #["Graphics", "int", "int", "int"], false, m_paintFrame_4), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_6", #["Sprite", "Image", "BasicColorArr", "int", "int", "AnimationBehavior"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AdjustedSpriteIndexedAnimation


