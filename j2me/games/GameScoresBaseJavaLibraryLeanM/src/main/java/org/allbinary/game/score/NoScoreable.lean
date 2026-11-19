-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoScoreable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoScoreable" "SINGLETON" (<- JR.new "NoScoreable" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NoScoreable" "SINGLETON")


def m_addPoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_removePoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Scoreable" this #[(JV.int 0)]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoScoreable",
    javaName := "org.allbinary.game.score.NoScoreable",
    super := "Scoreable",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("addPoints_1", #["int"], false, m_addPoints_1), 
        ("removePoints_1", #["int"], false, m_removePoints_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoScoreable


