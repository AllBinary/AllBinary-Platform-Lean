-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BufferedLineReader

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_readUpToLines_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_readAheadIndex : JV := (JR.asJ (JR.arg jargs 0))
    pure JV.null


def m_readLine_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "tmpIn") "readLine_0" #[])


def m_ready_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "tmpIn") "ready_0" #[])


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (JV.long 0))


def m_getCurrent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "tmpIn" (<- JR.new "BufferedReader" #[(<- JR.new "FileReader" #[(<- JR.callStatic "AbFileNativeUtil" "get_1" #[l_file])])])
    pure this

initialize JR.registerClass {
    name := "BufferedLineReader",
    javaName := "org.allbinary.logic.io.BufferedLineReader",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("tmpIn", JV.null)],
    statics := #[],
    methods := #[
        ("readUpToLines_1", #["long"], false, m_readUpToLines_1), 
        ("readLine_0", #[], false, m_readLine_0), 
        ("ready_0", #[], false, m_ready_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("getCurrent_0", #[], false, m_getCurrent_0), 
        ("jinit_1", #["AbFile"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BufferedLineReader


