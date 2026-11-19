-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicGameInfoFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicGameInfoFactory" "SINGLETON" (<- JR.new "BasicGameInfoFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicGameInfoFactory" "SINGLETON")


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_total : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "currentReleaseIndex" (JR.asI (JV.int 0))
    JR.setField this "currentDestroyIndex" (JR.asI (JV.int 0))
    JR.setField this "total" (JR.asI l_total)
    pure JV.null


def m_isPeaked_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.ge (<- JR.getField this "currentDestroyIndex") (<- JR.getField this "total")) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_howManyLeft_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.sub (<- JR.getField this "total") (<- JR.getField this "currentDestroyIndex")))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicGameInfoFactory",
    javaName := "org.allbinary.game.BasicGameInfoFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("currentReleaseIndex", (JV.int 0)), ("currentDestroyIndex", (JV.int 0)), ("total", (JV.int 0))],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_1", #["int"], false, m_init_1), 
        ("isPeaked_0", #[], false, m_isPeaked_0), 
        ("howManyLeft_0", #[], false, m_howManyLeft_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicGameInfoFactory


