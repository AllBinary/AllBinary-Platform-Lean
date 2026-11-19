-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageArrayBaseRotationAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "imageModifierUtil" (<- JR.callStatic "ImageModifierUtil" "getInstanceOrCreate_0" #[])
    JR.setField this "imageArray" (<- JR.getStatic "NullImage" "NULL_IMAGE_ARRAY")
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callInherited this "ImageArrayBaseRotationAnimation" "getSize_0" #[]))


def m_setAlpha_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alpha : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.ne (<- JR.getInherited this "ImageArrayBaseRotationAnimation" "alphaP") l_alpha) then
        let _ := (<- JR.callSuper "RotationAnimation" this "setAlpha_1" #[l_alpha])
        let _ := (<- JR.call (<- JR.getField this "imageModifierUtil") "reset_0" #[])
        let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getInherited this "ImageArrayBaseRotationAnimation" "circularIndexUtil") "getIndex_0" #[]))
        let _ := (<- JR.call (<- JR.getField this "imageModifierUtil") "setAlpha_4" #[(<- JR.aget (<- JR.getField this "originalImageArray") l_index), (<- JR.aget (<- JR.getField this "imageArray") l_index), l_index, (<- JR.getInherited this "ImageArrayBaseRotationAnimation" "alphaP")])
        pure ()
    pure JV.null


def m_nextRotation_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "RotationAnimation" this "nextRotation_0" #[])
    let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getInherited this "ImageArrayBaseRotationAnimation" "circularIndexUtil") "getIndex_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "imageModifierUtil") "setAlpha_4" #[(<- JR.aget (<- JR.getField this "originalImageArray") l_index), (<- JR.aget (<- JR.getField this "imageArray") l_index), l_index, (<- JR.getInherited this "ImageArrayBaseRotationAnimation" "alphaP")])
    JR.setField this "currentImage" (<- JR.aget (<- JR.getField this "imageArray") l_index)
    pure JV.null


def m_previousRotation_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "RotationAnimation" this "previousRotation_0" #[])
    let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getInherited this "ImageArrayBaseRotationAnimation" "circularIndexUtil") "getIndex_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "imageModifierUtil") "setAlpha_4" #[(<- JR.aget (<- JR.getField this "originalImageArray") l_index), (<- JR.aget (<- JR.getField this "imageArray") l_index), l_index, (<- JR.getInherited this "ImageArrayBaseRotationAnimation" "alphaP")])
    JR.setField this "currentImage" (<- JR.aget (<- JR.getField this "imageArray") l_index)
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index2 : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "RotationAnimation" this "setFrame_1" #[l_index2])
    let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getInherited this "ImageArrayBaseRotationAnimation" "circularIndexUtil") "getIndex_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "imageModifierUtil") "setAlpha_4" #[(<- JR.aget (<- JR.getField this "originalImageArray") l_index), (<- JR.aget (<- JR.getField this "imageArray") l_index), l_index, (<- JR.getInherited this "ImageArrayBaseRotationAnimation" "alphaP")])
    JR.setField this "currentImage" (<- JR.aget (<- JR.getField this "imageArray") l_index)
    pure JV.null


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_setImageArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    JR.setField this "imageArray" l_imageArray
    JR.setField this "totalFrames" (JR.asI (<- JR.alen l_imageArray))
    JR.setInherited this "ImageArrayBaseRotationAnimation" "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.getField this "totalFrames")])
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call l_graphics "drawImage_4" #[(<- JR.getField this "currentImage"), l_x, l_y, (<- JR.getField this "anchor")])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_disposalUtil : JV := (<- JR.callStatic "DisposalUtil" "getInstance_0" #[])
    let mut l_size2 : JV := (JR.asI (<- JR.alen (<- JR.getField this "imageArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size2)) then break
            let _ := (<- JR.call l_disposalUtil "disposeImage_1" #[(<- JR.aget (<- JR.getField this "imageArray") l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "originalImageArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call l_disposalUtil "disposeImage_1" #[(<- JR.aget (<- JR.getField this "originalImageArray") l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call l_disposalUtil "disposeImage_1" #[(<- JR.getField this "currentImage")])
    pure JV.null


def m_finalize_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_disposalUtil : JV := (<- JR.callStatic "DisposalUtil" "getInstance_0" #[])
    let mut l_size2 : JV := (JR.asI (<- JR.alen (<- JR.getField this "imageArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size2)) then break
            let _ := (<- JR.call l_disposalUtil "disposeImage_1" #[(<- JR.aget (<- JR.getField this "imageArray") l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "originalImageArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call l_disposalUtil "disposeImage_1" #[(<- JR.aget (<- JR.getField this "originalImageArray") l_index)])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call l_disposalUtil "disposeImage_1" #[(<- JR.getField this "currentImage")])
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_originalImageArray : JV := (JR.arg jargs 0)
    let mut l_angleInfo : JV := (JR.arg jargs 1)
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "RotationAnimation" this #[l_angleInfo, (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.div (JV.int 360) (JR.toI (<- JR.call (<- JR.call l_angleInfo "getAngleIncrementInfo_0" #[]) "getAngleIncrement_0" #[])))]), l_animationBehavior]
    let _ <- jfields this
    JR.setField this "originalImageArray" l_originalImageArray
    let _ := (<- JR.call this "setImageArray_1" #[(<- JR.call (<- JR.getField this "imageModifierUtil") "getImageArray_1" #[l_originalImageArray])])
    JR.setField this "currentImage" (<- JR.aget (<- JR.getField this "imageArray") (<- JR.call (<- JR.getInherited this "ImageArrayBaseRotationAnimation" "circularIndexUtil") "getIndex_0" #[]))
    pure this

initialize JR.registerClass {
    name := "ImageArrayBaseRotationAnimation",
    javaName := "org.allbinary.animation.image.ImageArrayBaseRotationAnimation",
    super := "RotationAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("imageModifierUtil", JV.null), ("originalImageArray", JV.null), ("imageArray", JV.null), ("currentImage", JV.null), ("totalFrames", (JV.int 0)), ("anchor", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("setAlpha_1", #["int"], false, m_setAlpha_1), 
        ("nextRotation_0", #[], false, m_nextRotation_0), 
        ("previousRotation_0", #[], false, m_previousRotation_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("setImageArray_1", #["ImageArr"], false, m_setImageArray_1), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("close_0", #[], false, m_close_0), 
        ("finalize_0", #[], false, m_finalize_0), 
        ("jinit_3", #["ImageArr", "AngleInfo", "AnimationBehavior"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageArrayBaseRotationAnimation


