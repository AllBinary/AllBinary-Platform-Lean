-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullPlayerGameInputComposite

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullPlayerGameInputComposite" "NULL_PLAYER_GAME_INPUT_COMPOSITE" (<- JR.new "NullPlayerGameInputComposite" #[])
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")


def m_processInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    pure JV.null


def m_initInputProcessors_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getPlayerGameInput_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "NoPlayerGameInput" "getInstance_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullPlayerGameInputComposite",
    javaName := "org.allbinary.game.input.NullPlayerGameInputComposite",
    super := "Object",
    interfaces := #["PlayerGameInputCompositeInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_PLAYER_GAME_INPUT_COMPOSITE", JV.null)],
    methods := #[
        ("getName_0", #[], false, m_getName_0), 
        ("processInput_1", #["AllBinaryLayerManager"], false, m_processInput_1), 
        ("initInputProcessors_0", #[], false, m_initInputProcessors_0), 
        ("getPlayerGameInput_0", #[], false, m_getPlayerGameInput_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullPlayerGameInputComposite


