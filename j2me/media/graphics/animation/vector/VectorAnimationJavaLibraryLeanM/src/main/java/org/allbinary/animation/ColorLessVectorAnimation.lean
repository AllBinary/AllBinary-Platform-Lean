-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ColorLessVectorAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callInherited this "ColorLessVectorAnimation" "paintVectors_3" #[l_graphics, l_x, l_y])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentPoints : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "VectorAnimation" this #[l_currentPoints, (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE"), l_animationBehavior]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ColorLessVectorAnimation",
    javaName := "org.allbinary.animation.ColorLessVectorAnimation",
    super := "VectorAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_2", #["intArrArrArr", "AnimationBehavior"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ColorLessVectorAnimation


