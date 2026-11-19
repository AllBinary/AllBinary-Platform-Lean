-- Generated Code Do Not Modify
-- package org.allbinary.graphics.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StatePaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_state : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "StatePaintable",
    javaName := "org.allbinary.graphics.paint.StatePaintable",
    super := "Paintable",
    interfaces := #["StateControlledInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("setState_1", #["int"], false, m_setState_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StatePaintable


