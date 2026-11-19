-- Generated Code Do Not Modify
-- package org.allbinary.logic.io
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullCloseable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullCloseable" "NULL_CLOSEABLE" (<- JR.new "NullCloseable" #[])
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullCloseable",
    javaName := "org.allbinary.logic.io.NullCloseable",
    super := "Object",
    interfaces := #["Closeable"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_CLOSEABLE", JV.null)],
    methods := #[
        ("close_0", #[], false, m_close_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullCloseable


