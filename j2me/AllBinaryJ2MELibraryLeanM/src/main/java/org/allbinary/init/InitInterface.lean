-- Generated Code Do Not Modify
-- package org.allbinary.init
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InitInterface

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null

initialize JR.registerClass {
    name := "InitInterface",
    javaName := "org.allbinary.init.InitInterface",
    super := "Object",
    interfaces := #[],
    isInterface := true,
    fields := #[],
    statics := #[],
    methods := #[],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InitInterface


