-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call this "getSize_0" #[]))


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 1))


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call l_graphics "drawImage_4" #[(<- JR.getField this "image"), l_x, l_y, (<- JR.getField this "anchor")])
    pure JV.null


def m_getImage_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "image")


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "DisposalUtil" "getInstance_0" #[]) "disposeImage_1" #[(<- JR.getField this "image")])
    pure JV.null


def m_finalize_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "DisposalUtil" "getInstance_0" #[]) "disposeImage_1" #[(<- JR.getField this "image")])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    JR.setField this "image" l_image
    pure this

initialize JR.registerClass {
    name := "ImageAnimation",
    javaName := "org.allbinary.animation.image.ImageAnimation",
    super := "IndexedAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("image", JV.null), ("anchor", (JV.int 0))],
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
        ("getImage_0", #[], false, m_getImage_0), 
        ("close_0", #[], false, m_close_0), 
        ("finalize_0", #[], false, m_finalize_0), 
        ("jinit_2", #["Image", "AnimationBehavior"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageAnimation


