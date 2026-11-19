-- Generated Code Do Not Modify
-- package org.allbinary.graphics.font
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MyFontProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MyFontProcessor" "instance" (<- JR.new "MyFontProcessor" #[])
    pure JV.null


def m_defaultCharWidth_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_font : JV := (JR.arg jargs 0)
    return (JR.asI (<- JR.call l_font "charWidth_1" #[(JV.char 67)]))


def m_defaultStringWidth_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_font : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI (<- JR.mul (<- JR.callStatic "MyFontProcessor" "defaultCharWidth_1" #[l_font]) l_size))


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MyFontProcessor" "instance")


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MyFontProcessor",
    javaName := "org.allbinary.graphics.font.MyFontProcessor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("defaultCharWidth_1", #["Font"], true, m_defaultCharWidth_1), 
        ("defaultStringWidth_2", #["Font", "int"], true, m_defaultStringWidth_2), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_1", #["Graphics"], false, m_process_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MyFontProcessor


