-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ResizableListenerHandler

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ResizableListenerHandler" "instance" (<- JR.new "ResizableListenerHandler" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ResizableListenerHandler" "instance")


def m_setListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resizableListenerInterface : JV := (JR.arg jargs 0)
    pure JV.null


def m_fire_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isFullScreen : JV := (JR.arg jargs 0)
    pure JV.null


def m_fireEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ResizableListenerHandler",
    javaName := "org.allbinary.graphics.ResizableListenerHandler",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setListener_1", #["ResizableListenerInterface"], false, m_setListener_1), 
        ("fire_1", #["boolean"], false, m_fire_1), 
        ("fireEvent_1", #["boolean"], false, m_fireEvent_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ResizableListenerHandler


