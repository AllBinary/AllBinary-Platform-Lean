-- Generated Code Do Not Modify
-- package org.allbinary.game.score
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HighScore

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "id"))


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_getScore_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.getField this "score"))


def m_getAsBytes_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_byteArrayOutputStream : JV := (<- JR.new "ByteArrayOutputStream" #[])
    let mut l_outputStream : JV := (<- JR.new "DataOutputStream" #[l_byteArrayOutputStream])
    let _ := (<- JR.call l_outputStream "writeUTF_1" #[(<- JR.call this "getName_0" #[])])
    let _ := (<- JR.call l_outputStream "writeLong_1" #[(<- JR.call this "getScore_0" #[])])
    return (<- JR.call l_byteArrayOutputStream "toByteArray_0" #[])


def m_getGameInfo_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameInfo")


def m_getScoreString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "scoreString")


def m_setName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    JR.setField this "name" l_name
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "name")]) "append_1" #[(<- JR.getField l_commonSeps "COLON")]) "appendlong_1" #[(<- JR.getField this "score")]) "append_1" #[(<- JR.getField l_commonSeps "FORWARD_SLASH")]) "append_1" #[(<- JR.getField this "scoreString")]) "toString_0" #[])


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    let mut l_name : JV := (JR.arg jargs 1)
    let mut l_gameInfo : JV := (JR.arg jargs 2)
    let mut l_score : JV := (JR.asJ (JR.arg jargs 3))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "id" (JR.asI l_id)
    JR.setField this "name" l_name
    JR.setField this "gameInfo" l_gameInfo
    JR.setField this "score" (JR.asJ l_score)
    JR.setField this "scoreString" (<- JR.callStatic "Long" "toString_1" #[(<- JR.getField this "score")])
    pure this

initialize JR.registerClass {
    name := "HighScore",
    javaName := "org.allbinary.game.score.HighScore",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("id", (JV.int 0)), ("name", JV.null), ("gameInfo", JV.null), ("score", (JV.long 0)), ("scoreString", JV.null)],
    statics := #[],
    methods := #[
        ("getId_0", #[], false, m_getId_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("getScore_0", #[], false, m_getScore_0), 
        ("getAsBytes_0", #[], false, m_getAsBytes_0), 
        ("getGameInfo_0", #[], false, m_getGameInfo_0), 
        ("getScoreString_0", #[], false, m_getScoreString_0), 
        ("setName_1", #["String"], false, m_setName_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_4", #["int", "String", "GameInfo", "long"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HighScore


