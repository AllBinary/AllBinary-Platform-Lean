-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.persistance
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_KeyValuePersistance

def jfields (this : JV) : JM JV := do
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_loadAll_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "loadAllSize_2" #[l_abeClientInformation, (JV.int 1)])
    pure JV.null


def m_loadAllSize_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (JR.arg jargs 1))
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        l_recordStore := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.callInherited this "KeyValuePersistance" "getRecordId_1" #[l_abeClientInformation]), (JV.bool true)])
        let mut l_recordEnum : JV := (<- JR.call l_recordStore "enumerateRecords_3" #[(<- JR.getStatic "NullRecordFilter" "NULL_RECORD_FILTER"), (<- JR.getStatic "NullRecordComparator" "NULL_RECORD_COMPARATOR"), (JV.bool true)])
        let mut l_hashtable : JV := JV.null
        let mut l_name : JV := JV.null
        let mut l_value : JV := JV.null
        let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let mut l_recordAsBytes : JV := JV.null
        let mut l_byteArrayInputStream : JV := JV.null
        let mut l_inputStream : JV := JV.null
        repeat
            if !(JR.truth (<- JR.call l_recordEnum "hasNextElement_0" #[])) then break
            let mut l_id : JV := (JR.asI (<- JR.call l_recordEnum "nextRecordId_0" #[]))
            let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
            let _ := (<- JR.call (<- JR.getInherited this "KeyValuePersistance" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getInherited this "KeyValuePersistance" "persistanceStrings") "LOADING_ID")]) "appendint_1" #[l_id]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "KeyValuePersistance" "persistanceStrings") "LOAD_ALL")])
            l_recordAsBytes := (<- JR.call (<- JR.getField this "tsUtil") "getRecord_2" #[l_recordStore, l_id])
            if JR.truth (<- JR.ne l_recordAsBytes JV.null) then
                l_byteArrayInputStream := (<- JR.new "ByteArrayInputStream" #[l_recordAsBytes])
                l_inputStream := (<- JR.new "DataInputStream" #[l_byteArrayInputStream])
                l_hashtable := (<- JR.new "ABHashtable" #[])
                if true then
                    let mut l_index : JV := (JR.asI (JV.int 0))
                    repeat
                        if !(JR.truth (<- JR.lt l_index l_size)) then break
                        l_name := (<- JR.call l_inputStream "readUTF_0" #[])
                        let _ := (<- JR.call l_inputStream "readUTF_0" #[])
                        l_value := (<- JR.call l_inputStream "readUTF_0" #[])
                        let _ := (<- JR.call l_hashtable "put_2" #[l_name, l_value])
                        l_index := (JR.inc l_index)
                        pure ()
                    pure ()
                let _ := (<- JR.call (<- JR.getInherited this "KeyValuePersistance" "valueList") "add_1" #[l_hashtable])
                let _ := (<- JR.call (<- JR.getInherited this "KeyValuePersistance" "idList") "add_1" #[(<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[l_id])])
                pure ()
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            throw l_e
        else
            throw jex0
    finally
        if JR.truth (<- JR.ne l_recordStore JV.null) then
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField (<- JR.getInherited this "KeyValuePersistance" "persistanceStrings") "CLOSING_RECORDSTORE"), this, (<- JR.getField (<- JR.getInherited this "KeyValuePersistance" "persistanceStrings") "LOAD_ALL")])
            let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_save_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_hashtable : JV := (JR.arg jargs 1)
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        let _ := (<- JR.call (<- JR.getInherited this "KeyValuePersistance" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "KeyValuePersistance" "persistanceStrings") "SAVING")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_hashtable])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "KeyValuePersistance" "commonStrings") "SAVE")])
        l_recordStore := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.callInherited this "KeyValuePersistance" "getRecordId_1" #[l_abeClientInformation]), (JV.bool true)])
        let mut l_byteArrayOutputStream : JV := (<- JR.new "ByteArrayOutputStream" #[])
        let mut l_outputStream : JV := (<- JR.new "DataOutputStream" #[l_byteArrayOutputStream])
        let mut l_value : JV := JV.null
        let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
        let mut l_objectArray : JV := (<- JR.call (<- JR.callStatic "HashtableUtil" "getInstance_0" #[]) "getKeysAsArray_1" #[l_hashtable])
        let mut l_anyType : JV := JV.null
        let mut l_size : JV := (JR.asI (<- JR.alen l_objectArray))
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                let _ := (<- JR.call l_outputStream "writeUTF_1" #[(<- JR.aget l_objectArray l_index)])
                let _ := (<- JR.call l_outputStream "writeUTF_1" #[(<- JR.getField l_commonSeps "EQUALS")])
                l_anyType := (<- JR.aget l_objectArray l_index)
                l_value := (<- JR.call l_hashtable "get_1" #[l_anyType])
                let _ := (<- JR.call l_outputStream "writeUTF_1" #[l_value])
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        let mut l_tsUtil : JV := (<- JR.callStatic "TsUtil" "getInstance_0" #[])
        let mut l_savedGameBytes : JV := (<- JR.call l_tsUtil "getByteArray_1" #[(<- JR.call l_byteArrayOutputStream "toString_0" #[])])
        let _ := (<- JR.call l_recordStore "addRecord_3" #[l_savedGameBytes, (JV.int 0), (<- JR.alen l_savedGameBytes)])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            throw l_e
        else
            throw jex1
    finally
        if JR.truth (<- JR.ne l_recordStore JV.null) then
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField (<- JR.getInherited this "KeyValuePersistance" "persistanceStrings") "CLOSING_RECORDSTORE"), this, (<- JR.getField (<- JR.getInherited this "KeyValuePersistance" "commonStrings") "SAVE")])
            let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_get_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_hashtable : JV := (<- JR.aget (<- JR.getField (<- JR.getInherited this "KeyValuePersistance" "valueList") "objectArray") l_index)
    return l_hashtable


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_recordId : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "BasicPersitance" this #[l_recordId]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "KeyValuePersistance",
    javaName := "org.allbinary.game.configuration.persistance.KeyValuePersistance",
    super := "BasicPersitance",
    interfaces := #[],
    isInterface := false,
    fields := #[("tsUtil", JV.null)],
    statics := #[],
    methods := #[
        ("loadAll_1", #["AbeClientInformationInterface"], false, m_loadAll_1), 
        ("loadAllSize_2", #["AbeClientInformationInterface", "int"], false, m_loadAllSize_2), 
        ("save_2", #["AbeClientInformationInterface", "ABHashtable"], false, m_save_2), 
        ("get_1", #["int"], false, m_get_1), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_KeyValuePersistance


