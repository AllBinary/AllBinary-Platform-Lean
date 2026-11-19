-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameConfigurationGauge

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameConfiguration : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Gauge" this #[(<- JR.call l_gameConfiguration "getName_0" #[]), (<- JR.call (<- JR.call l_gameConfiguration "isModifiable_0" #[]) "booleanValue_0" #[]), (<- JR.sub (<- JR.call (<- JR.call l_gameConfiguration "getMaxValue_0" #[]) "intValue_0" #[]) (<- JR.call (<- JR.call l_gameConfiguration "getMinValue_0" #[]) "intValue_0" #[])), (<- JR.sub (<- JR.call (<- JR.call l_gameConfiguration "getValue_0" #[]) "intValue_0" #[]) (<- JR.call (<- JR.call l_gameConfiguration "getMinValue_0" #[]) "intValue_0" #[]))]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameConfigurationGauge",
    javaName := "org.allbinary.game.configuration.GameConfigurationGauge",
    super := "Gauge",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_1", #["GameConfiguration"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameConfigurationGauge


