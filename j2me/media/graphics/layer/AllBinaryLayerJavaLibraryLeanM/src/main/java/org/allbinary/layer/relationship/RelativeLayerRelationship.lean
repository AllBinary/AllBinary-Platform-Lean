-- Generated Code Do Not Modify
-- package org.allbinary.layer.relationship
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RelativeLayerRelationship

def jfields (this : JV) : JM JV := do
    JR.setField this "layer" (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.add (<- JR.call (<- JR.getField this "layer") "getXP_0" #[]) (<- JR.callSuper "RelativeRelationship" this "getX_0" #[])))


def m_getY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.add (<- JR.call (<- JR.getField this "layer") "getYP_0" #[]) (<- JR.callSuper "RelativeRelationship" this "getY_0" #[])))


def m_getZ_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.add (<- JR.call (<- JR.getField this "layer") "getZP_0" #[]) (<- JR.callSuper "RelativeRelationship" this "getZ_0" #[])))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    let mut l_point : JV := (JR.arg jargs 1)
    let mut l_typesAllowedList : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "RelativeRelationship" this #[l_point, l_typesAllowedList]
    let _ <- jfields this
    JR.setField this "layer" l_layer
    pure this

initialize JR.registerClass {
    name := "RelativeLayerRelationship",
    javaName := "org.allbinary.layer.relationship.RelativeLayerRelationship",
    super := "RelativeRelationship",
    interfaces := #[],
    isInterface := false,
    fields := #[("layer", JV.null)],
    statics := #[],
    methods := #[
        ("getX_0", #[], false, m_getX_0), 
        ("getY_0", #[], false, m_getY_0), 
        ("getZ_0", #[], false, m_getZ_0), 
        ("jinit_3", #["AllBinaryLayer", "GPoint", "BasicArrayList"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RelativeLayerRelationship


