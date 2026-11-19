-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerPlacementType

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "type"))


def m_setType_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_type : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "type" (JR.asI l_type)
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_type : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "type" (JR.asI l_type)
    pure this

initialize JR.registerClass {
    name := "LayerPlacementType",
    javaName := "org.allbinary.game.layer.LayerPlacementType",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("type", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getType_0", #[], false, m_getType_0), 
        ("setType_1", #["int"], false, m_setType_1), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerPlacementType


