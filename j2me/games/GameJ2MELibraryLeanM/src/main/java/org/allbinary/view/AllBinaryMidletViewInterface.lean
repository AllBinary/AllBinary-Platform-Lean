-- Generated Code Do Not Modify
-- package org.allbinary.view
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryMidletViewInterface

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null

initialize JR.registerClass {
    name := "AllBinaryMidletViewInterface",
    javaName := "org.allbinary.view.AllBinaryMidletViewInterface",
    super := "Object",
    interfaces := #["MidletCompositeInterface", "EmulatorViewInterface", "DemoGameMidletEventListener", "GameInitializedListenerInterface"],
    isInterface := true,
    fields := #[],
    statics := #[],
    methods := #[],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryMidletViewInterface


