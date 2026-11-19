-- Generated Code Do Not Modify
-- package org.allbinary.util
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImmutableBasicArrayList

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_e : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField this "name"), this])
    return (JV.bool true)


def m_addAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_element : JV := (JR.arg jargs 1)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField this "name"), this])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "BasicArrayListS" this #[l_size]
    let _ <- jfields this
    JR.setField this "name" l_name
    pure this

initialize JR.registerClass {
    name := "ImmutableBasicArrayList",
    javaName := "org.allbinary.util.ImmutableBasicArrayList",
    super := "BasicArrayListS",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null)],
    statics := #[],
    methods := #[
        ("add_1", #["Any"], false, m_add_1), 
        ("addAt_2", #["int", "Any"], false, m_addAt_2), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["String", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImmutableBasicArrayList


