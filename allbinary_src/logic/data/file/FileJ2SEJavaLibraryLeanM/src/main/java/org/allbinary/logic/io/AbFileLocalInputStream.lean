-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbFileLocalInputStream

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_file : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AbFileInputStream" this #[(<- JR.call (<- JR.callStatic "AbFileNativeUtil" "get_1" #[l_file]) "getPath_0" #[])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AbFileLocalInputStream",
    javaName := "org.allbinary.logic.io.AbFileLocalInputStream",
    super := "AbFileInputStream",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_1", #["AbFile"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbFileLocalInputStream


