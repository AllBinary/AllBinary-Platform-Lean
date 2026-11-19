-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScreenInfo

def jfields (this : JV) : JM JV := do
    JR.setField this "SMALL_WIDTH" (JR.asI (JV.int 320))
    JR.setField this "SMALL_HEIGHT" (JR.asI (JV.int 240))
    JR.setField this "MEDIUM_WIDTH" (JR.asI (JV.int 800))
    JR.setField this "MEDIUM_HEIGHT" (JR.asI (JV.int 600))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ScreenInfo" "instance" (<- JR.new "ScreenInfo" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ScreenInfo" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ScreenInfo",
    javaName := "org.allbinary.graphics.form.ScreenInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("SMALL_WIDTH", (JV.int 0)), ("SMALL_HEIGHT", (JV.int 0)), ("MEDIUM_WIDTH", (JV.int 0)), ("MEDIUM_HEIGHT", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScreenInfo


