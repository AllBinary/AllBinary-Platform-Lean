-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SequentialAnimationInterface

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null

initialize JR.registerClass {
    name := "SequentialAnimationInterface",
    javaName := "org.allbinary.animation.SequentialAnimationInterface",
    super := "Object",
    interfaces := #["AnimationInterface", "SequenceInterface"],
    isInterface := true,
    fields := #[],
    statics := #[],
    methods := #[],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SequentialAnimationInterface


