-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.file
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FilePathData

def jfields (this : JV) : JM JV := do
    JR.setField this "SEPARATORCHAR" (JR.asC (<- JR.getStatic "File" "separatorChar"))
    JR.setField this "PATH_START" (<- JR.getStatic "File" "separator")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FilePathData" "instance" (<- JR.new "FilePathData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FilePathData" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    if JR.truth (<- JR.eq (<- JR.getStatic "File" "separatorChar") (JV.char 92)) then
        JR.setField this "PATH_START" (<- JR.concat (<- JR.getStatic "File" "separator") (<- JR.getStatic "File" "separator"))
        pure ()
    pure this

initialize JR.registerClass {
    name := "FilePathData",
    javaName := "org.allbinary.logic.io.file.FilePathData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("SEPARATORCHAR", (JV.char 0)), ("PATH_START", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FilePathData


