-- Generated Code Do Not Modify
-- package org.allbinary.layer.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScrollMapEvent

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setDx_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "dx" (JR.asI l_dx)
    pure JV.null


def m_getDx_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "dx"))


def m_setDy_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dy : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "dy" (JR.asI l_dy)
    pure JV.null


def m_getDy_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "dy"))


def m_setDxDy_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "dx" (JR.asI l_dx)
    JR.setField this "dy" (JR.asI l_dy)
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_anyType]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ScrollMapEvent",
    javaName := "org.allbinary.layer.event.ScrollMapEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("dx", (JV.int 0)), ("dy", (JV.int 0))],
    statics := #[],
    methods := #[
        ("setDx_1", #["int"], false, m_setDx_1), 
        ("getDx_0", #[], false, m_getDx_0), 
        ("setDy_1", #["int"], false, m_setDy_1), 
        ("getDy_0", #[], false, m_getDy_0), 
        ("setDxDy_2", #["int", "int"], false, m_setDxDy_2), 
        ("jinit_1", #["Any"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScrollMapEvent


