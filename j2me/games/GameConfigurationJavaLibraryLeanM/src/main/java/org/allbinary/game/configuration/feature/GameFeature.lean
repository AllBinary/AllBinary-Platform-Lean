-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFeature

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Feature" this #[l_name]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameFeature",
    javaName := "org.allbinary.game.configuration.feature.GameFeature",
    super := "Feature",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameFeature


