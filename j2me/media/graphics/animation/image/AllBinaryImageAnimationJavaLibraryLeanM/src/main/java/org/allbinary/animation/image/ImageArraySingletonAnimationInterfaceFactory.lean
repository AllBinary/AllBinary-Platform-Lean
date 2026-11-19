-- Generated Code Do Not Modify
-- package org.allbinary.animation.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageArraySingletonAnimationInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_imageArray : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "SingletonAnimationInterfaceFactory" this #[(<- JR.new "ImageArrayAnimation" #[l_imageArray, (<- JR.callStatic "AnimationBehavior" "getInstance_0" #[])])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageArraySingletonAnimationInterfaceFactory",
    javaName := "org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory",
    super := "SingletonAnimationInterfaceFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_1", #["ImageArr"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageArraySingletonAnimationInterfaceFactory


