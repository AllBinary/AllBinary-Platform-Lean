-- Generated Code Do Not Modify
-- package org.allbinary.animation.transition
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RunAtEndAnimationListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onPlatformAnimationStart_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onPlatformAnimationEnd_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onPlatformAnimationRepeat_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_runnable : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "runnable" l_runnable
    pure this

initialize JR.registerClass {
    name := "RunAtEndAnimationListener",
    javaName := "org.allbinary.animation.transition.RunAtEndAnimationListener",
    super := "Object",
    interfaces := #["AnimationListenerInterface"],
    isInterface := false,
    fields := #[("runnable", JV.null)],
    statics := #[],
    methods := #[
        ("onPlatformAnimationStart_0", #[], false, m_onPlatformAnimationStart_0), 
        ("onPlatformAnimationEnd_0", #[], false, m_onPlatformAnimationEnd_0), 
        ("onPlatformAnimationRepeat_0", #[], false, m_onPlatformAnimationRepeat_0), 
        ("jinit_1", #["Runnable"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RunAtEndAnimationListener


