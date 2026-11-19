-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInitializedEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "resourceLoadingLevel" (<- JR.getField (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[]) "LEVEL")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "level" (JR.asI l_level)
    JR.setField this "resourceLoadingLevel" (<- JR.getField (<- JR.callStatic "ResourceLoadingLevelFactory" "getInstance_0" #[]) "LEVEL")
    pure JV.null


def m_getLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "level"))


def m_setResourceLoadingLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resourceLoadingLevel : JV := (JR.arg jargs 0)
    JR.setField this "resourceLoadingLevel" l_resourceLoadingLevel
    JR.setField this "level" (JR.asI (<- JR.call (<- JR.getField this "resourceLoadingLevel") "getLevel_0" #[]))
    pure JV.null


def m_getResourceLoadingLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "resourceLoadingLevel")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_anyType]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameInitializedEvent",
    javaName := "org.allbinary.game.configuration.event.GameInitializedEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("resourceLoadingLevel", JV.null), ("level", (JV.int 0))],
    statics := #[],
    methods := #[
        ("setLevel_1", #["int"], false, m_setLevel_1), 
        ("getLevel_0", #[], false, m_getLevel_0), 
        ("setResourceLoadingLevel_1", #["ResourceLoadingLevel"], false, m_setResourceLoadingLevel_1), 
        ("getResourceLoadingLevel_0", #[], false, m_getResourceLoadingLevel_0), 
        ("jinit_1", #["Any"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInitializedEvent


