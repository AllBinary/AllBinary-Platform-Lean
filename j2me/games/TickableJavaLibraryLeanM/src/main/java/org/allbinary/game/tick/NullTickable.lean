-- Generated Code Do Not Modify
-- package org.allbinary.game.tick
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullTickable

def jfields (this : JV) : JM JV := do
    JR.setField this "NAME" (JV.str "NulLTickable")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullTickable" "SINGLETON" (<- JR.new "NullTickable" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NullTickable" "SINGLETON")


def m_processTick_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "NAME")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullTickable",
    javaName := "org.allbinary.game.tick.NullTickable",
    super := "Object",
    interfaces := #["TickableInterface"],
    isInterface := false,
    fields := #[("NAME", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("processTick_1", #["AllBinaryLayerManager"], false, m_processTick_1), 
        ("getName_0", #[], false, m_getName_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullTickable


