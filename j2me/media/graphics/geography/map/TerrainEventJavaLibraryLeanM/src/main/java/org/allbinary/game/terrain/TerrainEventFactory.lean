-- Generated Code Do Not Modify
-- package org.allbinary.game.terrain
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TerrainEventFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "TerrainEvent" #[(<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TerrainEventFactory",
    javaName := "org.allbinary.game.terrain.TerrainEventFactory",
    super := "Object",
    interfaces := #["AllBinaryEventObjectFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_0", #[], false, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TerrainEventFactory


