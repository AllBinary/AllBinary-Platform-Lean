-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TweenedImageAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call this "getSize_0" #[]))


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
    return (JR.asI (<- JR.getField this "totalFrames"))


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_frame : JV := (JR.asI (<- JR.call this "getFrame_0" #[]))
    let mut l_currentX : JV := (JR.asI (<- JR.mul (<- JR.getField this "dx") l_frame))
    let mut l_currentY : JV := (JR.asI (<- JR.mul (<- JR.getField this "dy") l_frame))
    let _ := (<- JR.call l_graphics "drawImage_4" #[(<- JR.getField this "image"), (<- JR.add l_x l_currentX), (<- JR.add l_y l_currentY), (<- JR.getField this "anchor")])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "DisposalUtil" "getInstance_0" #[]) "disposeImage_1" #[(<- JR.getField this "image")])
    pure JV.null


def m_finalize_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "DisposalUtil" "getInstance_0" #[]) "disposeImage_1" #[(<- JR.getField this "image")])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_totalFrames : JV := (JR.asI (JR.arg jargs 3))
    let mut l_animationBehavior : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    JR.setField this "image" l_image
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    JR.setField this "totalFrames" (JR.asI l_totalFrames)
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.getField this "totalFrames")])
    pure this

initialize JR.registerClass {
    name := "TweenedImageAnimation",
    javaName := "org.allbinary.animation.image.TweenedImageAnimation",
    super := "IndexedAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("image", JV.null), ("dx", (JV.int 0)), ("dy", (JV.int 0)), ("totalFrames", (JV.int 0)), ("circularIndexUtil", JV.null), ("anchor", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("close_0", #[], false, m_close_0), 
        ("finalize_0", #[], false, m_finalize_0), 
        ("jinit_5", #["Image", "int", "int", "int", "AnimationBehavior"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TweenedImageAnimation


