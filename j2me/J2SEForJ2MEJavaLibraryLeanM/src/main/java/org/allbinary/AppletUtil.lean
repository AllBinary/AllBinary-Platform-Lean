-- Generated Code Do Not Modify
-- package org.allbinary
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AppletUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setApplet_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setStatic "AppletUtil" "applet" (JV.bool true)
    pure JV.null


def m_isAppletLoader_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    return (<- JR.getStatic "AppletUtil" "applet")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AppletUtil",
    javaName := "org.allbinary.AppletUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("applet", (JV.bool false))],
    methods := #[
        ("setApplet_0", #[], true, m_setApplet_0), 
        ("isAppletLoader_1", #["Any"], true, m_isAppletLoader_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AppletUtil


