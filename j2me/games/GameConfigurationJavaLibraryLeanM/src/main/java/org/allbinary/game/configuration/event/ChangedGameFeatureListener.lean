-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ChangedGameFeatureListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ChangedGameFeatureListener" "gameFeatureListener" (<- JR.new "ChangedGameFeatureListener" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ChangedGameFeatureListener" "gameFeatureListener")


def m_isChangedGameConfiguration_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameConfiguration : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getInherited this "ChangedGameFeatureListener" "list") "contains_1" #[l_gameConfiguration])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BaseChangedGameFeatureListener" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ChangedGameFeatureListener",
    javaName := "org.allbinary.game.configuration.event.ChangedGameFeatureListener",
    super := "BaseChangedGameFeatureListener",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("gameFeatureListener", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("isChangedGameConfiguration_1", #["GameConfiguration"], false, m_isChangedGameConfiguration_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ChangedGameFeatureListener


