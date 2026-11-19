-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicLayerPlacement

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "width"))


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "height"))


def m_getLayerType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "layerType")


def m_setLayerType_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerType : JV := (JR.arg jargs 0)
    JR.setField this "layerType" l_layerType
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerType : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "layerType" l_layerType
    JR.setField this "width" (JR.asI l_width)
    JR.setField this "height" (JR.asI l_height)
    pure this

initialize JR.registerClass {
    name := "BasicLayerPlacement",
    javaName := "org.allbinary.game.layer.BasicLayerPlacement",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("layerType", JV.null), ("width", (JV.int 0)), ("height", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("getLayerType_0", #[], false, m_getLayerType_0), 
        ("setLayerType_1", #["LayerPlacementType"], false, m_setLayerType_1), 
        ("jinit_3", #["LayerPlacementType", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicLayerPlacement


