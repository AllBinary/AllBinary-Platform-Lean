-- Generated Code Do Not Modify
-- package org.allbinary.animation.transition.shake
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ShakeAnimationListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onSmallShakeEvent_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onMediumShakeEvent_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onLargeShakeEvent_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onShakeEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_shakeEvent : JV := (JR.arg jargs 0)
    pure JV.null


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ShakeAnimationListener",
    javaName := "org.allbinary.animation.transition.shake.ShakeAnimationListener",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("onSmallShakeEvent_0", #[], false, m_onSmallShakeEvent_0), 
        ("onMediumShakeEvent_0", #[], false, m_onMediumShakeEvent_0), 
        ("onLargeShakeEvent_0", #[], false, m_onLargeShakeEvent_0), 
        ("onShakeEvent_1", #["ShakeEvent"], false, m_onShakeEvent_1), 
        ("getType_0", #[], false, m_getType_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ShakeAnimationListener


