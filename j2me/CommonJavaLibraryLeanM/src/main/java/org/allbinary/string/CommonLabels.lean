-- Generated Code Do Not Modify
-- package org.allbinary.string
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommonLabels

def jfields (this : JV) : JM JV := do
    JR.setField this "WIDTH_LABEL" (JV.str " Width: ")
    JR.setField this "HEIGHT_LABEL" (JV.str " Height: ")
    JR.setField this "END_LABEL" (JV.str "End: ")
    JR.setField this "TOTAL_LABEL" (JV.str "Total: ")
    JR.setField this "INDEX_LABEL" (JV.str "index: ")
    JR.setField this "START_LABEL" (JV.str "Start: ")
    JR.setField this "COMMAND_LABEL" (JV.str "Command: ")
    JR.setField this "NAME_LABEL" (JV.str "Name: ")
    JR.setField this "START" (<- JR.getField this "START_LABEL")
    JR.setField this "ELAPSED" (JV.str " Elapsed: ")
    JR.setField this "CURRENT" (JV.str " Current: ")
    JR.setField this "NEXT" (JV.str "Next")
    JR.setField this "ITEM_LABEL" (JV.str "Item: ")
    JR.setField this "RESULT_" (JV.str "Result: ")
    JR.setField this "COLON_SEP" (JV.str ": ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CommonLabels" "instance" (<- JR.new "CommonLabels" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CommonLabels" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CommonLabels",
    javaName := "org.allbinary.string.CommonLabels",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("WIDTH_LABEL", JV.null), ("HEIGHT_LABEL", JV.null), ("END_LABEL", JV.null), ("TOTAL_LABEL", JV.null), ("INDEX_LABEL", JV.null), ("START_LABEL", JV.null), ("COMMAND_LABEL", JV.null), ("NAME_LABEL", JV.null), ("START", JV.null), ("ELAPSED", JV.null), ("CURRENT", JV.null), ("NEXT", JV.null), ("ITEM_LABEL", JV.null), ("RESULT_", JV.null), ("COLON_SEP", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommonLabels


