-- Generated Code Do Not Modify
-- package org.allbinary.game.input.mapping
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PersistentInputMapping

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "enumerationUtil" (<- JR.callStatic "EnumerationUtil" "getInstance_0" #[])
    JR.setField this "inputMapping" (<- JR.new "InputToGameKeyMapping" #[])
    JR.setField this "inputMappingEventListenerInterface" (<- JR.getStatic "NullInputMappingEventListener" "NULL_INPUT_MAPPING_EVENT_LISTENER")
    JR.setField this "inputMappingEvent" (<- JR.new "InputMappingEvent" #[this])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PersistentInputMapping" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getNullInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "PersistentInputMapping" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "PersistentInputMapping" "instance" (<- JR.new "PersistentInputMapping" #[(<- JR.getField (<- JR.callStatic "GamePersistanceStrings" "getInstance_0" #[]) "SAVED_INPUT_CONFIGURATION_RECORD_ID")])
        pure ()
    return (<- JR.getStatic "PersistentInputMapping" "instance")


def m_getTotalMapped_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.call (<- JR.call this "getInputMapping_0" #[]) "getHashtable_0" #[]) "size_0" #[]))


def m_isDefaultNew_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_getDefault_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "InputToGameKeyMapping" "getNullInstance_0" #[])


def m_setDefault_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.call this "getInputMapping_0" #[]) "removeAll_0" #[])
    let _ := (<- JR.call (<- JR.call this "getInputMapping_0" #[]) "addMapping_1" #[(<- JR.call this "getDefault_0" #[])])
    let _ := (<- JR.call this "save_1" #[l_abeClientInformation])
    pure JV.null


def m_update_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "inputPersistance") "deleteAll_1" #[l_abeClientInformation])
    let _ := (<- JR.call this "save_1" #[l_abeClientInformation])
    pure JV.null


def m_save_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "inputPersistance") "save_2" #[l_abeClientInformation, (<- JR.call (<- JR.call this "getInputMapping_0" #[]) "getHashtable_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "inputMappingEvent") "setInputToGameKeyMapping_1" #[(<- JR.call this "getInputMapping_0" #[])])
    if JR.truth (<- JR.ne (<- JR.call this "getInputMappingEventListenerInterface_0" #[]) JV.null) then
        let _ := (<- JR.call (<- JR.call this "getInputMappingEventListenerInterface_0" #[]) "onInputMappingEvent_1" #[(<- JR.getField this "inputMappingEvent")])
        pure ()
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
    try
        let _ := (<- JR.call (<- JR.getField this "inputPersistance") "loadAll_1" #[l_abeClientInformation])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT"), l_e])
            let _ := (<- JR.call (<- JR.getField this "inputPersistance") "deleteRecoreStore_1" #[l_abeClientInformation])
            let _ := (<- JR.call this "setDefault_1" #[l_abeClientInformation])
            let _ := (<- JR.call (<- JR.getField this "inputPersistance") "loadAll_1" #[l_abeClientInformation])
            pure ()
        else
            throw jex0
    let mut l_list : JV := (<- JR.call (<- JR.getField this "inputPersistance") "getList_0" #[])
    let mut l_totalMappedTo : JV := (JR.asI (JV.int 0))
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_hashtable : JV := JV.null
    let mut l_enumeration : JV := JV.null
    let mut l_mappedToInput : JV := JV.null
    let mut l_gameActionInput : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_hashtable := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            l_enumeration := (<- JR.call l_hashtable "keys_0" #[])
            repeat
                if !(JR.truth (<- JR.call (<- JR.getField this "enumerationUtil") "hasMoreElements_1" #[l_enumeration])) then break
                l_mappedToInput := (<- JR.call (<- JR.getField this "enumerationUtil") "nextElement_1" #[l_enumeration])
                l_gameActionInput := (<- JR.call l_hashtable "get_1" #[l_mappedToInput])
                l_totalMappedTo := (JR.inc l_totalMappedTo)
                let _ := (<- JR.call (<- JR.call this "getInputMapping_0" #[]) "add_2" #[l_gameActionInput, l_mappedToInput])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "End - Total Loaded Keys Mapped: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getTotalMapped_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " to: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_totalMappedTo])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
    pure JV.null


def m_setInputMappingEventListenerInterface_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputMappingEventListenerInterface : JV := (JR.arg jargs 0)
    JR.setField this "inputMappingEventListenerInterface" l_inputMappingEventListenerInterface
    pure JV.null


def m_getInputMappingEventListenerInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "inputMappingEventListenerInterface")


def m_getInputMapping_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "inputMapping")


def m_isDelete_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_isSystemInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "inputPersistance" (<- JR.new "InputPersistance" #[l_name])
    pure this

initialize JR.registerClass {
    name := "PersistentInputMapping",
    javaName := "org.allbinary.game.input.mapping.PersistentInputMapping",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("enumerationUtil", JV.null), ("inputMapping", JV.null), ("inputMappingEventListenerInterface", JV.null), ("inputPersistance", JV.null), ("inputMappingEvent", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getNullInstance_0", #[], true, m_getNullInstance_0), 
        ("getTotalMapped_0", #[], false, m_getTotalMapped_0), 
        ("isDefaultNew_0", #[], false, m_isDefaultNew_0), 
        ("getDefault_0", #[], false, m_getDefault_0), 
        ("setDefault_1", #["AbeClientInformationInterface"], false, m_setDefault_1), 
        ("update_1", #["AbeClientInformationInterface"], false, m_update_1), 
        ("save_1", #["AbeClientInformationInterface"], false, m_save_1), 
        ("init_1", #["AbeClientInformationInterface"], false, m_init_1), 
        ("setInputMappingEventListenerInterface_1", #["InputMappingEventListenerInterface"], false, m_setInputMappingEventListenerInterface_1), 
        ("getInputMappingEventListenerInterface_0", #[], false, m_getInputMappingEventListenerInterface_0), 
        ("getInputMapping_0", #[], false, m_getInputMapping_0), 
        ("isDelete_1", #["Input"], false, m_isDelete_1), 
        ("isSystemInput_1", #["Input"], false, m_isSystemInput_1), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PersistentInputMapping


