-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BoundBounceAI

def jfields (this : JV) : JM JV := do
    JR.setField this "currentRelativeAngle" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_rectange : JV := (<- JR.call (<- JR.getField this "layerBounds") "getRectangleP_0" #[])
    let _ := (<- JR.call l_graphics "drawRect_4" #[(<- JR.call (<- JR.call l_rectange "getPoint_0" #[]) "getX_0" #[]), (<- JR.call (<- JR.call l_rectange "getPoint_0" #[]) "getY_0" #[]), (<- JR.call l_rectange "getWidth_0" #[]), (<- JR.call l_rectange "getHeight_0" #[])])
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "layerBounds") "visit_1" #[(<- JR.getField this "boundsVisitorInterface")])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    let mut l_gameInput : JV := (JR.arg jargs 1)
    let mut l_layerBounds : JV := (JR.arg jargs 2)
    let mut l_boundsVisitorInterface : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "layerBounds" l_layerBounds
    JR.setField this "boundsVisitorInterface" l_boundsVisitorInterface
    pure this

initialize JR.registerClass {
    name := "BoundBounceAI",
    javaName := "org.allbinary.game.ag.ai.BoundBounceAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("currentRelativeAngle", (JV.int 0)), ("layerBounds", JV.null), ("boundsVisitorInterface", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("jinit_4", #["AllBinaryLayer", "GameInput", "LayerBounds", "BoundsVisitorInterface"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BoundBounceAI


