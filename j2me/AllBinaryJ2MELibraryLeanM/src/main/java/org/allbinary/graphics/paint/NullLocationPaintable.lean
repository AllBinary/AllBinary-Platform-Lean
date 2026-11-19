-- Generated Code Do Not Modify
-- package org.allbinary.graphics.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullLocationPaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullLocationPaintable" "instanceC" (<- JR.new "NullLocationPaintable" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullLocationPaintable" "instanceC")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "LocationPaintable" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullLocationPaintable",
    javaName := "org.allbinary.graphics.paint.NullLocationPaintable",
    super := "LocationPaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instanceC", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullLocationPaintable


