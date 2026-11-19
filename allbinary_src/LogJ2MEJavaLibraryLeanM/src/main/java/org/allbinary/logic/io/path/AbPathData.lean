-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.path
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbPathData

def jfields (this : JV) : JM JV := do
    JR.setField this "EXTENSION_SEP" (<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "PERIOD")
    JR.setField this "SEPARATORCHAR" (JR.asC (JV.char 47))
    JR.setField this "SEPARATOR" (<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "FORWARD_SLASH")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AbPathData" "instance" (<- JR.new "AbPathData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AbPathData" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbPathData",
    javaName := "org.allbinary.logic.io.path.AbPathData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EXTENSION_SEP", JV.null), ("SEPARATORCHAR", (JV.char 0)), ("SEPARATOR", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbPathData


