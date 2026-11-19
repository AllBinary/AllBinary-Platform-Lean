-- Generated Code Do Not Modify
-- package org.allbinary.game.identification
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GroupCommonFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "ID" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 10)])
    JR.setField this "GROUP_NAME_LABEL" (JV.str "Group Name: ")
    JR.setField this "ID_LABEL" (JV.str " Id: ")
    JR.setField this "ADDING_LABEL" (JV.str "Adding: ")
    JR.setField this "TO_LABEL" (JV.str " to: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GroupCommonFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "GroupCommonFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "GroupCommonFactory" "instance" (<- JR.new "GroupCommonFactory" #[])
        pure ()
    return (<- JR.getStatic "GroupCommonFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GroupCommonFactory",
    javaName := "org.allbinary.game.identification.GroupCommonFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("ID", JV.null), ("GROUP_NAME_LABEL", JV.null), ("ID_LABEL", JV.null), ("ADDING_LABEL", JV.null), ("TO_LABEL", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GroupCommonFactory


