-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputPersistance

def jfields (this : JV) : JM JV := do
    JR.setField this "hashtableUtil" (<- JR.callStatic "HashtableUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_loadAll_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_recordStore : JV := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.callInherited this "InputPersistance" "getRecordId_1" #[l_abeClientInformation]), (JV.bool true)])
    let mut l_recordEnum : JV := (<- JR.call l_recordStore "enumerateRecords_3" #[(<- JR.getStatic "NullRecordFilter" "NULL_RECORD_FILTER"), (<- JR.getStatic "NullRecordComparator" "NULL_RECORD_COMPARATOR"), (JV.bool true)])
    let mut l_hashtable : JV := JV.null
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    let mut l_id : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.call l_recordEnum "hasNextElement_0" #[])) then break
        l_id := (JR.asI (<- JR.call l_recordEnum "nextRecordId_0" #[]))
        let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
        let _ := (<- JR.call (<- JR.getInherited this "InputPersistance" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "LOADING_ID")]) "appendint_1" #[l_id]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "LOAD_ALL")])
        l_hashtable := (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
        let _ := (<- JR.call (<- JR.getInherited this "InputPersistance" "valueList") "add_1" #[l_hashtable])
        let _ := (<- JR.call (<- JR.getInherited this "InputPersistance" "idList") "add_1" #[(<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[l_id])])
        pure ()
    let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
    pure JV.null


def m_save_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_hashtable : JV := (JR.arg jargs 1)
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getInherited this "InputPersistance" "persistanceStrings") "NOT_SAVING")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_hashtable])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "InputPersistance" "commonStrings") "SAVE")])
    let mut l_recordStore : JV := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.callInherited this "InputPersistance" "getRecordId_1" #[l_abeClientInformation]), (JV.bool true)])
    let mut l_gameActionInput : JV := JV.null
    let mut l_list : JV := JV.null
    let mut l_input : JV := JV.null
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
                    l_input := (<- JR.call l_list "get_1" #[l_index2])
                    l_index2 := (JR.inc l_index2)
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
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
    fields := #[("hashtableUtil", JV.null)],
    statics := #[],
    methods := #[
        ("loadAll_1", #["AbeClientInformationInterface"], false, m_loadAll_1), 
        ("save_2", #["AbeClientInformationInterface", "ABHashtable"], false, m_save_2), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputPersistance


