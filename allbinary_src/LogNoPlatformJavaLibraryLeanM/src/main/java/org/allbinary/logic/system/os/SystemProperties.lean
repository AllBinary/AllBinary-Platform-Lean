-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.os
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SystemProperties

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SystemProperties" "instance" (<- JR.new "SystemProperties" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SystemProperties" "instance")


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_getArch_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_getVersion_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def m_getUserHomePath_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "RuntimeException" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SystemProperties",
    javaName := "org.allbinary.logic.system.os.SystemProperties",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("getArch_0", #[], false, m_getArch_0), 
        ("getVersion_0", #[], false, m_getVersion_0), 
        ("getUserHomePath_0", #[], false, m_getUserHomePath_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SystemProperties


