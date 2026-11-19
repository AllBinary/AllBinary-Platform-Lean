-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputPersistance

def jfields (this : JV) : JM JV := do
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "hashtableUtil" (<- JR.callStatic "HashtableUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_loadAll_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        l_recordStore := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.callInherited this "InputPersistance" "getRecordId_1" #[l_abeClientInformation]), (JV.bool true)])
        let mut l_recordEnum : JV := (<- JR.call l_recordStore "enumerateRecords_3" #[(<- JR.getStatic "NullRecordFilter" "NULL_RECORD_FILTER"), (<- JR.getStatic "NullRecordComparator" "NULL_RECORD_COMPARATOR"), (JV.bool true)])
        let mut l_gameActionInputId : JV := (JR.asJ (JV.long 0))
        let mut l_inputId : JV := (JR.asJ (JV.long 0))
        let mut l_gameActionInput : JV := JV.null
        let mut l_input : JV := JV.null
        let mut l_hashtable : JV := JV.null
        let mut l_gameKeyFactory : JV := (<- JR.callStatic "GameKeyMappingFactory" "getInstance_0" #[])
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let mut l_inputFactory : JV := (<- JR.callStatic "InputFactory" "getInstance_0" #[])
        let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
        let mut l_stdUtil : JV := (<- JR.callStatic "StdUtil" "getInstance_0" #[])
        let mut l_recordAsBytes : JV := JV.null
        let mut l_byteArrayInputStream : JV := JV.null
        let mut l_inputStream : JV := JV.null
        repeat
            if !(JR.truth (<- JR.call l_recordEnum "hasNextElement_0" #[])) then break
            let mut l_id : JV := (JR.asI (<- JR.call l_recordEnum "nextRecordId_0" #[]))
            let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
            let _ := (<- JR.call (<- JR.getInherited this "InputPersistance" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "LOADING_ID")]) "appendint_1" #[l_id]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "LOAD_ALL")])
            l_recordAsBytes := (<- JR.call (<- JR.getField this "tsUtil") "getRecord_2" #[l_recordStore, l_id])
            if JR.truth (<- JR.ne l_recordAsBytes JV.null) then
                l_byteArrayInputStream := (<- JR.new "ByteArrayInputStream" #[l_recordAsBytes])
                l_inputStream := (<- JR.new "DataInputStream" #[l_byteArrayInputStream])
                l_hashtable := (<- JR.call l_stdUtil "createHashtable_0" #[])
                let mut l_value : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.gt (<- JR.call l_inputStream "available_0" #[]) (JV.int 0))) then break
                    let mut l_gameActionInputIdAsString : JV := (<- JR.call l_inputStream "readUTF_0" #[])
                    l_value := (JR.asI (<- JR.callStatic "Integer" "parseInt_1" #[l_gameActionInputIdAsString]))
                    l_gameActionInputId := (JR.asJ (JR.toJ l_value))
                    let _ := (<- JR.call l_inputStream "readUTF_0" #[])
                    l_value := (JR.asI (<- JR.callStatic "Integer" "parseInt_1" #[(<- JR.call l_inputStream "readUTF_0" #[])]))
                    l_inputId := (JR.asJ (JR.toJ l_value))
                    l_gameActionInput := (<- JR.call l_gameKeyFactory "getGameKey_1" #[(JR.toI l_gameActionInputId)])
                    l_input := (<- JR.call l_inputFactory "getInstanceById_1" #[(JR.toI l_inputId)])
                    if JR.truth (<- JR.cor (<- JR.eq l_input (<- JR.getField l_inputFactory "NO_INPUT")) (do pure (<- JR.eq l_gameActionInput JV.null))) then
                        let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
                        if JR.truth (<- JR.eq l_input (<- JR.getField l_inputFactory "NO_INPUT")) then
                            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "ERROR_LOADING_ID")])
                            let _ := (<- JR.call l_stringBuffer "appendlong_1" #[l_inputId])
                            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "GAME_ACTION_INPUT")])
                            let _ := (<- JR.call l_stringBuffer "appendlong_1" #[l_gameActionInputId])
                            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "LOAD_ALL")])
                            pure ()
                        if JR.truth (<- JR.eq l_gameActionInput JV.null) then
                            let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
                            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "ERROR_LOADING")])
                            let _ := (<- JR.call l_stringBuffer "appendlong_1" #[l_gameActionInputId])
                            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "ID")])
                            let _ := (<- JR.call l_stringBuffer "appendlong_1" #[l_inputId])
                            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "LOAD_ALL")])
                            pure ()
                        pure ()
                    else
                        pure ()
                    let _ := (<- JR.call l_hashtable "put_2" #[l_input, l_gameActionInput])
                    pure ()
                let _ := (<- JR.call (<- JR.getInherited this "InputPersistance" "valueList") "add_1" #[l_hashtable])
                let _ := (<- JR.call (<- JR.getInherited this "InputPersistance" "idList") "add_1" #[(<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[l_id])])
                pure ()
            else
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
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "CLOSING_RECORDSTORE"), this, (<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "LOAD_ALL")])
            let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_save_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_hashtable : JV := (JR.arg jargs 1)
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "SAVING")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_hashtable])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "InputPersistance" "commonStrings") "SAVE")])
        l_recordStore := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.callInherited this "InputPersistance" "getRecordId_1" #[l_abeClientInformation]), (JV.bool true)])
        let mut l_byteArrayOutputStream : JV := (<- JR.new "ByteArrayOutputStream" #[])
        let mut l_outputStream : JV := (<- JR.new "DataOutputStream" #[l_byteArrayOutputStream])
        let mut l_gameActionInput : JV := JV.null
        let mut l_list : JV := JV.null
        let mut l_input : JV := JV.null
        let mut l_savedGameBytes : JV := JV.null
        let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
        let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
        let mut l_inputObjectArray : JV := (<- JR.call (<- JR.getField this "hashtableUtil") "getKeysAsArray_1" #[l_hashtable])
        let mut l_size : JV := (JR.asI (<- JR.alen l_inputObjectArray))
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                l_gameActionInput := (<- JR.aget l_inputObjectArray l_index)
                l_list := (<- JR.call l_hashtable "get_1" #[(<- JR.aget l_inputObjectArray l_index)])
                if true then
                    let mut l_index2 : JV := (JR.asI (JV.int 0))
                    repeat
                        if !(JR.truth (<- JR.lt l_index2 (<- JR.call l_list "size_0" #[]))) then break
                        let mut l_gameActionInputIdAsString : JV := (<- JR.call (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(<- JR.call l_gameActionInput "getId_0" #[])]) "toString_0" #[])
                        let _ := (<- JR.call l_outputStream "writeUTF_1" #[l_gameActionInputIdAsString])
                        let _ := (<- JR.call l_outputStream "writeUTF_1" #[(<- JR.getField l_commonSeps "EQUALS")])
                        l_input := (<- JR.aget (<- JR.getField l_list "objectArray") l_index2)
                        let mut l_inputIdAsString : JV := (<- JR.call (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(<- JR.call l_input "getId_0" #[])]) "toString_0" #[])
                        let _ := (<- JR.call l_outputStream "writeUTF_1" #[l_inputIdAsString])
                        l_index2 := (JR.inc l_index2)
                        pure ()
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        l_savedGameBytes := (<- JR.call l_byteArrayOutputStream "toByteArray_0" #[])
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
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "CLOSING_RECORDSTORE"), this, (<- JR.getField (<- JR.getInherited this "InputPersistance" "commonStrings") "SAVE")])
            let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "BasicPersitance" this #[l_name]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InputPersistance",
    javaName := "org.allbinary.game.input.InputPersistance",
    super := "BasicPersitance",
    interfaces := #[],
    isInterface := false,
    fields := #[("tsUtil", JV.null), ("hashtableUtil", JV.null)],
    statics := #[],
    methods := #[
        ("loadAll_1", #["AbeClientInformationInterface"], false, m_loadAll_1), 
        ("save_2", #["AbeClientInformationInterface", "ABHashtable"], false, m_save_2), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputPersistance


