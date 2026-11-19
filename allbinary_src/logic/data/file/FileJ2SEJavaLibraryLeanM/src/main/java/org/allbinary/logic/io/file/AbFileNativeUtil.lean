-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.file
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbFileNativeUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_get_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    return (<- JR.call l_file "getFile_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbFileNativeUtil",
    javaName := "org.allbinary.logic.io.file.AbFileNativeUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("get_1", #["AbFile"], true, m_get_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbFileNativeUtil


