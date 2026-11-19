-- Generated Code Do Not Modify
-- package org.allbinary.media.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageJ2MEScaleUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageJ2MEScaleUtil" "instance" (<- JR.new "ImageJ2MEScaleUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ImageJ2MEScaleUtil" "instance")


def m_scaleArray_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_images : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_scaledImages : JV := (<- JR.newArray "L" 1 #[(<- JR.alen l_images)])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen l_images))
        repeat
            let jtemp1 : JV := (JR.dec l_index)
            l_index := jtemp1
            
            if !(JR.truth (<- JR.ge jtemp1 (JV.int 0))) then break
            JR.aset l_scaledImages l_index (<- JR.call this "scale_3" #[(<- JR.aget l_images l_index), l_width, l_height])
            pure ()
        pure ()
    return l_scaledImages


def m_scale_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_sourceWidth : JV := (JR.asI (<- JR.call l_image "getWidth_0" #[]))
    let mut l_sourceHeight : JV := (JR.asI (<- JR.call l_image "getHeight_0" #[]))
    let mut l_originalData : JV := (<- JR.newArray "I" 1 #[(<- JR.mul (<- JR.call l_image "getWidth_0" #[]) (<- JR.call l_image "getHeight_0" #[]))])
    let _ := (<- JR.call l_image "getRGB_7" #[l_originalData, (JV.int 0), (<- JR.call l_image "getWidth_0" #[]), (JV.int 0), (JV.int 0), (<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[])])
    let mut l_scaledData : JV := (<- JR.newArray "I" 1 #[(<- JR.mul l_width l_height)])
    let mut l_heightRatioFactor : JV := (JR.asI (<- JR.div ((<- JR.mul (JV.int 8) l_sourceHeight)) l_height))
    let mut l_widthRatioFactor : JV := (JR.asI (<- JR.div ((<- JR.mul (JV.int 8) l_sourceWidth)) l_width))
    let mut l_scaledIndex : JV := (JR.asI (<- JR.sub (<- JR.alen l_scaledData) (JV.int 1)))
    let mut l_dx : JV := (JR.asI (JV.int 0))
    let mut l_dy : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI l_height)
        repeat
            let jtemp4 : JV := (JR.dec l_index)
            l_index := jtemp4
            
            if !(JR.truth (<- JR.ge jtemp4 (JV.int 0))) then break
            l_dy := (JR.asI (<- JR.shr ((<- JR.mul l_index l_heightRatioFactor)) (JV.int 3)))
            if true then
                let mut l_index2 : JV := (JR.asI l_width)
                repeat
                    let jtemp3 : JV := (JR.dec l_index2)
                    l_index2 := jtemp3
                    
                    if !(JR.truth (<- JR.ge jtemp3 (JV.int 0))) then break
                    l_dx := (JR.asI (<- JR.shr ((<- JR.mul l_index2 l_widthRatioFactor)) (JV.int 3)))
                    let jtemp2 : JV := l_scaledIndex
                    l_scaledIndex := (JR.dec jtemp2)
                    JR.aset l_scaledData jtemp2 (JR.asI (<- JR.aget l_originalData (<- JR.add ((<- JR.mul l_sourceWidth l_dy)) l_dx)))
                    pure ()
                pure ()
            pure ()
        pure ()
    let mut l_scaledImage : JV := (<- JR.callStatic "Image" "createRGBImage_4" #[l_scaledData, l_width, l_height, (JV.bool true)])
    return l_scaledImage


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageJ2MEScaleUtil",
    javaName := "org.allbinary.media.image.ImageJ2MEScaleUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("scaleArray_3", #["ImageArr", "int", "int"], false, m_scaleArray_3), 
        ("scale_3", #["Image", "int", "int"], false, m_scale_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageJ2MEScaleUtil


