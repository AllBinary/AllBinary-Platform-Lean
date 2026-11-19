-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicEventListenerInterface

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null

initialize JR.registerClass {
    name := "BasicEventListenerInterface",
    javaName := "org.allbinary.logic.util.event.BasicEventListenerInterface",
    super := "Object",
    interfaces := #["EventListenerInterface"],
    isInterface := true,
    fields := #[],
    statics := #[],
    methods := #[],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicEventListenerInterface


