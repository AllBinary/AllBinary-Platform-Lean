-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageArrayAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "imageArray" (<- JR.getStatic "NullImage" "NULL_IMAGE_ARRAY")
    JR.setField this "circularIndexUtil" (<- JR.getStatic "CircularIndexUtil" "NULL_CIRCULAR_INDEX_UTIL")
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


def m_getImage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField this "imageArray") l_index)


def m_getImageArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "imageArray")


def m_setImageArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    JR.setField this "imageArray" l_imageArray
    JR.setField this "totalFrames" (JR.asI (<- JR.alen l_imageArray))
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.getField this "totalFrames")])
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call l_graphics "drawImage_4" #[(<- JR.aget (<- JR.getField this "imageArray") (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[])), l_x, l_y, (<- JR.getField this "anchor")])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call this "setImageArray_1" #[l_imageArray])
    pure this

initialize JR.registerClass {
    name := "ImageArrayAnimation",
    javaName := "org.allbinary.animation.image.ImageArrayAnimation",
    super := "IndexedAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("imageArray", JV.null), ("totalFrames", (JV.int 0)), ("circularIndexUtil", JV.null), ("anchor", (JV.int 0))],
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
        ("getImage_1", #["int"], false, m_getImage_1), 
        ("getImageArray_0", #[], false, m_getImageArray_0), 
        ("setImageArray_1", #["ImageArr"], false, m_setImageArray_1), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_2", #["ImageArr", "AnimationBehavior"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageArrayAnimation


