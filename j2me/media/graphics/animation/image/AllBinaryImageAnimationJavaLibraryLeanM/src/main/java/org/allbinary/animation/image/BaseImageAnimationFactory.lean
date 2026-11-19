-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseImageAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "animationFactoryImageScaleUtil" (<- JR.callStatic "AnimationFactoryImageScaleUtil" "getInstance_0" #[])
    JR.setField this "scaleProperties" (<- JR.getStatic "ScaleProperties" "instance")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createFactoryBase_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_sequenceArray : JV := (JR.arg jargs 1)
    let mut l_width : JV := (JR.asI (JR.arg jargs 2))
    let mut l_height : JV := (JR.asI (JR.arg jargs 3))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 4)
    return (<- JR.new "BaseImageAnimationFactory" #[l_image, l_sequenceArray, l_width, l_height, (JV.int 0), (JV.int 0), l_animationBehaviorFactory])


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[l_instanceId])


def m_getImage_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "image")


def m_getSequenceArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "sequenceArray")


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    JR.setField this "scaleProperties" l_scaleProperties
    if JR.truth (<- JR.getField (<- JR.getField this "scaleProperties") "shouldScale") then
        JR.setField (<- JR.getField this "scaleProperties") "scaleWidth" (JR.asI (JR.toI ((<- JR.mul (JR.toF (<- JR.getField (<- JR.getField this "animationFactoryInitializationVisitor") "width")) (<- JR.getField (<- JR.getField this "scaleProperties") "scaleX")))))
        JR.setField (<- JR.getField this "scaleProperties") "scaleHeight" (JR.asI (JR.toI ((<- JR.mul (JR.toF (<- JR.getField (<- JR.getField this "animationFactoryInitializationVisitor") "height")) (<- JR.getField (<- JR.getField this "scaleProperties") "scaleY")))))
        pure ()
    else
        pure ()
    pure JV.null


def m_getAnimationFactoryInitializationVisitorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animationFactoryInitializationVisitor")


def m_getScalePropertiesP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "scaleProperties")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let mut l_commonLabels : JV := (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.callSuper "Object" this "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonLabels "HEIGHT_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call (<- JR.getField this "image") "getHeight_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.getField this "animationFactoryInitializationVisitor") "toString_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_sequenceArray : JV := (JR.arg jargs 1)
    let mut l_width : JV := (JR.asI (JR.arg jargs 2))
    let mut l_height : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 4))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 5))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "animationFactoryInitializationVisitor" (<- JR.new "AnimationFactoryInitializationVisitor" #[])
    JR.setField this "image" l_image
    JR.setField (<- JR.getField this "animationFactoryInitializationVisitor") "width" (JR.asI l_width)
    JR.setField (<- JR.getField this "animationFactoryInitializationVisitor") "height" (JR.asI l_height)
    JR.setField this "animationBehaviorFactory" l_animationBehaviorFactory
    JR.setField this "sequenceArray" l_sequenceArray
    JR.setField (<- JR.getField this "animationFactoryInitializationVisitor") "dx" (JR.asI l_dx)
    JR.setField (<- JR.getField this "animationFactoryInitializationVisitor") "dy" (JR.asI l_dy)
    pure this

initialize JR.registerClass {
    name := "BaseImageAnimationFactory",
    javaName := "org.allbinary.animation.image.BaseImageAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("animationFactoryImageScaleUtil", JV.null), ("image", JV.null), ("animationBehaviorFactory", JV.null), ("sequenceArray", JV.null), ("animationFactoryInitializationVisitor", JV.null), ("scaleProperties", JV.null)],
    statics := #[],
    methods := #[
        ("createFactoryBase_5", #["Image", "intArr", "int", "int", "AnimationBehaviorFactory"], true, m_createFactoryBase_5), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getImage_0", #[], false, m_getImage_0), 
        ("getSequenceArray_0", #[], false, m_getSequenceArray_0), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("getAnimationFactoryInitializationVisitorP_0", #[], false, m_getAnimationFactoryInitializationVisitorP_0), 
        ("getScalePropertiesP_0", #[], false, m_getScalePropertiesP_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_7", #["Image", "intArr", "int", "int", "int", "int", "AnimationBehaviorFactory"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseImageAnimationFactory


