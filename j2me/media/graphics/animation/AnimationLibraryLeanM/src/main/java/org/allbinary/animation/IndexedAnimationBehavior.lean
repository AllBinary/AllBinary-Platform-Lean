-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_IndexedAnimationBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_reset_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "loopIndex" (JR.asI (JV.int 0))
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_loopTotal : JV := (JR.asI (JR.arg jargs 0))
    let mut l_frameDelayTime : JV := (JR.asJ (JR.arg jargs 1))
    let _ <- JR.superInit "AnimationBehavior" this #[]
    let _ <- jfields this
    JR.setField this "loopTotal" (JR.asI l_loopTotal)
    JR.setField this "frameDelayTime" (JR.asJ l_frameDelayTime)
    pure this

initialize JR.registerClass {
    name := "IndexedAnimationBehavior",
    javaName := "org.allbinary.animation.IndexedAnimationBehavior",
    super := "AnimationBehavior",
    interfaces := #[],
    isInterface := false,
    fields := #[("frameDelayTime", (JV.long 0)), ("loopTotal", (JV.int 0)), ("elapsedTime", (JV.long 0)), ("loopIndex", (JV.int 0))],
    statics := #[],
    methods := #[
        ("reset_0", #[], false, m_reset_0), 
        ("jinit_2", #["int", "long"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_IndexedAnimationBehavior


