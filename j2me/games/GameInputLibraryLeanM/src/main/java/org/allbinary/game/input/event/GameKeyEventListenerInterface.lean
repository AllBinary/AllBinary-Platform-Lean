-- Generated Code Do Not Modify
-- package org.allbinary.game.input.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameKeyEventListenerInterface

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null

initialize JR.registerClass {
    name := "GameKeyEventListenerInterface",
    javaName := "org.allbinary.game.input.event.GameKeyEventListenerInterface",
    super := "Object",
    interfaces := #["DownGameKeyEventListenerInterface", "UpGameKeyEventListenerInterface", "PressGameKeyEventListenerInterface"],
    isInterface := true,
    fields := #[],
    statics := #[],
    methods := #[],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameKeyEventListenerInterface


