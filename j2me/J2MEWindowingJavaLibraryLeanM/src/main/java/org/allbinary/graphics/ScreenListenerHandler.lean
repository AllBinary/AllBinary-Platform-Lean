-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScreenListenerHandler

def jfields (this : JV) : JM JV := do
    JR.setField this "screenListenerInterface" (<- JR.new "ScreenEmptyListener" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ScreenListenerHandler" "instance" (<- JR.new "ScreenListenerHandler" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ScreenListenerHandler" "instance")


def m_setListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_screenListenerInterface : JV := (JR.arg jargs 0)
    JR.setField this "screenListenerInterface" l_screenListenerInterface
    pure JV.null


def m_fireWithState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isFullScreen : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "screenListenerInterface") "onFullScreen_1" #[l_isFullScreen])
    pure JV.null


def m_fire_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "screenListenerInterface") "onFullScreenDisplay_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ScreenListenerHandler",
    javaName := "org.allbinary.graphics.ScreenListenerHandler",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("screenListenerInterface", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setListener_1", #["ScreenListenerInterface"], false, m_setListener_1), 
        ("fireWithState_1", #["boolean"], false, m_fireWithState_1), 
        ("fire_0", #[], false, m_fire_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScreenListenerHandler


