-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LockableFormPaintableFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstanceItemPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_paintableForm : JV := (JR.arg jargs 0)
    return (<- JR.new "LockablePaintable" #[(<- JR.getField this "lockedIndex")])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lockedIndex : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "ItemPaintableFactory" this #[]
    let _ <- jfields this
    JR.setField this "lockedIndex" (JR.asI l_lockedIndex)
    pure this

initialize JR.registerClass {
    name := "LockableFormPaintableFactory",
    javaName := "org.allbinary.graphics.form.LockableFormPaintableFactory",
    super := "ItemPaintableFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[("lockedIndex", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getInstanceItemPaintable_1", #["PaintableForm"], false, m_getInstanceItemPaintable_1), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LockableFormPaintableFactory


