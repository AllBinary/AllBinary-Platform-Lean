-- Generated Code Do Not Modify
-- package org.allbinary.graphics.font
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FontDebugBase

def jfields (this : JV) : JM JV := do
    JR.setField this "SET_FONT" (JV.str "setFont")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FontDebugBase" "instanceBase" (<- JR.new "FontDebugBase" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FontDebugBase" "instanceBase")


def m_debugMetrics_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentFont : JV := (JR.arg jargs 0)
    let mut l_convertedTextSize : JV := (JR.asF (JR.arg jargs 1))
    let mut l_displayMetrics : JV := (JR.arg jargs 2)
    let mut l_stringBuffer : JV := (JR.arg jargs 3)
    pure JV.null


def m_debugDpi_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_densityDpi : JV := (JR.asI (JR.arg jargs 0))
    let mut l_stringBuffer : JV := (JR.arg jargs 1)
    pure JV.null


def m_debugDimension_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentFont : JV := (JR.arg jargs 0)
    let mut l_convertedTextSize : JV := (JR.asF (JR.arg jargs 1))
    let mut l_longestDimensionTotalPixels : JV := (JR.asI (JR.arg jargs 2))
    let mut l_stringBuffer : JV := (JR.arg jargs 3)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FontDebugBase",
    javaName := "org.allbinary.graphics.font.FontDebugBase",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("SET_FONT", JV.null)],
    statics := #[("instanceBase", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("debugMetrics_4", #["Font", "float", "Any", "StringMaker"], false, m_debugMetrics_4), 
        ("debugDpi_2", #["int", "StringMaker"], false, m_debugDpi_2), 
        ("debugDimension_4", #["Font", "float", "int", "StringMaker"], false, m_debugDimension_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FontDebugBase


