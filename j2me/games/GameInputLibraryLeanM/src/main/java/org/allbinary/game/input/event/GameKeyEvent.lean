-- Generated Code Do Not Modify
-- package org.allbinary.game.input.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameKeyEvent

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameKeyEvent" "NONE" (<- JR.new "GameKeyEvent" #[(<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT"), (JV.int (-1)), (JV.int (-1)), (JV.int (-1)), (JV.int (-1)), (JV.bool false)])
    pure JV.null


def m_createEvent_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_sourceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_key : JV := (JR.asI (JR.arg jargs 2))
    return (<- JR.new "GameKeyEvent" #[l_anyType, l_sourceId, (JV.int 0), (JV.int 0), l_key, (JV.bool false)])


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "GameKeyEvent" "setSource_1" #[l_anyType])
    pure JV.null


def m_setRepeatEvents_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_repeated : JV := (JR.arg jargs 0)
    JR.setField this "repeated" l_repeated
    pure JV.null


def m_hasRepeatEvents_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "repeated")


def m_getKey_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "key"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "\nKey: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getKey_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getOriginalKey_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "originalKey"))


def m_setOriginalKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_originalKey : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "originalKey" (JR.asI l_originalKey)
    pure JV.null


def m_getGameActionKey_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "gameActionKey"))


def m_setGameActionKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameActionKey : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "gameActionKey" (JR.asI l_gameActionKey)
    pure JV.null


def m_getSourceId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "sourceId"))


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_sourceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_originalKey : JV := (JR.asI (JR.arg jargs 2))
    let mut l_gameActionKey : JV := (JR.asI (JR.arg jargs 3))
    let mut l_key : JV := (JR.asI (JR.arg jargs 4))
    let mut l_repeated : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_anyType]
    let _ <- jfields this
    JR.setField this "sourceId" (JR.asI l_sourceId)
    let _ := (<- JR.call this "setOriginalKey_1" #[l_originalKey])
    JR.setField this "key" (JR.asI l_key)
    let _ := (<- JR.call this "setGameActionKey_1" #[l_gameActionKey])
    let _ := (<- JR.call this "setRepeatEvents_1" #[l_repeated])
    pure this

initialize JR.registerClass {
    name := "GameKeyEvent",
    javaName := "org.allbinary.game.input.event.GameKeyEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("sourceId", (JV.int 0)), ("repeated", (JV.bool false)), ("key", (JV.int 0)), ("gameActionKey", (JV.int 0)), ("originalKey", (JV.int 0))],
    statics := #[("NONE", JV.null)],
    methods := #[
        ("createEvent_3", #["Any", "int", "int"], true, m_createEvent_3), 
        ("init_1", #["Any"], false, m_init_1), 
        ("setRepeatEvents_1", #["boolean"], false, m_setRepeatEvents_1), 
        ("hasRepeatEvents_0", #[], false, m_hasRepeatEvents_0), 
        ("getKey_0", #[], false, m_getKey_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("getOriginalKey_0", #[], false, m_getOriginalKey_0), 
        ("setOriginalKey_1", #["int"], false, m_setOriginalKey_1), 
        ("getGameActionKey_0", #[], false, m_getGameActionKey_0), 
        ("setGameActionKey_1", #["int"], false, m_setGameActionKey_1), 
        ("getSourceId_0", #[], false, m_getSourceId_0), 
        ("jinit_6", #["Any", "int", "int", "int", "int", "boolean"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameKeyEvent


