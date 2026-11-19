-- Generated Code Do Not Modify
-- package org.allbinary.graphics.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InitUpdatePaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InitUpdatePaintable",
    javaName := "org.allbinary.graphics.paint.InitUpdatePaintable",
    super := "Paintable",
    interfaces := #["InitUpdatePaintableInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("update_0", #[], false, m_update_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InitUpdatePaintable


