-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerPlacementTypeFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "MAP" (<- JR.new "LayerPlacementType" #[(<- JR.getStatic "Integer" "MAX_VALUE")])
    JR.setField this "LEFT" (<- JR.new "LayerPlacementType" #[(<- JR.call (<- JR.getField (<- JR.callStatic "DirectionFactory" "getInstance_0" #[]) "LEFT") "getValue_0" #[])])
    JR.setField this "DOWN" (<- JR.new "LayerPlacementType" #[(<- JR.call (<- JR.getField (<- JR.callStatic "DirectionFactory" "getInstance_0" #[]) "DOWN") "getValue_0" #[])])
    JR.setField this "UP" (<- JR.new "LayerPlacementType" #[(<- JR.call (<- JR.getField (<- JR.callStatic "DirectionFactory" "getInstance_0" #[]) "UP") "getValue_0" #[])])
    JR.setField this "RIGHT" (<- JR.new "LayerPlacementType" #[(<- JR.call (<- JR.getField (<- JR.callStatic "DirectionFactory" "getInstance_0" #[]) "RIGHT") "getValue_0" #[])])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LayerPlacementTypeFactory" "instance" (<- JR.new "LayerPlacementTypeFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LayerPlacementTypeFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LayerPlacementTypeFactory",
    javaName := "org.allbinary.game.layer.LayerPlacementTypeFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("MAP", JV.null), ("LEFT", JV.null), ("DOWN", JV.null), ("UP", JV.null), ("RIGHT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerPlacementTypeFactory


