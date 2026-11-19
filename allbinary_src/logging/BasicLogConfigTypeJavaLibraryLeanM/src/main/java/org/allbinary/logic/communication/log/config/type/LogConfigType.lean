-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.log.config.type
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LogConfigType

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_getDescription_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "description")


def m_setName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    JR.setField this "name" l_value
    pure JV.null


def m_setDescription_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.arg jargs 0)
    JR.setField this "description" l_value
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_description : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    JR.setField this "description" l_description
    pure this

initialize JR.registerClass {
    name := "LogConfigType",
    javaName := "org.allbinary.logic.communication.log.config.type.LogConfigType",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null), ("description", JV.null)],
    statics := #[],
    methods := #[
        ("getName_0", #[], false, m_getName_0), 
        ("getDescription_0", #[], false, m_getDescription_0), 
        ("setName_1", #["String"], false, m_setName_1), 
        ("setDescription_1", #["String"], false, m_setDescription_1), 
        ("jinit_2", #["String", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LogConfigType


