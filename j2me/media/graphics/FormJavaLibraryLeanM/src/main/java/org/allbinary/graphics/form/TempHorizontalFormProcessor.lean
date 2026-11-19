-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TempHorizontalFormProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "scrollCurrentSelectionForm") "processTempHorizontalForm_0" #[])
    JR.setField (<- JR.getField this "scrollCurrentSelectionForm") "processor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scrollCurrentSelectionForm : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Processor" this #[]
    let _ <- jfields this
    JR.setField this "scrollCurrentSelectionForm" l_scrollCurrentSelectionForm
    pure this

initialize JR.registerClass {
    name := "TempHorizontalFormProcessor",
    javaName := "org.allbinary.graphics.form.TempHorizontalFormProcessor",
    super := "Processor",
    interfaces := #[],
    isInterface := false,
    fields := #[("scrollCurrentSelectionForm", JV.null)],
    statics := #[],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("jinit_1", #["ScrollCurrentSelectionForm"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TempHorizontalFormProcessor


