-- Generated Code Do Not Modify
-- package org.allbinary.layer.relationship
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MiddleRelativeLayerRelationship

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "RelativeLayerRelationship" this #[l_layer, (<- JR.call (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "createXY_2" #[(<- JR.call l_layer "getHalfWidth_0" #[]), (<- JR.call l_layer "getHalfHeight_0" #[])]), (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MiddleRelativeLayerRelationship",
    javaName := "org.allbinary.layer.relationship.MiddleRelativeLayerRelationship",
    super := "RelativeLayerRelationship",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_1", #["AllBinaryLayer"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MiddleRelativeLayerRelationship


