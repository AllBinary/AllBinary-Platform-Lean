-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DemoGameMidletStateFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NONE" (<- JR.new "DemoGameMidletState" #[])
    JR.setField this "START_DEMO" (<- JR.new "DemoGameMidletState" #[])
    JR.setField this "START_GAME" (<- JR.new "DemoGameMidletState" #[])
    JR.setField this "START_INPUT_MAPPING" (<- JR.new "DemoGameMidletState" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DemoGameMidletStateFactory" "STATE" (<- JR.new "DemoGameMidletStateFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DemoGameMidletStateFactory" "STATE")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DemoGameMidletStateFactory",
    javaName := "org.allbinary.game.midlet.DemoGameMidletStateFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NONE", JV.null), ("START_DEMO", JV.null), ("START_GAME", JV.null), ("START_INPUT_MAPPING", JV.null)],
    statics := #[("STATE", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DemoGameMidletStateFactory


