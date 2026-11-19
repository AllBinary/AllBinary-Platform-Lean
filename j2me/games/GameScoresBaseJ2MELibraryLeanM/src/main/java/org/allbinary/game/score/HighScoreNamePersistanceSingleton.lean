-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScoreNamePersistanceSingleton

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "platformRecordIdUtil" (<- JR.callStatic "PlatformRecordIdUtil" "getInstance_0" #[])
    JR.setField this "RECORD_ID" (JV.str "_SN")
    JR.setField this "name" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "nameBasicArrayList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HighScoreNamePersistanceSingleton" "SINGLETON" (<- JR.new "HighScoreNamePersistanceSingleton" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "HighScoreNamePersistanceSingleton" "SINGLETON")


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "name" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null


def m_deleteAll_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_gameInfo : JV := (JR.arg jargs 1)
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "nameBasicArrayList") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_integer : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "nameBasicArrayList") "objectArray") l_index)
            let _ := (<- JR.call this "delete_3" #[l_abeClientInformation, l_gameInfo, (<- JR.call l_integer "intValue_0" #[])])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call this "clear_0" #[])
    pure JV.null


def m_getRecordId_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "platformRecordIdUtil") "getRecordId_2" #[l_abeClientInformation, (<- JR.getField this "RECORD_ID")])


def m_delete_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_gameInfo : JV := (JR.arg jargs 1)
    let mut l_deleteId : JV := (JR.asI (JR.arg jargs 2))
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Deleting: ")]) "appendint_1" #[l_deleteId]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "delete")])
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
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(JV.str "Closing RecordStore"), this, (<- JR.getField (<- JR.getField this "commonStrings") "delete")])
            let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_getIds_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "nameBasicArrayList")


def m_load_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_gameInfo : JV := (JR.arg jargs 1)
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        if JR.truth (<- JR.eq (<- JR.getField this "name") (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")) then
            let mut l_LOADING_ID : JV := (JV.str "Loading id: ")
            l_recordStore := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.call this "getRecordId_1" #[l_abeClientInformation]), (JV.bool true)])
            let mut l_recordEnum : JV := (<- JR.call l_recordStore "enumerateRecords_3" #[(<- JR.getStatic "NullRecordFilter" "NULL_RECORD_FILTER"), (<- JR.getStatic "NullRecordComparator" "NULL_RECORD_COMPARATOR"), (JV.bool true)])
            let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
            let mut l_recordAsBytes : JV := JV.null
            let mut l_byteArrayInputStream : JV := JV.null
            let mut l_inputStream : JV := JV.null
            repeat
                if !(JR.truth (<- JR.call l_recordEnum "hasNextElement_0" #[])) then break
                let mut l_id : JV := (JR.asI (<- JR.call l_recordEnum "nextRecordId_0" #[]))
                let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_LOADING_ID]) "appendint_1" #[l_id]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD")])
                l_recordAsBytes := (<- JR.call (<- JR.getField this "tsUtil") "getRecord_2" #[l_recordStore, l_id])
                l_byteArrayInputStream := (<- JR.new "ByteArrayInputStream" #[l_recordAsBytes])
                l_inputStream := (<- JR.new "DataInputStream" #[l_byteArrayInputStream])
                repeat
                    if !(JR.truth (<- JR.gt (<- JR.call l_inputStream "available_0" #[]) (JV.int 0))) then break
                    JR.setField this "name" (<- JR.call l_inputStream "readUTF_0" #[])
                    pure ()
                let _ := (<- JR.call (<- JR.getField this "nameBasicArrayList") "add_1" #[(<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[l_id])])
                pure ()
            pure ()
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.call this "save_3" #[l_abeClientInformation, l_gameInfo, (<- JR.getField this "name")])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION_LABEL")]) "append_1" #[(<- JR.call (<- JR.callStatic "ExceptionUtil" "getInstance_0" #[]) "getStackTrace_1" #[l_e])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD")])
            pure ()
        else
            throw jex1
    finally
        try
            if JR.truth (<- JR.ne l_recordStore JV.null) then
                let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(JV.str "Closing RecordStore"), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD")])
                let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
                pure ()
            pure ()
        catch jex2 =>
            if (<- JR.isInstanceOfAny jex2 #["RecordStoreException"]) then
                let mut l_e : JV := jex2
                let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD"), l_e])
                pure ()
            else
                throw jex2
        pure ()
    return (<- JR.getField this "name")


def m_save_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_gameInfo : JV := (JR.arg jargs 1)
    let mut l_name : JV := (JR.arg jargs 2)
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Saving: ")]) "append_1" #[l_name]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "SAVE")])
        l_recordStore := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.call this "getRecordId_1" #[l_abeClientInformation]), (JV.bool true)])
        let mut l_byteArrayOutputStream : JV := (<- JR.new "ByteArrayOutputStream" #[])
        let mut l_outputStream : JV := (<- JR.new "DataOutputStream" #[l_byteArrayOutputStream])
        let _ := (<- JR.call l_outputStream "writeUTF_1" #[l_name])
        let mut l_savedGameBytes : JV := (<- JR.call l_byteArrayOutputStream "toByteArray_0" #[])
        let _ := (<- JR.call l_recordStore "addRecord_3" #[l_savedGameBytes, (JV.int 0), (<- JR.alen l_savedGameBytes)])
        JR.setField this "name" l_name
        pure ()
    catch jex3 =>
        if (<- JR.isInstanceOfAny jex3 #["Exception"]) then
            let mut l_e : JV := jex3
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "SAVE"), l_e])
            pure ()
        else
            throw jex3
    finally
        try
            if JR.truth (<- JR.ne l_recordStore JV.null) then
                let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(JV.str "Closing RecordStore"), this, (<- JR.getField (<- JR.getField this "commonStrings") "SAVE")])
                let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
                pure ()
            pure ()
        catch jex4 =>
            if (<- JR.isInstanceOfAny jex4 #["RecordStoreException"]) then
                let mut l_e : JV := jex4
                let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "SAVE"), l_e])
                pure ()
            else
                throw jex4
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "HighScoreNamePersistanceSingleton",
    javaName := "org.allbinary.game.score.HighScoreNamePersistanceSingleton",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("tsUtil", JV.null), ("commonStrings", JV.null), ("platformRecordIdUtil", JV.null), ("RECORD_ID", JV.null), ("name", JV.null), ("nameBasicArrayList", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("clear_0", #[], false, m_clear_0), 
        ("deleteAll_2", #["AbeClientInformationInterface", "GameInfo"], false, m_deleteAll_2), 
        ("getRecordId_1", #["AbeClientInformationInterface"], false, m_getRecordId_1), 
        ("delete_3", #["AbeClientInformationInterface", "GameInfo", "int"], false, m_delete_3), 
        ("getIds_0", #[], false, m_getIds_0), 
        ("load_2", #["AbeClientInformationInterface", "GameInfo"], false, m_load_2), 
        ("save_3", #["AbeClientInformationInterface", "GameInfo", "String"], false, m_save_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScoreNamePersistanceSingleton


