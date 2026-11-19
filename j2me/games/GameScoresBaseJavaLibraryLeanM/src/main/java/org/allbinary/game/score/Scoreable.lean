-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Scoreable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Scoreable" "ID" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 3)])
    pure JV.null


def m_addPoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "points" (JR.castLike (<- JR.getField this "points") (<- JR.add (<- JR.getField this "points") l_points))
    pure JV.null


def m_removePoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "points" (JR.castLike (<- JR.getField this "points") (<- JR.sub (<- JR.getField this "points") l_points))
    pure JV.null


def m_setPoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "points" (JR.asI l_points)
    pure JV.null


def m_getPoints_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "points"))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "points" (JR.asI l_points)
    pure this

initialize JR.registerClass {
    name := "Scoreable",
    javaName := "org.allbinary.game.score.Scoreable",
    super := "Object",
    interfaces := #["ScoreableInterface"],
    isInterface := false,
    fields := #[("points", (JV.int 0))],
    statics := #[("ID", JV.null)],
    methods := #[
        ("addPoints_1", #["int"], false, m_addPoints_1), 
        ("removePoints_1", #["int"], false, m_removePoints_1), 
        ("setPoints_1", #["int"], false, m_setPoints_1), 
        ("getPoints_0", #[], false, m_getPoints_0), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Scoreable


