-- Generated Code Do Not Modify
-- package org.allbinary.game.input.mapping
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputMapping

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "hashtable" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    JR.setField this "mappedList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getTotalMapped_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "hashtable") "size_0" #[]))


def m_isDefaultNew_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_getDefault_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "InputToGameKeyMapping" "getNullInstance_0" #[])


def m_removeAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "hashtable") "clear_0" #[])
    let _ := (<- JR.call (<- JR.getField this "mappedList") "clear_0" #[])
    pure JV.null


def m_remove_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    let mut l_mappedToInput : JV := (JR.arg jargs 1)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_stringUtil : JV := (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[l_input])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " == ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[l_mappedToInput])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (JV.str "InputMapping::remove")])
    let mut l_list : JV := (<- JR.call this "getMappedInput_1" #[l_input])
    if JR.truth (<- JR.call l_list "contains_1" #[l_mappedToInput]) then
        let _ := (<- JR.call l_list "remove_1" #[l_mappedToInput])
        let _ := (<- JR.call (<- JR.getField this "mappedList") "remove_1" #[l_mappedToInput])
        let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Removed: ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[l_input])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " == ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[l_mappedToInput])])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (JV.str "InputMapping::remove")])
        pure ()
    else
        let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Not Deleted: ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[l_input])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " == ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_stringUtil "toString_1" #[l_mappedToInput])])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (JV.str "InputMapping::remove")])
        pure ()
    pure JV.null


def m_addMapping_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputToGameKeyMapping : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_add_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    let mut l_mappedToInput : JV := (JR.arg jargs 1)
    let mut l_list : JV := (<- JR.call this "getMappedInput_1" #[l_input])
    if JR.truth (JR.not (<- JR.call l_list "contains_1" #[l_mappedToInput])) then
        let _ := (<- JR.call l_list "add_1" #[l_mappedToInput])
        let _ := (<- JR.call (<- JR.getField this "mappedList") "add_1" #[l_mappedToInput])
        pure ()
    pure JV.null


def m_isMapped_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "mappedList") "contains_1" #[l_input])


def m_getMappedInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.arg jargs 0)
    let mut l_mappingInputCanBeNullList : JV := (<- JR.call (<- JR.getField this "hashtable") "get_1" #[l_id])
    if JR.truth (<- JR.eq l_mappingInputCanBeNullList JV.null) then
        let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call (<- JR.getField this "hashtable") "put_2" #[l_id, l_list])
        return l_list
    return l_mappingInputCanBeNullList


def m_getHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "hashtable")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InputMapping",
    javaName := "org.allbinary.game.input.mapping.InputMapping",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("hashtable", JV.null), ("mappedList", JV.null)],
    statics := #[],
    methods := #[
        ("getTotalMapped_0", #[], false, m_getTotalMapped_0), 
        ("isDefaultNew_0", #[], false, m_isDefaultNew_0), 
        ("getDefault_0", #[], false, m_getDefault_0), 
        ("removeAll_0", #[], false, m_removeAll_0), 
        ("remove_2", #["Input", "Input"], false, m_remove_2), 
        ("addMapping_1", #["InputToGameKeyMapping"], false, m_addMapping_1), 
        ("add_2", #["Input", "Input"], false, m_add_2), 
        ("isMapped_1", #["Input"], false, m_isMapped_1), 
        ("getMappedInput_1", #["Input"], false, m_getMappedInput_1), 
        ("getHashtable_0", #[], false, m_getHashtable_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputMapping


