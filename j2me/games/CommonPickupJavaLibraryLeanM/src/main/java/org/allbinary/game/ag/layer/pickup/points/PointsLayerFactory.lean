-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.pickup.points
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PointsLayerFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "PointsLayer" #[(<- JR.getField this "points")])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "points" (JR.asI l_points)
    pure this

initialize JR.registerClass {
    name := "PointsLayerFactory",
    javaName := "org.allbinary.game.ag.layer.pickup.points.PointsLayerFactory",
    super := "Object",
    interfaces := #["AllBinaryLayerFactoryInterface"],
    isInterface := false,
    fields := #[("points", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getInstance_0", #[], false, m_getInstance_0), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PointsLayerFactory


