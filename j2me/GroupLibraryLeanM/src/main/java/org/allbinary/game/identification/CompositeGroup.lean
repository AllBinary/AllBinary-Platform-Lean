-- Generated Code Do Not Modify
-- package org.allbinary.game.identification
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CompositeGroup

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupInterface : JV := (JR.arg jargs 0)
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let mut l_groupCommonFactory : JV := (<- JR.callStatic "GroupCommonFactory" "getInstance_0" #[])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_groupCommonFactory "ADDING_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_groupInterface "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_groupCommonFactory "TO_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.getField this "groupInterface")])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField l_commonStrings "ADD")])
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_groupInterface])
    pure JV.null


def m_isInGroup_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupInterface : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.getField this "list") "contains_1" #[l_groupInterface]) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_getGroup_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "groupInterface")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_groupInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "groupInterface" l_groupInterface
    pure this

initialize JR.registerClass {
    name := "CompositeGroup",
    javaName := "org.allbinary.game.identification.CompositeGroup",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("groupInterface", JV.null), ("list", JV.null)],
    statics := #[],
    methods := #[
        ("clear_0", #[], false, m_clear_0), 
        ("add_1", #["Group"], false, m_add_1), 
        ("isInGroup_1", #["Group"], false, m_isInGroup_1), 
        ("getGroup_0", #[], false, m_getGroup_0), 
        ("jinit_1", #["Group"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CompositeGroup


