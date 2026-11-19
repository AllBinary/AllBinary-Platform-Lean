-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpecialGameInputProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "GameInputProcessor" this #[]
    let _ <- jfields this
    JR.setField this "collidableDestroyableDamageableLayer" l_collidableDestroyableDamageableLayer
    pure this

initialize JR.registerClass {
    name := "SpecialGameInputProcessor",
    javaName := "org.allbinary.game.layer.special.SpecialGameInputProcessor",
    super := "GameInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("collidableDestroyableDamageableLayer", JV.null)],
    statics := #[],
    methods := #[
        ("jinit_1", #["CollidableDestroyableDamageableLayer"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpecialGameInputProcessor


