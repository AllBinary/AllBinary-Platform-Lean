-- Generated Code Do Not Modify
-- package org.allbinary.graphics.font
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FontDebugFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FontDebugFactory" "instance" (<- JR.new "FontDebugFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FontDebugFactory" "instance")


def m_setFont_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_font : JV := (JR.arg jargs 0)
    let mut l_graphics : JV := (JR.arg jargs 1)
    let _ := (<- JR.call l_graphics "setFont_1" #[l_font])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FontDebugFactory",
    javaName := "org.allbinary.graphics.font.FontDebugFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setFont_2", #["Font", "Graphics"], false, m_setFont_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FontDebugFactory


