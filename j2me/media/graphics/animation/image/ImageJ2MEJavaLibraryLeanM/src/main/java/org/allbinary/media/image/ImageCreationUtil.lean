-- Generated Code Do Not Modify
-- package org.allbinary.media.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageCreationUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageCreationUtil" "instance" (<- JR.new "ImageCreationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ImageCreationUtil" "instance")


def m_createImageWH_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_image : JV := (<- JR.call (<- JR.callStatic "GameFeatureImageCacheFactory" "getInstance_0" #[]) "get_3" #[(<- JR.call (<- JR.callInherited this "ImageCreationUtil" "getClass_0" #[]) "getName_0" #[]), l_width, l_height])
    return l_image


def m_createImage_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_maxScaleX : JV := (JR.asF (JR.arg jargs 2))
    let mut l_maxScaleY : JV := (JR.asF (JR.arg jargs 3))
    let mut l_image : JV := (<- JR.call (<- JR.callStatic "GameFeatureImageCacheFactory" "getInstance_0" #[]) "get_3" #[(<- JR.call (<- JR.callInherited this "ImageCreationUtil" "getClass_0" #[]) "getName_0" #[]), (<- JR.add (JR.toI ((<- JR.mul (JR.toF l_width) l_maxScaleX))) (JV.int 1)), (<- JR.add (JR.toI ((<- JR.mul (JR.toF l_height) l_maxScaleY))) (JV.int 1))])
    return l_image


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageCreationUtil",
    javaName := "org.allbinary.media.image.ImageCreationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createImageWH_2", #["int", "int"], false, m_createImageWH_2), 
        ("createImage_4", #["int", "int", "float", "float"], false, m_createImage_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageCreationUtil


