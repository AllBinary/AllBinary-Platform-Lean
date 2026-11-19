-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.drop
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DropLayerInterface

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null

initialize JR.registerClass {
    name := "DropLayerInterface",
    javaName := "org.allbinary.game.layer.drop.DropLayerInterface",
    super := "Object",
    interfaces := #["LayerInterface"],
    isInterface := true,
    fields := #[],
    statics := #[],
    methods := #[],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DropLayerInterface


