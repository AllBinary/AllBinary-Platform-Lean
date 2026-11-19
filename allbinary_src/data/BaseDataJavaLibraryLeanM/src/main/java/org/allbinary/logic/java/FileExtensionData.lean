-- Generated Code Do Not Modify
-- package org.allbinary.logic.java
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FileExtensionData

def jfields (this : JV) : JM JV := do
    JR.setField this "DOT_JAVA_SOURCE" (JV.str ".java")
    JR.setField this "JAVA_SOURCE" (JV.str "java")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FileExtensionData" "instance" (<- JR.new "FileExtensionData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FileExtensionData" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FileExtensionData",
    javaName := "org.allbinary.logic.java.FileExtensionData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("DOT_JAVA_SOURCE", JV.null), ("JAVA_SOURCE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FileExtensionData


