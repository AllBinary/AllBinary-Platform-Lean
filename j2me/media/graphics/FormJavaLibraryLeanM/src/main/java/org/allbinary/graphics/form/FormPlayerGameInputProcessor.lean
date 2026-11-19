-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FormPlayerGameInputProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.call (<- JR.getField this "playerGameInputCompositeInterface") "getPlayerGameInput_0" #[]) "update_0" #[])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerGameInputCompositeInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Processor" this #[]
    let _ <- jfields this
    JR.setField this "playerGameInputCompositeInterface" l_playerGameInputCompositeInterface
    pure this

initialize JR.registerClass {
    name := "FormPlayerGameInputProcessor",
    javaName := "org.allbinary.graphics.form.FormPlayerGameInputProcessor",
    super := "Processor",
    interfaces := #[],
    isInterface := false,
    fields := #[("playerGameInputCompositeInterface", JV.null)],
    statics := #[],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("jinit_1", #["PlayerGameInputCompositeInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FormPlayerGameInputProcessor


