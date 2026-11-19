-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageSegmentAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    pure JV.null


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "previous_0" #[])
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "setIndex_1" #[l_index])
    pure JV.null


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getSize_0" #[]))


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequenceArray : JV := (JR.arg jargs 0)
    JR.setField this "sequenceArray" l_sequenceArray
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "sequenceArray")


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_getStartX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "startX"))


def m_setStartX_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_startX : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "startX" (JR.asI l_startX)
    pure JV.null


def m_getStartY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "startY"))


def m_setStartY_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_startY : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "startY" (JR.asI l_startY)
    pure JV.null


def m_getDrawWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "drawWidth"))


def m_setDrawWidth_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_drawWidth : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "drawWidth" (JR.asI l_drawWidth)
    pure JV.null


def m_getDrawHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "drawHeight"))


def m_setDrawHeight_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_drawHeight : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "drawHeight" (JR.asI l_drawHeight)
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_sequenceArray : JV := (JR.arg jargs 1)
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "ImageAnimation" this #[l_image, l_animationBehavior]
    let _ <- jfields this
    JR.setField this "startX" (JR.asI (JV.int 0))
    JR.setField this "startY" (JR.asI (JV.int 0))
    JR.setField this "drawWidth" (JR.asI (<- JR.call (<- JR.callInherited this "ImageSegmentAnimation" "getImage_0" #[]) "getWidth_0" #[]))
    JR.setField this "drawHeight" (JR.asI (<- JR.call (<- JR.callInherited this "ImageSegmentAnimation" "getImage_0" #[]) "getHeight_0" #[]))
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.getField this "drawHeight")])
    JR.setField this "sequenceArray" l_sequenceArray
    pure this

initialize JR.registerClass {
    name := "ImageSegmentAnimation",
    javaName := "org.allbinary.animation.image.ImageSegmentAnimation",
    super := "ImageAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("startX", (JV.int 0)), ("startY", (JV.int 0)), ("drawWidth", (JV.int 0)), ("drawHeight", (JV.int 0)), ("circularIndexUtil", JV.null), ("sequenceArray", JV.null)],
    statics := #[],
    methods := #[
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("getStartX_0", #[], false, m_getStartX_0), 
        ("setStartX_1", #["int"], false, m_setStartX_1), 
        ("getStartY_0", #[], false, m_getStartY_0), 
        ("setStartY_1", #["int"], false, m_setStartY_1), 
        ("getDrawWidth_0", #[], false, m_getDrawWidth_0), 
        ("setDrawWidth_1", #["int"], false, m_setDrawWidth_1), 
        ("getDrawHeight_0", #[], false, m_getDrawHeight_0), 
        ("setDrawHeight_1", #["int"], false, m_setDrawHeight_1), 
        ("jinit_3", #["Image", "intArr", "AnimationBehavior"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageSegmentAnimation


