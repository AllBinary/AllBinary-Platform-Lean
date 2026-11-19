-- Generated Code Do Not Modify
-- package org.allbinary.media.graphics.geography.pathfinding
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MultipassState

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MultipassState",
    javaName := "org.allbinary.media.graphics.geography.pathfinding.MultipassState",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("step", (JV.int 0)), ("iteration", (JV.int 0)), ("iteration2", (JV.int 0))],
    statics := #[],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MultipassState


