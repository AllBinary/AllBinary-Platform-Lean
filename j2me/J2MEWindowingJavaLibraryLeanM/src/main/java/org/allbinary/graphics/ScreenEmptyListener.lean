-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScreenEmptyListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onFullScreen_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isFullScreen : JV := (JR.arg jargs 0)
    pure JV.null


def m_onFullScreenDisplay_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ScreenEmptyListener",
    javaName := "org.allbinary.graphics.ScreenEmptyListener",
    super := "Object",
    interfaces := #["ScreenListenerInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("onFullScreen_1", #["boolean"], false, m_onFullScreen_1), 
        ("onFullScreenDisplay_0", #[], false, m_onFullScreenDisplay_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScreenEmptyListener


