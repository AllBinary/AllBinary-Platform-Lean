-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageAnimationSingletonInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "SingletonAnimationInterfaceFactory" this #[(<- JR.new "ImageAnimation" #[(<- JR.call (<- JR.callStatic "AnimationFrameToImageUtil" "getInstance_0" #[]) "getInstanceWH_3" #[l_width, l_height, l_animationInterface]), (<- JR.callStatic "AnimationBehavior" "getInstance_0" #[])])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageAnimationSingletonInterfaceFactory",
    javaName := "org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory",
    super := "SingletonAnimationInterfaceFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_3", #["Animation", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageAnimationSingletonInterfaceFactory


