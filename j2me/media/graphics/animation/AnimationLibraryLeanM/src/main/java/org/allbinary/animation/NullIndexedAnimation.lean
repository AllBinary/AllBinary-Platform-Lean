-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullIndexedAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationBehavior : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullIndexedAnimation",
    javaName := "org.allbinary.animation.NullIndexedAnimation",
    super := "IndexedAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("jinit_1", #["AnimationBehavior"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullIndexedAnimation


