-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.shader
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SimpleCompositeShaderUpdater

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_uniformBlockArray : JV := (JR.arg jargs 0)
    let mut l_uniformArray : JV := (JR.arg jargs 1)
    let mut l_attributeArray : JV := (JR.arg jargs 2)
    let mut l_attributeHandleArray : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "CompositeShaderUpdater" this #[l_uniformBlockArray, l_uniformArray, l_attributeArray, l_attributeHandleArray]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SimpleCompositeShaderUpdater",
    javaName := "org.allbinary.graphics.opengles.shader.SimpleCompositeShaderUpdater",
    super := "CompositeShaderUpdater",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_4", #["StringArr", "StringArr", "StringArr", "intArr"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SimpleCompositeShaderUpdater


