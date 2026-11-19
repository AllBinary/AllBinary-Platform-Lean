-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ABStringComponent

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ABStringComponent" "NULL_STRING_COMPONENT" (<- JR.new "ABStringComponent" #[(<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")])
    pure JV.null


def m_getBackgroundBasicColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")


def m_getForegroundBasicColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")


def m_setForegroundBasicColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 0)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ABStringComponent",
    javaName := "org.allbinary.graphics.form.item.ABStringComponent",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_STRING_COMPONENT", JV.null)],
    methods := #[
        ("getBackgroundBasicColor_0", #[], false, m_getBackgroundBasicColor_0), 
        ("getForegroundBasicColor_0", #[], false, m_getForegroundBasicColor_0), 
        ("setForegroundBasicColor_1", #["BasicColor"], false, m_setForegroundBasicColor_1), 
        ("jinit_2", #["BasicColor", "BasicColor"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ABStringComponent


