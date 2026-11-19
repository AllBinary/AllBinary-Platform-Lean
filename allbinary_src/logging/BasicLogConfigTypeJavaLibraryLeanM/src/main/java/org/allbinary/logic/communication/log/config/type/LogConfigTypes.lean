-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.log.config.type
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LogConfigTypes

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LogConfigTypes" "LOGGING" (<- JR.new "BasicArrayListD" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LogConfigTypes",
    javaName := "org.allbinary.logic.communication.log.config.type.LogConfigTypes",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("LOGGING", JV.null)],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LogConfigTypes


