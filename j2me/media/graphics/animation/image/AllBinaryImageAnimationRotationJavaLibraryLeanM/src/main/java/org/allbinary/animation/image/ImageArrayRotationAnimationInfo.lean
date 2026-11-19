-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageArrayRotationAnimationInfo

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setImageArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    JR.setField this "imageArray" l_imageArray
    pure JV.null


def m_getImageArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "imageArray")


def m_getAngleInfoP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "AngleInfo" "getInstance_1" #[(JR.toS (<- JR.getField this "angleIncrement"))])


def m_setTotalAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalAngle : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "totalAngle" (JR.asI l_totalAngle)
    pure JV.null


def m_getTotalAngle_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "totalAngle"))


def m_setDx_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "dx" (JR.asI l_dx)
    pure JV.null


def m_getDx_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "dx"))


def m_setDy_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dy : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "dy" (JR.asI l_dy)
    pure JV.null


def m_getDy_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "dy"))


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let mut l_angleIncrement : JV := (JR.asI (JR.arg jargs 1))
    let mut l_totalAngle : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "imageArray" l_imageArray
    JR.setField this "angleIncrement" (JR.asI l_angleIncrement)
    JR.setField this "totalAngle" (JR.asI l_totalAngle)
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    pure this

initialize JR.registerClass {
    name := "ImageArrayRotationAnimationInfo",
    javaName := "org.allbinary.animation.image.ImageArrayRotationAnimationInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("imageArray", JV.null), ("angleIncrement", (JV.int 0)), ("totalAngle", (JV.int 0)), ("dx", (JV.int 0)), ("dy", (JV.int 0))],
    statics := #[],
    methods := #[
        ("setImageArray_1", #["ImageArr"], false, m_setImageArray_1), 
        ("getImageArray_0", #[], false, m_getImageArray_0), 
        ("getAngleInfoP_0", #[], false, m_getAngleInfoP_0), 
        ("setTotalAngle_1", #["int"], false, m_setTotalAngle_1), 
        ("getTotalAngle_0", #[], false, m_getTotalAngle_0), 
        ("setDx_1", #["int"], false, m_setDx_1), 
        ("getDx_0", #[], false, m_getDx_0), 
        ("setDy_1", #["int"], false, m_setDy_1), 
        ("getDy_0", #[], false, m_getDy_0), 
        ("jinit_5", #["ImageArr", "int", "int", "int", "int"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageArrayRotationAnimationInfo


