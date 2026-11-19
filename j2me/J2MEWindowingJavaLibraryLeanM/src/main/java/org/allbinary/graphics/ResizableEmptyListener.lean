-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ResizableEmptyListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onResizable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isResizable : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ResizableEmptyListener",
    javaName := "org.allbinary.graphics.ResizableEmptyListener",
    super := "Object",
    interfaces := #["ResizableListenerInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("onResizable_1", #["boolean"], false, m_onResizable_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ResizableEmptyListener


