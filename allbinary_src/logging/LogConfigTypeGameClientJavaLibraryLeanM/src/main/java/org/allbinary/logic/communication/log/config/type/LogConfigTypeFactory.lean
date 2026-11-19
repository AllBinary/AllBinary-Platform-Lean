-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.log.config.type
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LogConfigTypeFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NO_DESCRIPTION" (JV.str "No Description")
    JR.setField this "OS" (<- JR.new "LogConfigType" #[(JV.str "Operating System"), (<- JR.getField this "NO_DESCRIPTION")])
    JR.setField this "FACTORYERROR" (<- JR.new "LogConfigType" #[(JV.str "Factory Error"), (<- JR.getField this "NO_DESCRIPTION")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LogConfigTypeFactory" "instance" (<- JR.new "LogConfigTypeFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LogConfigTypeFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getStatic "LogConfigTypes" "LOGGING") "add_1" #[(<- JR.getField this "OS")])
    let _ := (<- JR.call (<- JR.getStatic "LogConfigTypes" "LOGGING") "add_1" #[(<- JR.getField this "FACTORYERROR")])
    pure this

initialize JR.registerClass {
    name := "LogConfigTypeFactory",
    javaName := "org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NO_DESCRIPTION", JV.null), ("OS", JV.null), ("FACTORYERROR", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LogConfigTypeFactory


