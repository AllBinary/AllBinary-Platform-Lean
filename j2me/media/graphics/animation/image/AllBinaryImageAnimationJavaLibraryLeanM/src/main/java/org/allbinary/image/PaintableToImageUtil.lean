-- Generated Code Do Not Modify
-- package org.allbinary.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PaintableToImageUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PaintableToImageUtil" "instance" (<- JR.new "PaintableToImageUtil" #[])
    pure JV.null


def m_getImage_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_paintableInterface : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_image : JV := (<- JR.call (<- JR.callStatic "GameFeatureImageCacheFactory" "getInstance_0" #[]) "get_3" #[(<- JR.call (<- JR.call (<- JR.getStatic "PaintableToImageUtil" "instance") "getClass_0" #[]) "getName_0" #[]), l_width, l_height])
    let mut l_graphics : JV := (<- JR.call l_image "getGraphics_0" #[])
    let _ := (<- JR.call l_paintableInterface "paint_1" #[l_graphics])
    return l_image


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PaintableToImageUtil",
    javaName := "org.allbinary.image.PaintableToImageUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getImage_3", #["PaintableInterface", "int", "int"], true, m_getImage_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PaintableToImageUtil


