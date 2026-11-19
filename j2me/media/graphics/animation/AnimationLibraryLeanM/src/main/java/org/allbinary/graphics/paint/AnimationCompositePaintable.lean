-- Generated Code Do Not Modify
-- package org.allbinary.graphics.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnimationCompositePaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, (JV.int 0), (JV.int 0)])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintThreedXYZ_4" #[l_graphics, (JV.int 0), (JV.int 0), (JV.int 0)])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "InitUpdatePaintable" this #[]
    let _ <- jfields this
    JR.setField this "animationInterface" l_animationInterface
    pure this

initialize JR.registerClass {
    name := "AnimationCompositePaintable",
    javaName := "org.allbinary.graphics.paint.AnimationCompositePaintable",
    super := "InitUpdatePaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("animationInterface", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_1", #["Animation"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnimationCompositePaintable


