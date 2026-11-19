-- Generated Code Do Not Modify
-- package org.allbinary.media.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageCopyUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "imageCreationUtil" (<- JR.callStatic "ImageCreationUtil" "getInstance_0" #[])
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    JR.setField this "gameFeatureFactory" (<- JR.callStatic "GameFeatureFactory" "getInstance_0" #[])
    JR.setField this "features" (<- JR.callStatic "Features" "getInstance_0" #[])
    JR.setField this "NO_COPY" (JV.str "J2ME does not need to copy images after initial loading")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageCopyUtil" "instance" (<- JR.new "ImageCopyUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ImageCopyUtil" "instance")


def m_createImageForRotation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_originalImage : JV := (JR.arg jargs 0)
    return (<- JR.call this "createImage_1" #[l_originalImage])


def m_createImage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_originalImage : JV := (JR.arg jargs 0)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "features") "isFeature_1" #[(<- JR.getField (<- JR.getField this "gameFeatureFactory") "POST_IMAGE_LOADING_MODIFICATION")])) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField this "NO_COPY"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR"), (<- JR.new "Exception" #[])])
        return l_originalImage
    let mut l_image : JV := (<- JR.call (<- JR.getField this "imageCreationUtil") "createImageWH_2" #[(<- JR.call l_originalImage "getWidth_0" #[]), (<- JR.call l_originalImage "getHeight_0" #[])])
    if JR.truth (<- JR.call l_image "isMutable_0" #[]) then
        let _ := (<- JR.call (<- JR.call l_image "getGraphics_0" #[]) "drawImage_4" #[l_originalImage, (JV.int 0), (JV.int 0), (<- JR.getField this "anchor")])
        return l_image
    else
        throw (<- JR.new "Exception" #[(JV.str "Not Mutable")])
    pure JV.null


def m_createImageScale_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_originalImage : JV := (JR.arg jargs 0)
    let mut l_canvasScale : JV := (JR.asF (JR.arg jargs 1))
    let mut l_resize : JV := (JR.arg jargs 2)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "features") "isFeature_1" #[(<- JR.getField (<- JR.getField this "gameFeatureFactory") "POST_IMAGE_LOADING_MODIFICATION")])) then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField this "NO_COPY"), this, (<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR"), (<- JR.new "Exception" #[])])
        return l_originalImage
    let mut l_newWidth : JV := (JR.asI (JR.toI ((<- JR.mul (JR.toF (<- JR.call l_originalImage "getWidth_0" #[])) l_canvasScale))))
    let mut l_newHeight : JV := (JR.asI (JR.toI ((<- JR.mul (JR.toF (<- JR.call l_originalImage "getHeight_0" #[])) l_canvasScale))))
    if JR.truth l_resize then
        if JR.truth (<- JR.lt l_newWidth l_newHeight) then
            l_newWidth := (JR.asI l_newHeight)
            pure ()
        if JR.truth (<- JR.lt l_newHeight l_newWidth) then
            l_newHeight := (JR.asI l_newWidth)
            pure ()
        pure ()
    let mut l_image : JV := (<- JR.call (<- JR.getField this "imageCreationUtil") "createImageWH_2" #[l_newWidth, l_newHeight])
    if JR.truth (<- JR.call l_image "isMutable_0" #[]) then
        let mut l_halfWidthDelta : JV := (JR.asI (<- JR.div ((<- JR.sub l_newWidth (<- JR.call l_originalImage "getWidth_0" #[]))) (JV.int 2)))
        let mut l_halfHeightDelta : JV := (JR.asI (<- JR.div ((<- JR.sub l_newHeight (<- JR.call l_originalImage "getHeight_0" #[]))) (JV.int 2)))
        let mut l_graphics : JV := (<- JR.call l_image "getGraphics_0" #[])
        let _ := (<- JR.call l_graphics "drawImage_4" #[l_originalImage, l_halfWidthDelta, l_halfHeightDelta, (<- JR.getField this "anchor")])
        return l_image
    else
        throw (<- JR.new "Exception" #[(JV.str "Not Mutable")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageCopyUtil",
    javaName := "org.allbinary.media.image.ImageCopyUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("imageCreationUtil", JV.null), ("anchor", (JV.int 0)), ("gameFeatureFactory", JV.null), ("features", JV.null), ("NO_COPY", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createImageForRotation_1", #["Image"], false, m_createImageForRotation_1), 
        ("createImage_1", #["Image"], false, m_createImage_1), 
        ("createImageScale_3", #["Image", "float", "boolean"], false, m_createImageScale_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageCopyUtil


