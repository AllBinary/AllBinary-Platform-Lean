-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AdjustedVectorAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "VectorAnimation" this "paintXY_3" #[l_graphics, (<- JR.add l_x (<- JR.getField this "dx")), (<- JR.add l_y (<- JR.getField this "dy"))])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentPoints : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    let mut l_animationBehavior : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "VectorAnimation" this #[l_currentPoints, l_basicColor, l_animationBehavior]
    let _ <- jfields this
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    pure this

initialize JR.registerClass {
    name := "AdjustedVectorAnimation",
    javaName := "org.allbinary.animation.AdjustedVectorAnimation",
    super := "VectorAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("dx", (JV.int 0)), ("dy", (JV.int 0))],
    statics := #[],
    methods := #[
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_5", #["intArrArrArr", "BasicColor", "int", "int", "AnimationBehavior"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AdjustedVectorAnimation


