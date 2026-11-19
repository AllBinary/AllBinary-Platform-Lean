-- Generated Code Do Not Modify
-- package org.allbinary.animation.transition.shake
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoShakeAnimationListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoShakeAnimationListener" "NO_SHAKE_ANIMATION_LISTENER" (<- JR.new "NoShakeAnimationListener" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "ShakeAnimationListener" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoShakeAnimationListener",
    javaName := "org.allbinary.animation.transition.shake.NoShakeAnimationListener",
    super := "ShakeAnimationListener",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NO_SHAKE_ANIMATION_LISTENER", JV.null)],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoShakeAnimationListener


