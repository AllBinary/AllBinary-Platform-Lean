-- Generated Code Do Not Modify
-- package org.allbinary.animation.image.sprite
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpriteIndexedAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call this "getSize_0" #[]))


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen (<- JR.getField this "basicColorArray")))) then break
            if JR.truth (<- JR.eq l_basicColor (<- JR.aget (<- JR.getField this "basicColorArray") l_index)) then
                let _ := (<- JR.call this "setFrame_1" #[l_index])
                break
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.lt (<- JR.alen (<- JR.getField this "basicColorArray")) (<- JR.call this "getFrame_0" #[])) then
        return (<- JR.aget (<- JR.getField this "basicColorArray") (<- JR.call this "getFrame_0" #[]))
    else
        return (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")
    pure JV.null


def m_paintFrame_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_frame : JV := (JR.asI (JR.arg jargs 1))
    let mut l_x : JV := (JR.asI (JR.arg jargs 2))
    let mut l_y : JV := (JR.asI (JR.arg jargs 3))
    let _ := (<- JR.call this "setFrame_1" #[l_frame])
    let _ := (<- JR.call (<- JR.getField this "sprite") "setPosition_2" #[l_x, l_y])
    let _ := (<- JR.call (<- JR.getField this "sprite") "paint_1" #[l_graphics])
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField this "sprite") "setPosition_2" #[l_x, l_y])
    let _ := (<- JR.call (<- JR.getField this "sprite") "paint_1" #[l_graphics])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "sprite") "paint_1" #[l_graphics])
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "sprite") "nextFrame_0" #[])
    pure JV.null


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "sprite") "prevFrame_0" #[])
    pure JV.null


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "sprite") "getRawFrameCount_0" #[]))


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frame : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getField this "sprite") "setFrame_1" #[l_frame])
    pure JV.null


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "sprite") "getFrame_0" #[]))


def m_isLastFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "sprite") "getFrame_0" #[]) (<- JR.sub (<- JR.call this "getSize_0" #[]) (JV.int 1))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_getLastFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call this "getSize_0" #[]))


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_finalize_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sprite : JV := (JR.arg jargs 0)
    let mut l_image : JV := (JR.arg jargs 1)
    let mut l_basicColorArray : JV := (JR.arg jargs 2)
    let mut l_animationBehavior : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    JR.setField this "sprite" l_sprite
    JR.setField this "image" l_image
    JR.setField this "basicColorArray" l_basicColorArray
    if JR.truth (<- JR.cand (<- JR.ne (<- JR.alen (<- JR.getField this "basicColorArray")) (JV.int 0)) (do pure (<- JR.ne (<- JR.call this "getSize_0" #[]) (<- JR.alen (<- JR.getField this "basicColorArray"))))) then
        throw (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "TOTAL_LABEL")]) "appendint_1" #[(<- JR.call this "getSize_0" #[])]) "append_1" #[(JV.str "!=")]) "appendint_1" #[(<- JR.alen (<- JR.getField this "basicColorArray"))]) "toString_0" #[])])
    pure this

initialize JR.registerClass {
    name := "SpriteIndexedAnimation",
    javaName := "org.allbinary.animation.image.sprite.SpriteIndexedAnimation",
    super := "IndexedAnimation",
    interfaces := #["ColorCompositeInterface"],
    isInterface := false,
    fields := #[("sprite", JV.null), ("image", JV.null), ("basicColorArray", JV.null)],
    statics := #[],
    methods := #[
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("paintFrame_4", #["Graphics", "int", "int", "int"], false, m_paintFrame_4), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("isLastFrame_0", #[], false, m_isLastFrame_0), 
        ("getLastFrame_0", #[], false, m_getLastFrame_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("close_0", #[], false, m_close_0), 
        ("finalize_0", #[], false, m_finalize_0), 
        ("jinit_4", #["Sprite", "Image", "BasicColorArr", "AnimationBehavior"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpriteIndexedAnimation


