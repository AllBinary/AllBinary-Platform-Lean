-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.path
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbPathUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "NO_ABPATH" (<- JR.callStatic "AbPath" "createAbPath_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AbPathUtil" "instance" (<- JR.new "AbPathUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AbPathUtil" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbPathUtil",
    javaName := "org.allbinary.logic.io.path.AbPathUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NO_ABPATH", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbPathUtil


