-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.persistance
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameDifficultyFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "level" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameDifficultyFactory" "instance" (<- JR.new "GameDifficultyFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameDifficultyFactory" "instance")


def m_setLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "level" (JR.asI l_level)
    pure JV.null


def m_getLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "level"))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameDifficultyFactory",
    javaName := "org.allbinary.game.configuration.persistance.GameDifficultyFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("level", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setLevel_1", #["int"], false, m_setLevel_1), 
        ("getLevel_0", #[], false, m_getLevel_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameDifficultyFactory


