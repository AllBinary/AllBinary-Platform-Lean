-- Generated Code Do Not Modify
-- package org.allbinary.animation.text
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AdjustCustomTextAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getDx_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "dx"))


def m_setDx_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "dx" (JR.asI l_dx)
    pure JV.null


def m_getDy_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "dy"))


def m_setDy_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dy : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "dy" (JR.asI l_dy)
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "CustomTextAnimation" this "paintXY_3" #[l_graphics, (<- JR.add l_x (<- JR.getField this "dx")), (<- JR.add l_y (<- JR.getField this "dy"))])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    let mut l_fontSize : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    let mut l_animationBehavior : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "CustomTextAnimation" this #[l_text, l_fontSize, l_animationBehavior]
    let _ <- jfields this
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    pure this

initialize JR.registerClass {
    name := "AdjustCustomTextAnimation",
    javaName := "org.allbinary.animation.text.AdjustCustomTextAnimation",
    super := "CustomTextAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("dx", (JV.int 0)), ("dy", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getDx_0", #[], false, m_getDx_0), 
        ("setDx_1", #["int"], false, m_setDx_1), 
        ("getDy_0", #[], false, m_getDy_0), 
        ("setDy_1", #["int"], false, m_setDy_1), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_5", #["String", "int", "int", "int", "AnimationBehavior"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AdjustCustomTextAnimation


