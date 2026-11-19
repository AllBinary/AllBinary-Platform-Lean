-- Generated Code Do Not Modify
-- package org.allbinary.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnimationFrameToImageUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AnimationFrameToImageUtil" "instance" (<- JR.new "AnimationFrameToImageUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AnimationFrameToImageUtil" "instance")


def m_getInstanceTranslate_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_animationInterface : JV := (JR.arg jargs 2)
    let mut l_image : JV := (<- JR.call (<- JR.callStatic "GameFeatureImageCacheFactory" "getInstance_0" #[]) "get_3" #[(<- JR.call (<- JR.call (<- JR.getStatic "AnimationFrameToImageUtil" "instance") "getClass_0" #[]) "getName_0" #[]), ((<- JR.shr ((<- JR.mul l_width (JV.int 3))) (JV.int 1))), ((<- JR.shr ((<- JR.mul l_height (JV.int 3))) (JV.int 1)))])
    let mut l_graphics : JV := (<- JR.call l_image "getGraphics_0" #[])
    let mut l_tranlateX : JV := (JR.asI ((<- JR.shr l_width (JV.int 2))))
    let mut l_tranlateY : JV := (JR.asI ((<- JR.shr l_height (JV.int 2))))
    let _ := (<- JR.call l_graphics "translate_2" #[l_tranlateX, l_tranlateY])
    let _ := (<- JR.call l_animationInterface "paintXY_3" #[l_graphics, (JV.int 0), (JV.int 0)])
    let _ := (<- JR.call l_graphics "translate_2" #[(JR.neg l_tranlateX), (JR.neg l_tranlateY)])
    return l_image


def m_getInstanceWH_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_animationInterface : JV := (JR.arg jargs 2)
    let mut l_image : JV := (<- JR.call (<- JR.callStatic "GameFeatureImageCacheFactory" "getInstance_0" #[]) "get_3" #[(<- JR.call (<- JR.call (<- JR.getStatic "AnimationFrameToImageUtil" "instance") "getClass_0" #[]) "getName_0" #[]), l_width, l_height])
    let mut l_graphics : JV := (<- JR.call l_image "getGraphics_0" #[])
    let _ := (<- JR.call l_animationInterface "paintXY_3" #[l_graphics, (JV.int 0), (JV.int 0)])
    return l_image


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AnimationFrameToImageUtil",
    javaName := "org.allbinary.image.AnimationFrameToImageUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstanceTranslate_3", #["int", "int", "Animation"], false, m_getInstanceTranslate_3), 
        ("getInstanceWH_3", #["int", "int", "Animation"], false, m_getInstanceWH_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnimationFrameToImageUtil


