-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScreenRelationalUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ScreenRelationalUtil" "instance" (<- JR.new "ScreenRelationalUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ScreenRelationalUtil" "instance")


def m_getScaleImage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    return (JR.asF (<- JR.call this "getScaleWH_2" #[(<- JR.call l_image "getWidth_0" #[]), (<- JR.call l_image "getHeight_0" #[])]))


def m_getScaleWH_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aWidth : JV := (JR.asI (JR.arg jargs 0))
    let mut l_aHeight : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asF (<- JR.call this "getScaleWHA_3" #[l_aWidth, l_aHeight, (JV.int 20)]))


def m_getScaleWHA_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aWidth : JV := (JR.asI (JR.arg jargs 0))
    let mut l_aHeight : JV := (JR.asI (JR.arg jargs 1))
    let mut l_add : JV := (JR.asI (JR.arg jargs 2))
    let mut l_displayInfoSingleton : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let mut l_last : JV := (<- JR.call l_displayInfoSingleton "getLast_0" #[])
    let mut l_width : JV := (JR.asF (JR.toF (<- JR.aget l_last (<- JR.getField l_displayInfoSingleton "WIDTH"))))
    let mut l_height : JV := (JR.asF (JR.toF (<- JR.aget l_last (<- JR.getField l_displayInfoSingleton "HEIGHT"))))
    let mut l_largestSize : JV := (JR.asF l_width)
    if JR.truth (<- JR.lt l_largestSize l_height) then
        l_largestSize := (JR.asF l_height)
        pure ()
    let mut l_scale : JV := (JR.asF (<- JR.div (l_largestSize) (JR.toF l_aWidth)))
    return (JR.asF l_scale)


def m_getScaledHeight_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aWidth : JV := (JR.asI (JR.arg jargs 0))
    let mut l_aHeight : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI (JR.toI ((<- JR.mul (<- JR.call this "getScaleWH_2" #[l_aWidth, l_aHeight]) (JR.toF l_aHeight)))))


def m_getScaledHeightAdd_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aWidth : JV := (JR.asI (JR.arg jargs 0))
    let mut l_aHeight : JV := (JR.asI (JR.arg jargs 1))
    let mut l_add : JV := (JR.asI (JR.arg jargs 2))
    return (JR.asI (JR.toI ((<- JR.mul (<- JR.call this "getScaleWHA_3" #[l_aWidth, l_aHeight, l_add]) (JR.toF l_aHeight)))))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ScreenRelationalUtil",
    javaName := "org.allbinary.graphics.displayable.ScreenRelationalUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getScaleImage_1", #["Image"], false, m_getScaleImage_1), 
        ("getScaleWH_2", #["int", "int"], false, m_getScaleWH_2), 
        ("getScaleWHA_3", #["int", "int", "int"], false, m_getScaleWHA_3), 
        ("getScaledHeight_2", #["int", "int"], false, m_getScaledHeight_2), 
        ("getScaledHeightAdd_3", #["int", "int", "int"], false, m_getScaledHeightAdd_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScreenRelationalUtil


