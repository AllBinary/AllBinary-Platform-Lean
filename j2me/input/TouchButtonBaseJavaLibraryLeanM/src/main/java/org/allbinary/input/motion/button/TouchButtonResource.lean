-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonResource

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_hint : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "RESOURCE" l_resource
    JR.setField this "HINT" l_hint
    pure this

initialize JR.registerClass {
    name := "TouchButtonResource",
    javaName := "org.allbinary.input.motion.button.TouchButtonResource",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("RESOURCE", JV.null), ("HINT", JV.null)],
    statics := #[],
    methods := #[
        ("jinit_2", #["String", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonResource


