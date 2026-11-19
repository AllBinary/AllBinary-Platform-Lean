-- Generated Code Do Not Modify
-- package org.allbinary.game.resource
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ResourceLoadingLevel

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getLevel_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "level"))


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_level : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    JR.setField this "level" (JR.asI l_level)
    pure this

initialize JR.registerClass {
    name := "ResourceLoadingLevel",
    javaName := "org.allbinary.game.resource.ResourceLoadingLevel",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null), ("level", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getLevel_0", #[], false, m_getLevel_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("jinit_2", #["String", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ResourceLoadingLevel


