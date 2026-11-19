-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpecialGameInputInterfaceProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "GameInputProcessor" this #[]
    let _ <- jfields this
    JR.setField this "specialGameInputInterface" l_collidableDestroyableDamageableLayer
    pure this

initialize JR.registerClass {
    name := "SpecialGameInputInterfaceProcessor",
    javaName := "org.allbinary.game.layer.special.SpecialGameInputInterfaceProcessor",
    super := "GameInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("specialGameInputInterface", JV.null)],
    statics := #[],
    methods := #[
        ("jinit_1", #["SpecialGameInputInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpecialGameInputInterfaceProcessor


