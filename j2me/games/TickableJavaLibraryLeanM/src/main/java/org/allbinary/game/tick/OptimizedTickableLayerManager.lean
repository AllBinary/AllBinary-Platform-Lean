-- Generated Code Do Not Modify
-- package org.allbinary.game.tick
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OptimizedTickableLayerManager

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "LayerManager" this #[(<- JR.callStatic "LayerManagerNoDebug" "getInstance_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OptimizedTickableLayerManager",
    javaName := "org.allbinary.game.tick.OptimizedTickableLayerManager",
    super := "LayerManager",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OptimizedTickableLayerManager


