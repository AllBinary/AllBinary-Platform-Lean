-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DemoGameMidletEvent

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "DemoGameMidletEvent" "setSource_1" #[l_anyType])
    pure JV.null


def m_setDemoGameMidletState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_demoGameMidletState : JV := (JR.arg jargs 0)
    JR.setField this "demoGameMidletState" l_demoGameMidletState
    pure JV.null


def m_getDemoGameMidletState_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "demoGameMidletState")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_demoGameMidletState : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_anyType]
    let _ <- jfields this
    JR.setField this "demoGameMidletState" l_demoGameMidletState
    pure this

initialize JR.registerClass {
    name := "DemoGameMidletEvent",
    javaName := "org.allbinary.game.midlet.DemoGameMidletEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("demoGameMidletState", JV.null)],
    statics := #[],
    methods := #[
        ("init_1", #["Any"], false, m_init_1), 
        ("setDemoGameMidletState_1", #["DemoGameMidletState"], false, m_setDemoGameMidletState_1), 
        ("getDemoGameMidletState_0", #[], false, m_getDemoGameMidletState_0), 
        ("jinit_2", #["Any", "DemoGameMidletState"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DemoGameMidletEvent


