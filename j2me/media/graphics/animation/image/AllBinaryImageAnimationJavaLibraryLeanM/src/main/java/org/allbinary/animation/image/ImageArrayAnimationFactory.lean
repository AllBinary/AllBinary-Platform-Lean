-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageArrayAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "dx" (JR.asI (JV.int 0))
    JR.setField this "dy" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField this "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField this "dy") (JV.int 0)))) then
        return (<- JR.new "AdjustedImageArrayAnimation" #[(<- JR.getField this "imageArray"), (<- JR.getField this "dx"), (<- JR.getField this "dy"), (<- JR.call (<- JR.getField this "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
    else
        return (<- JR.new "ImageArrayAnimation" #[(<- JR.getField this "imageArray"), (<- JR.callStatic "AnimationBehavior" "getInstance_0" #[])])
    pure JV.null


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "imageArray" l_imageArray
    JR.setField this "animationBehaviorFactory" l_animationBehaviorFactory
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    pure this

initialize JR.registerClass {
    name := "ImageArrayAnimationFactory",
    javaName := "org.allbinary.animation.image.ImageArrayAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("dx", (JV.int 0)), ("dy", (JV.int 0)), ("imageArray", JV.null), ("animationBehaviorFactory", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_4", #["ImageArr", "int", "int", "AnimationBehaviorFactory"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageArrayAnimationFactory


