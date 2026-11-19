-- Generated Code Do Not Modify
-- package org.allbinary.game.gd.resource
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GDResources

def jfields (this : JV) : JM JV := do
    JR.setField this "resourceStringArray" (<- JR.arrayOf "L" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GDResources" "instance" (<- JR.new "GDResources" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GDResources" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GDResources",
    javaName := "org.allbinary.game.gd.resource.GDResources",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("resourceStringArray", JV.null), ("currentLayoutRequiredTotal", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GDResources


