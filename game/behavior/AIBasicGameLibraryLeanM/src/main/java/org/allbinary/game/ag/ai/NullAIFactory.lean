-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullAIFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullAIFactory" "NULL_AI" (<- JR.new "NullAI" #[])
    pure JV.null


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    return (<- JR.getStatic "NullAIFactory" "NULL_AI")


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullAIFactory" "NULL_AI")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullAIFactory",
    javaName := "org.allbinary.game.ag.ai.NullAIFactory",
    super := "Object",
    interfaces := #["ArtificialIntelligenceInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_AI", JV.null)],
    methods := #[
        ("getInstance_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, m_getInstance_3), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullAIFactory


