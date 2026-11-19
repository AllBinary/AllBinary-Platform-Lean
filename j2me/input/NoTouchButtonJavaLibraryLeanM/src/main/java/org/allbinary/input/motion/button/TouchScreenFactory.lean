-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchScreenFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "touchScreenType" (<- JR.getField (<- JR.callStatic "TouchScreenTypesFactory" "getInstance_0" #[]) "NOTOUCH")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TouchScreenFactory" "SINGLETON" (<- JR.new "TouchScreenFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TouchScreenFactory" "SINGLETON")


def m_isMultiTouch_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "multiTouch")


def m_setTouch_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touch : JV := (JR.arg jargs 0)
    pure JV.null


def m_isTouch_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "touch")


def m_getTouchScreenType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "touchScreenType")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TouchScreenFactory",
    javaName := "org.allbinary.input.motion.button.TouchScreenFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("multiTouch", (JV.bool false)), ("touch", (JV.bool false)), ("touchScreenType", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isMultiTouch_0", #[], false, m_isMultiTouch_0), 
        ("setTouch_1", #["boolean"], false, m_setTouch_1), 
        ("isTouch_0", #[], false, m_isTouch_0), 
        ("getTouchScreenType_0", #[], false, m_getTouchScreenType_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchScreenFactory


