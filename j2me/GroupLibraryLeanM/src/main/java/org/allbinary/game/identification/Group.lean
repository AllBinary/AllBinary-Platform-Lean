-- Generated Code Do Not Modify
-- package org.allbinary.game.identification
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Group

def jfields (this : JV) : JM JV := do
    JR.setField this "name" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "string" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getGroupName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_setName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    JR.setField this "name" l_name
    let mut l_groupCommonFactory : JV := (<- JR.callStatic "GroupCommonFactory" "getInstance_0" #[])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_groupCommonFactory "GROUP_NAME_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "name")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_groupCommonFactory "ID_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendshort_1" #[(<- JR.getField this "teamId")])
    JR.setField this "string" (<- JR.call l_stringBuffer "toString_0" #[])
    pure JV.null


def m_getGroupId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asS (<- JR.getField this "teamId"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "string")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_teamName : JV := (JR.arg jargs 0)
    let mut l_teamId : JV := (JR.asS (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "teamId" (JR.asS l_teamId)
    let _ := (<- JR.call this "setName_1" #[l_teamName])
    pure this

initialize JR.registerClass {
    name := "Group",
    javaName := "org.allbinary.game.identification.Group",
    super := "Object",
    interfaces := #["GroupInterface"],
    isInterface := false,
    fields := #[("name", JV.null), ("teamId", (JV.short 0)), ("string", JV.null)],
    statics := #[],
    methods := #[
        ("getGroupName_0", #[], false, m_getGroupName_0), 
        ("setName_1", #["String"], false, m_setName_1), 
        ("getGroupId_0", #[], false, m_getGroupId_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["String", "short"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Group


