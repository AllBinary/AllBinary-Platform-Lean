-- Generated Code Do Not Modify
-- package org.allbinary.graphics.threed
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SWTJOGLProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SWTJOGLProcessor" "instance" (<- JR.new "SWTJOGLProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SWTJOGLProcessor" "instance")


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_display : JV := (JR.arg jargs 0)
    let mut l_comp : JV := (JR.arg jargs 1)
    pure JV.null


def m_isHolderCreated_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_setRenderer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_renderer : JV := (JR.arg jargs 0)
    pure JV.null


def m_isJOGL_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_createSurface_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onSurfaceCreated_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onSurfaceChangedForEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_event : JV := (JR.arg jargs 0)
    pure JV.null


def m_onSurfaceChanged_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onSurfaceChangedWH_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    pure JV.null


def m_addListener_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_addListeners_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_midlet : JV := (JR.arg jargs 0)
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_setCustom_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_ratio : JV := (JR.asF (JR.arg jargs 2))
    pure JV.null


def m_setRatioProcessor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ratioProcessor : JV := (JR.arg jargs 0)
    pure JV.null


def m_isPortraitRatioProcessor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_charWidth_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_font : JV := (JR.arg jargs 0)
    let mut l_ch : JV := (JR.asC (JR.arg jargs 1))
    throw (<- JR.new "RuntimeException" #[])


def m_charsWidth_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_font : JV := (JR.arg jargs 0)
    let mut l_ch : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    let mut l_length : JV := (JR.asI (JR.arg jargs 3))
    throw (<- JR.new "RuntimeException" #[])


def m_stringWidth_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_font : JV := (JR.arg jargs 0)
    let mut l_str : JV := (JR.arg jargs 1)
    throw (<- JR.new "RuntimeException" #[])


def m_substringWidth_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_font : JV := (JR.arg jargs 0)
    let mut l_str : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    let mut l_len : JV := (JR.asI (JR.arg jargs 3))
    throw (<- JR.new "RuntimeException" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SWTJOGLProcessor",
    javaName := "org.allbinary.graphics.threed.SWTJOGLProcessor",
    super := "Object",
    interfaces := #["Runnable"],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_2", #["Any", "Any"], false, m_init_2), 
        ("isHolderCreated_0", #[], false, m_isHolderCreated_0), 
        ("setRenderer_1", #["Any"], false, m_setRenderer_1), 
        ("isJOGL_0", #[], false, m_isJOGL_0), 
        ("createSurface_0", #[], false, m_createSurface_0), 
        ("onSurfaceCreated_0", #[], false, m_onSurfaceCreated_0), 
        ("onSurfaceChangedForEvent_1", #["Any"], false, m_onSurfaceChangedForEvent_1), 
        ("onSurfaceChanged_0", #[], false, m_onSurfaceChanged_0), 
        ("onSurfaceChangedWH_2", #["int", "int"], false, m_onSurfaceChangedWH_2), 
        ("addListener_0", #[], false, m_addListener_0), 
        ("addListeners_1", #["MIDlet"], false, m_addListeners_1), 
        ("run_0", #[], false, m_run_0), 
        ("clear_0", #[], false, m_clear_0), 
        ("setCustom_3", #["int", "int", "float"], false, m_setCustom_3), 
        ("setRatioProcessor_1", #["RatioProcessor"], false, m_setRatioProcessor_1), 
        ("isPortraitRatioProcessor_0", #[], false, m_isPortraitRatioProcessor_0), 
        ("charWidth_2", #["Font", "char"], false, m_charWidth_2), 
        ("charsWidth_4", #["Font", "charArr", "int", "int"], false, m_charsWidth_4), 
        ("stringWidth_2", #["Font", "String"], false, m_stringWidth_2), 
        ("substringWidth_4", #["Font", "String", "int", "int"], false, m_substringWidth_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SWTJOGLProcessor


