-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScaleFactorFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "DEFAULT_SCALE_FACTOR" (JR.asI (JV.int 10))
    JR.setField this "DEFAULT_SCALE_VALUE" (JR.asI (JV.int 1024))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ScaleFactorFactory" "instance" (<- JR.new "ScaleFactorFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ScaleFactorFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ScaleFactorFactory",
    javaName := "org.allbinary.logic.math.ScaleFactorFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("DEFAULT_SCALE_FACTOR", (JV.int 0)), ("DEFAULT_SCALE_VALUE", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScaleFactorFactory


