-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.pickup.points
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PointsResources

def jfields (this : JV) : JM JV := do
    JR.setField this "RESOURCE" (JV.str "points_drop_20_by_20.png")
    JR.setField this "RESOURCE_2" (JV.str "points_2_drop_20_by_20.png")
    JR.setField this "RESOURCE_3" (JV.str "points_3_drop_20_by_20.png")
    JR.setField this "RESOURCE_4" (JV.str "points_4_drop_20_by_20.png")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PointsResources" "SINGLETON" (<- JR.new "PointsResources" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PointsResources" "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PointsResources",
    javaName := "org.allbinary.game.ag.layer.pickup.points.PointsResources",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("RESOURCE", JV.null), ("RESOURCE_2", JV.null), ("RESOURCE_3", JV.null), ("RESOURCE_4", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PointsResources


