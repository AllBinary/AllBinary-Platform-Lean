-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFeatureEvent

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getWhatChanged_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "whatChanged")


def m_getGameOption_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callInherited this "GameFeatureEvent" "getSource_0" #[])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_whatChanged : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_anyType]
    let _ <- jfields this
    JR.setField this "whatChanged" l_whatChanged
    pure this

initialize JR.registerClass {
    name := "GameFeatureEvent",
    javaName := "org.allbinary.game.configuration.event.GameFeatureEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("whatChanged", JV.null)],
    statics := #[],
    methods := #[
        ("getWhatChanged_0", #[], false, m_getWhatChanged_0), 
        ("getGameOption_0", #[], false, m_getGameOption_0), 
        ("jinit_2", #["Any", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameFeatureEvent


