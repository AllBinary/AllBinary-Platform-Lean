-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ItemPaintableFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ItemPaintableFactory" "instance" (<- JR.new "ItemPaintableFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ItemPaintableFactory" "instance")


def m_getInstanceItemPaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_paintableForm : JV := (JR.arg jargs 0)
    return (<- JR.getStatic "ItemPaintableFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "ItemPaintable" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ItemPaintableFactory",
    javaName := "org.allbinary.graphics.form.ItemPaintableFactory",
    super := "ItemPaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstanceItemPaintable_1", #["PaintableForm"], false, m_getInstanceItemPaintable_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ItemPaintableFactory


