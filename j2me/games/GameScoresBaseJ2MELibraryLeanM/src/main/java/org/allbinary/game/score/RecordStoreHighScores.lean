-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RecordStoreHighScores

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "platformRecordIdUtil" (<- JR.callStatic "PlatformRecordIdUtil" "getInstance_0" #[])
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "RECORD_ID" (JV.str "_HS")
    JR.setField this "MAXHIGHSCORES" (JR.asI (JV.int 100))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "RecordStoreHighScores" "hashTable" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    pure JV.null


def m_getInstance_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_gameInfo : JV := (JR.arg jargs 1)
    let mut l_highScoreName : JV := (JR.arg jargs 2)
    let mut l_heading : JV := (JR.arg jargs 3)
    let mut l_columnTwoHeading : JV := (JR.arg jargs 4)
    let mut l_recordComparatorInterface : JV := (JR.arg jargs 5)
    let mut l_highScoresCanBeNull : JV := (<- JR.call (<- JR.getStatic "RecordStoreHighScores" "hashTable") "get_1" #[l_highScoreName])
    if JR.truth (<- JR.eq l_highScoresCanBeNull JV.null) then
        let mut l_highScores : JV := (<- JR.new "RecordStoreHighScores" #[l_abeClientInformation, l_gameInfo, l_highScoreName, l_heading, l_columnTwoHeading, l_recordComparatorInterface])
        let _ := (<- JR.call (<- JR.getStatic "RecordStoreHighScores" "hashTable") "put_2" #[(<- JR.call l_highScores "getName_0" #[]), l_highScores])
        return l_highScores
    return l_highScoresCanBeNull


def m_getRecordId_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "platformRecordIdUtil") "getRecordId_2" #[l_abeClientInformation, (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "UNDERSCORE")]) "append_1" #[(<- JR.callInherited this "RecordStoreHighScores" "getName_0" #[])]) "append_1" #[(<- JR.getField this "RECORD_ID")]) "toString_0" #[])])


def m_addHighScore_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newHighScore : JV := (JR.arg jargs 0)
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Adding HighScore: ")]) "appendlong_1" #[(<- JR.call l_newHighScore "getScore_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD")])
        if JR.truth (<- JR.call this "isTooManyHighScores_0" #[]) then
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Removing Lowest Score"), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD")])
            let _ := (<- JR.call this "removeLowestHighScore_0" #[])
            pure ()
        l_recordStore := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.call this "getRecordId_1" #[(<- JR.getField this "abeClientInformation")]), (JV.bool true)])
        let mut l_highScoreBytes : JV := (<- JR.call l_newHighScore "getAsBytes_0" #[])
        let mut l_recordId : JV := (JR.asI (<- JR.call l_recordStore "addRecord_3" #[l_highScoreBytes, (JV.int 0), (<- JR.alen l_highScoreBytes)]))
        let _ := (<- JR.call this "load_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["RecordStoreException"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD"), l_e])
            pure ()
        else if (<- JR.isInstanceOfAny jex0 #["IOException"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD"), l_e])
            pure ()
        else if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD"), l_e])
            pure ()
        else
            throw jex0
    finally
        try
            if JR.truth (<- JR.ne l_recordStore JV.null) then
                let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(JV.str "Closing RecordStore"), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD")])
                let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
                pure ()
            pure ()
        catch jex1 =>
            if (<- JR.isInstanceOfAny jex1 #["RecordStoreException"]) then
                let mut l_e : JV := jex1
                let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD"), l_e])
                pure ()
            else
                throw jex1
        pure ()
    pure JV.null


def m_removeLowestHighScore_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        l_recordStore := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.call this "getRecordId_1" #[(<- JR.getField this "abeClientInformation")]), (JV.bool true)])
        let mut l_recordEnum : JV := (<- JR.call l_recordStore "enumerateRecords_3" #[(<- JR.getStatic "NullRecordFilter" "NULL_RECORD_FILTER"), (<- JR.getStatic "NullRecordComparator" "NULL_RECORD_COMPARATOR"), (JV.bool true)])
        let mut l_scoreComparator : JV := ((<- JR.getField this "recordComparatorInterface"))
        let mut l_bestHighScore : JV := (<- JR.new "HighScore" #[(JV.int (-1)), (JV.str "none"), (<- JR.getStatic "GameInfo" "NONE"), (<- JR.call l_scoreComparator "getBestScore_0" #[])])
        let mut l_recordAsBytes : JV := JV.null
        let mut l_byteArrayInputStream : JV := JV.null
        let mut l_inputStream : JV := JV.null
        repeat
            if !(JR.truth (<- JR.call l_recordEnum "hasNextElement_0" #[])) then break
            let mut l_id : JV := (JR.asI (<- JR.call l_recordEnum "nextRecordId_0" #[]))
            l_recordAsBytes := (<- JR.call (<- JR.getField this "tsUtil") "getRecord_2" #[l_recordStore, l_id])
            if JR.truth (<- JR.ne l_recordAsBytes JV.null) then
                l_byteArrayInputStream := (<- JR.new "ByteArrayInputStream" #[l_recordAsBytes])
                l_inputStream := (<- JR.new "DataInputStream" #[l_byteArrayInputStream])
                let mut l_name : JV := (<- JR.call l_inputStream "readUTF_0" #[])
                let mut l_nextScore : JV := (JR.asJ (<- JR.call l_inputStream "readLong_0" #[]))
                let mut l_nextCurrentHighScore : JV := (<- JR.new "HighScore" #[l_id, l_name, (<- JR.getStatic "GameInfo" "NONE"), l_nextScore])
                if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "recordComparatorInterface") "compare_2" #[(<- JR.call l_nextCurrentHighScore "getAsBytes_0" #[]), (<- JR.call l_bestHighScore "getAsBytes_0" #[])]) (<- JR.getStatic "RecordComparator" "FOLLOWS")) then
                    l_bestHighScore := l_nextCurrentHighScore
                    pure ()
                pure ()
            pure ()
        if JR.truth (<- JR.ne (<- JR.call l_bestHighScore "getId_0" #[]) (JV.int (-1))) then
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Removing Lowest HighScore: ")]) "appendlong_1" #[(<- JR.call l_bestHighScore "getScore_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD")])
            let _ := (<- JR.call l_recordStore "deleteRecord_1" #[(<- JR.call l_bestHighScore "getId_0" #[])])
            pure ()
        pure ()
    catch jex2 =>
        if (<- JR.isInstanceOfAny jex2 #["RecordStoreException"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (JV.str "removeLowestHighScore"), l_e])
            pure ()
        else if (<- JR.isInstanceOfAny jex2 #["Exception"]) then
            let mut l_e : JV := jex2
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (JV.str "removeLowestHighScore"), l_e])
            pure ()
        else
            throw jex2
    finally
        try
            if JR.truth (<- JR.ne l_recordStore JV.null) then
                let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(JV.str "Closing RecordStore"), this, (JV.str "removeLowestHighScore")])
                let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
                pure ()
            pure ()
        catch jex3 =>
            if (<- JR.isInstanceOfAny jex3 #["RecordStoreException"]) then
                let mut l_e : JV := jex3
                let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (JV.str "removeLowestHighScore"), l_e])
                pure ()
            else
                throw jex3
        pure ()
    pure JV.null


def m_load_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_recordStore : JV := (<- JR.getStatic "NullRecordStore" "NULL_RECORD_STORE")
    try
        l_recordStore := (<- JR.callStatic "RecordStore" "openRecordStore_2" #[(<- JR.call this "getRecordId_1" #[(<- JR.getField this "abeClientInformation")]), (JV.bool true)])
        let _ := (<- JR.callInherited this "RecordStoreHighScores" "setList_1" #[(<- JR.new "BasicArrayListD" #[])])
        let mut l_recordEnum : JV := (<- JR.call l_recordStore "enumerateRecords_3" #[(<- JR.getStatic "NullRecordFilter" "NULL_RECORD_FILTER"), (<- JR.getStatic "NullRecordComparator" "NULL_RECORD_COMPARATOR"), (JV.bool true)])
        let mut l_recordAsBytes : JV := JV.null
        let mut l_byteArrayInputStream : JV := JV.null
        let mut l_inputStream : JV := JV.null
        repeat
            if !(JR.truth (<- JR.call l_recordEnum "hasNextElement_0" #[])) then break
            let mut l_id : JV := (JR.asI (<- JR.call l_recordEnum "nextRecordId_0" #[]))
            l_recordAsBytes := (<- JR.call (<- JR.getField this "tsUtil") "getRecord_2" #[l_recordStore, l_id])
            if JR.truth (<- JR.ne l_recordAsBytes JV.null) then
                l_byteArrayInputStream := (<- JR.new "ByteArrayInputStream" #[l_recordAsBytes])
                l_inputStream := (<- JR.new "DataInputStream" #[l_byteArrayInputStream])
                try
                    let mut l_name : JV := (<- JR.call l_inputStream "readUTF_0" #[])
                    let mut l_score : JV := (JR.asJ (<- JR.call l_inputStream "readLong_0" #[]))
                    let mut l_newHighScore : JV := (<- JR.new "HighScore" #[l_id, l_name, (<- JR.getStatic "GameInfo" "NONE"), l_score])
                    let mut l_list : JV := (<- JR.callInherited this "RecordStoreHighScores" "getList_0" #[])
                    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
                    let mut l_lastIndex : JV := (JR.asI l_size)
                    if true then
                        let mut l_index : JV := (JR.asI (JV.int 0))
                        repeat
                            if !(JR.truth (<- JR.lt l_index l_size)) then break
                            let mut l_highScore : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
                            if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "recordComparatorInterface") "compare_2" #[(<- JR.call l_newHighScore "getAsBytes_0" #[]), (<- JR.call l_highScore "getAsBytes_0" #[])]) (<- JR.getStatic "RecordComparator" "PRECEDES")) then
                                l_lastIndex := (JR.asI l_index)
                                break
                            l_index := (JR.inc l_index)
                            pure ()
                        pure ()
                    let _ := (<- JR.call l_list "addAt_2" #[l_lastIndex, l_newHighScore])
                    pure ()
                catch jex6 =>
                    if (<- JR.isInstanceOfAny jex6 #["EOFException"]) then
                        let mut l_e : JV := jex6
                        let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(JV.str "EOF"), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD"), l_e])
                        throw l_e
                    else
                        throw jex6
                pure ()
            pure ()
        pure ()
    catch jex4 =>
        if (<- JR.isInstanceOfAny jex4 #["RecordStoreNotFoundException"]) then
            let mut l_e : JV := jex4
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(JV.str "No High Scores"), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD"), l_e])
            pure ()
        else if (<- JR.isInstanceOfAny jex4 #["RecordStoreException"]) then
            let mut l_e : JV := jex4
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "UNKNOWN"), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD"), l_e])
            pure ()
        else if (<- JR.isInstanceOfAny jex4 #["IOException"]) then
            let mut l_e : JV := jex4
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "UNKNOWN"), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD"), l_e])
            pure ()
        else if (<- JR.isInstanceOfAny jex4 #["Exception"]) then
            let mut l_e : JV := jex4
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "UNKNOWN"), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD"), l_e])
            pure ()
        else
            throw jex4
    finally
        try
            if JR.truth (<- JR.ne l_recordStore JV.null) then
                let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(JV.str "Closing RecordStore"), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD")])
                let _ := (<- JR.call l_recordStore "closeRecordStore_0" #[])
                pure ()
            pure ()
        catch jex5 =>
            if (<- JR.isInstanceOfAny jex5 #["RecordStoreException"]) then
                let mut l_e : JV := jex5
                let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "LOAD"), l_e])
                pure ()
            else
                throw jex5
        pure ()
    pure JV.null


def m_isTooManyHighScores_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.cand (<- JR.ne (<- JR.callInherited this "RecordStoreHighScores" "getList_0" #[]) JV.null) (do pure (<- JR.lt (<- JR.call (<- JR.callInherited this "RecordStoreHighScores" "getList_0" #[]) "size_0" #[]) (<- JR.getField this "MAXHIGHSCORES")))) then
        return (JV.bool false)
    else
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "HighScores RecordStore Max Reached: ")]) "appendint_1" #[(<- JR.getField this "MAXHIGHSCORES")]) "toString_0" #[]), this, (JV.str "isTooManyHighScores")])
        return (JV.bool true)
    pure JV.null


def m_isBestScore_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newHighScore : JV := (JR.arg jargs 0)
    try
        if JR.truth (JR.not (<- JR.call this "isTooManyHighScores_0" #[])) then
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Slot Available for a High Score"), this, (JV.str "isBestScore")])
            return (JV.bool true)
        else
            let mut l_list : JV := (<- JR.callInherited this "RecordStoreHighScores" "getList_0" #[])
            let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
            if true then
                let mut l_index : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index l_size)) then break
                    let mut l_highScore : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
                    if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "recordComparatorInterface") "compare_2" #[(<- JR.call l_newHighScore "getAsBytes_0" #[]), (<- JR.call l_highScore "getAsBytes_0" #[])]) (<- JR.getStatic "RecordComparator" "FOLLOWS")) then
                        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Obtained a High Score"), this, (JV.str "isBestScore")])
                        return (JV.bool true)
                    l_index := (JR.inc l_index)
                    pure ()
                pure ()
            pure ()
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "Not a High Score"), this, (JV.str "isBestScore")])
        return (JV.bool false)
    catch jex7 =>
        if (<- JR.isInstanceOfAny jex7 #["Exception"]) then
            let mut l_e : JV := jex7
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "ADD"), l_e])
            throw l_e
        else
            throw jex7
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.callSuper "HighScores" this "toString_0" #[])])
    let mut l_list : JV := (<- JR.callInherited this "RecordStoreHighScores" "getList_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_highScore : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_highScore "getScoreString_0" #[])])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COMMA_SEP")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let mut l_gameInfo : JV := (JR.arg jargs 1)
    let mut l_name : JV := (JR.arg jargs 2)
    let mut l_heading : JV := (JR.arg jargs 3)
    let mut l_columnTwoHeading : JV := (JR.arg jargs 4)
    let mut l_recordComparatorInterface : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "HighScores" this #[l_name, l_heading, l_columnTwoHeading]
    let _ <- jfields this
    JR.setField this "abeClientInformation" l_abeClientInformation
    JR.setField this "gameInfo" l_gameInfo
    JR.setField this "recordComparatorInterface" l_recordComparatorInterface
    let _ := (<- JR.call this "load_0" #[])
    pure this

initialize JR.registerClass {
    name := "RecordStoreHighScores",
    javaName := "org.allbinary.game.score.RecordStoreHighScores",
    super := "HighScores",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("platformRecordIdUtil", JV.null), ("tsUtil", JV.null), ("RECORD_ID", JV.null), ("MAXHIGHSCORES", (JV.int 0)), ("gameInfo", JV.null), ("abeClientInformation", JV.null), ("recordComparatorInterface", JV.null)],
    statics := #[("hashTable", JV.null)],
    methods := #[
        ("getInstance_6", #["AbeClientInformationInterface", "GameInfo", "String", "String", "String", "RecordComparator"], true, m_getInstance_6), 
        ("getRecordId_1", #["AbeClientInformationInterface"], false, m_getRecordId_1), 
        ("addHighScore_1", #["HighScore"], false, m_addHighScore_1), 
        ("removeLowestHighScore_0", #[], false, m_removeLowestHighScore_0), 
        ("load_0", #[], false, m_load_0), 
        ("isTooManyHighScores_0", #[], false, m_isTooManyHighScores_0), 
        ("isBestScore_1", #["HighScore"], false, m_isBestScore_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_6", #["AbeClientInformationInterface", "GameInfo", "String", "String", "String", "RecordComparator"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RecordStoreHighScores


