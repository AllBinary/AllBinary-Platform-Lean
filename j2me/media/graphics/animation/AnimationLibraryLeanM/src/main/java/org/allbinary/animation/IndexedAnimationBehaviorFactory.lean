-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_IndexedAnimationBehaviorFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getOrCreateInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "IndexedAnimationBehavior" #[(<- JR.getField this "loopTotal"), (<- JR.getField this "frameDelayTime")])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_loopTotal : JV := (JR.asI (JR.arg jargs 0))
    let mut l_frameDelayTime : JV := (JR.asJ (JR.arg jargs 1))
    let _ <- JR.superInit "AnimationBehaviorFactory" this #[]
    let _ <- jfields this
    JR.setField this "loopTotal" (JR.asI l_loopTotal)
    JR.setField this "frameDelayTime" (JR.asJ l_frameDelayTime)
    pure this

initialize JR.registerClass {
    name := "IndexedAnimationBehaviorFactory",
    javaName := "org.allbinary.animation.IndexedAnimationBehaviorFactory",
    super := "AnimationBehaviorFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[("frameDelayTime", (JV.long 0)), ("loopTotal", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getOrCreateInstance_0", #[], false, m_getOrCreateInstance_0), 
        ("jinit_2", #["int", "long"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_IndexedAnimationBehaviorFactory


