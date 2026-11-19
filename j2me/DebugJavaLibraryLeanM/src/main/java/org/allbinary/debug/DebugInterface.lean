-- Generated Code Do Not Modify
-- package org.allbinary.debug
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DebugInterface

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null

initialize JR.registerClass {
    name := "DebugInterface",
    javaName := "org.allbinary.debug.DebugInterface",
    super := "Object",
    interfaces := #[],
    isInterface := true,
    fields := #[],
    statics := #[],
    methods := #[],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DebugInterface


