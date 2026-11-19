-- Generated Code Do Not Modify
-- package org.allbinary.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ArtificialIntelligence

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ArtificialIntelligence" "instance" (<- JR.new "ArtificialIntelligence" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ArtificialIntelligence" "instance")


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    pure JV.null


def m_getId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 1))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ArtificialIntelligence",
    javaName := "org.allbinary.ai.ArtificialIntelligence",
    super := "Object",
    interfaces := #["ArtificialIntelligenceInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("AI_ID", (JR.asI (JV.int 2))), ("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("getId_0", #[], false, m_getId_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ArtificialIntelligence


