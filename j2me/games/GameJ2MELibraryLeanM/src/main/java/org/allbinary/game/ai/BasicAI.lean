-- Generated Code Do Not Modify
-- package org.allbinary.game.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicAI

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "gameKeyEventFactory" (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[])
    JR.setField this "lastKey" (JR.asI (JV.int (-1)))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicAI" "AI_VISITOR" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 2)])
    JR.setStatic "BasicAI" "ID" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 1)])
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_processKeyAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.ne l_key (JV.int (-1))) then
        let _ := (<- JR.call (<- JR.getField this "gameInput") "add_1" #[(<- JR.call (<- JR.getField this "gameKeyEventFactory") "getInstanceForKey_2" #[this, l_key])])
        pure ()
    pure JV.null


def m_setLastKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lastKey : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "lastKey" (JR.asI l_lastKey)
    pure JV.null


def m_getLastKey_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "lastKey"))


def m_getOwnerLayerInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "ownerLayerInterface")


def m_getGameInput_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameInput")


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.callInherited this "BasicAI" "getClass_0" #[]) "getName_0" #[])


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "NEW_LINE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " LastKey: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.callStatic "CanvasUtil" "getKeyName_1" #[(<- JR.call this "getLastKey_0" #[])])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getSourceId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 1))


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    let mut l_gameInput : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "ArtificialIntelligence" this #[]
    let _ <- jfields this
    JR.setField this "ownerLayerInterface" l_ownerLayerInterface
    JR.setField this "gameInput" l_gameInput
    pure this

initialize JR.registerClass {
    name := "BasicAI",
    javaName := "org.allbinary.game.ai.BasicAI",
    super := "ArtificialIntelligence",
    interfaces := #["GameKeyEventSourceInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("gameKeyEventFactory", JV.null), ("ownerLayerInterface", JV.null), ("gameInput", JV.null), ("lastKey", (JV.int 0))],
    statics := #[("AI_VISITOR", JV.null), ("ID", JV.null)],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("processKeyAI_1", #["int"], false, m_processKeyAI_1), 
        ("setLastKey_1", #["int"], false, m_setLastKey_1), 
        ("getLastKey_0", #[], false, m_getLastKey_0), 
        ("getOwnerLayerInterface_0", #[], false, m_getOwnerLayerInterface_0), 
        ("getGameInput_0", #[], false, m_getGameInput_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("getSourceId_0", #[], false, m_getSourceId_0), 
        ("jinit_2", #["AllBinaryLayer", "GameInput"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicAI


