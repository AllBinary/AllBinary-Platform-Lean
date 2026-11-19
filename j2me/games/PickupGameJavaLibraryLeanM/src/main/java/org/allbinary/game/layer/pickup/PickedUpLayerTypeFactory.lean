-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.pickup
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PickedUpLayerTypeFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NONE" (<- JR.new "PickedUpLayerType" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "NULL_STRING")])
    JR.setField this "BEAM" (<- JR.new "PickedUpLayerType" #[(JV.str "BEAM")])
    JR.setField this "MINE" (<- JR.new "PickedUpLayerType" #[(JV.str "MINE")])
    JR.setField this "PROJECTILE" (<- JR.new "PickedUpLayerType" #[(JV.str "PROJECTILE")])
    JR.setField this "ENHANCEMENT" (<- JR.new "PickedUpLayerType" #[(JV.str "Enhancement")])
    JR.setField this "MORPH" (<- JR.new "PickedUpLayerType" #[(JV.str "Morph")])
    JR.setField this "PART" (<- JR.new "PickedUpLayerType" #[(JV.str "Part")])
    JR.setField this "HEAL" (<- JR.new "PickedUpLayerType" #[(JV.str "Heal")])
    JR.setField this "LIFE" (<- JR.new "PickedUpLayerType" #[(JV.str "Life")])
    JR.setField this "POINTS" (<- JR.new "PickedUpLayerType" #[(JV.str "Points")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PickedUpLayerTypeFactory" "instance" (<- JR.new "PickedUpLayerTypeFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PickedUpLayerTypeFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PickedUpLayerTypeFactory",
    javaName := "org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NONE", JV.null), ("BEAM", JV.null), ("MINE", JV.null), ("PROJECTILE", JV.null), ("ENHANCEMENT", JV.null), ("MORPH", JV.null), ("PART", JV.null), ("HEAL", JV.null), ("LIFE", JV.null), ("POINTS", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PickedUpLayerTypeFactory


