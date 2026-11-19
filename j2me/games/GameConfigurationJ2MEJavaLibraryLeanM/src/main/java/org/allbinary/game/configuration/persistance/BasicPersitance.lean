-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.persistance
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicPersitance

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "persistanceStrings" (<- JR.callStatic "PersistanceStrings" "getInstance_0" #[])
    JR.setField this "platformRecordIdUtil" (<- JR.callStatic "PlatformRecordIdUtil" "getInstance_0" #[])
    JR.setField this "valueList" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "idList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_deleteRecoreStore_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "RecordStore" "deleteRecordStore_1" #[(<- JR.call this "getRecordId_1" #[l_abeClientInformation])])
    pure JV.null


def m_deleteAll_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "idList") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_integer : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "idList") "objectArray") l_index)
            let _ := (<- JR.call this "delete_2" #[l_abeClientInformation, (<- JR.call l_integer "intValue_0" #[])])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call this "clear_0" #[])
    pure JV.null


def m_delete_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_deleteId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "persistanceStrings") "DELETING_WITH_ID")]) "appendint_1" #[l_deleteId]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "delete")])
        l_recordStore := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.call this "getRecordId_1" #[l_abeClientInformation]), (JV.bool true)])
        let _ := (<- JR.call l_recordStore "deleteRecord_1" #[l_deleteId])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            throw l_e
        else
            throw jex0
    finally
        if JR.truth (<- JR.ne l_recordStore JV.null) then
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField (<- JR.getField this "persistanceStrings") "CLOSING_RECORDSTORE"), this, (<- JR.getField (<- JR.getField this "commonStrings") "delete")])
            let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_getRecordId_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "platformRecordIdUtil") "getRecordId_2" #[l_abeClientInformation, (<- JR.getField this "recordId")])


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "valueList")


def m_getIds_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "idList")


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "valueList") "clear_0" #[])
    let _ := (<- JR.call (<- JR.getField this "idList") "clear_0" #[])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_recordId : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "recordId" l_recordId
    pure this

initialize JR.registerClass {
    name := "BasicPersitance",
    javaName := "org.allbinary.game.configuration.persistance.BasicPersitance",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("persistanceStrings", JV.null), ("platformRecordIdUtil", JV.null), ("recordId", JV.null), ("valueList", JV.null), ("idList", JV.null)],
    statics := #[],
    methods := #[
        ("deleteRecoreStore_1", #["AbeClientInformationInterface"], false, m_deleteRecoreStore_1), 
        ("deleteAll_1", #["AbeClientInformationInterface"], false, m_deleteAll_1), 
        ("delete_2", #["AbeClientInformationInterface", "int"], false, m_delete_2), 
        ("getRecordId_1", #["AbeClientInformationInterface"], false, m_getRecordId_1), 
        ("getList_0", #[], false, m_getList_0), 
        ("getIds_0", #[], false, m_getIds_0), 
        ("clear_0", #[], false, m_clear_0), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicPersitance


