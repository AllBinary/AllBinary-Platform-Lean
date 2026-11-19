-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NumberOnOwnGroupSequenceAIFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_artificialIntelligenceInterface : JV := (JR.arg jargs 1)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 2)
    let mut l_gameInput : JV := (JR.arg jargs 3)
    let mut l_integerArray : JV := (<- JR.getField (<- JR.callStatic "NumberInSameGroupSequence" "getInstance_0" #[]) "NUMBER_ON_SAME_TEAM_SEQUENCE")
    let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_integerArray))) then break
            let mut l_integerCanBeNull : JV := (<- JR.call l_hashtable "get_1" #[(<- JR.aget l_integerArray l_index)])
            if JR.truth (<- JR.eq l_integerCanBeNull JV.null) then
                break
            let _ := (<- JR.call l_list "add_1" #[l_integerCanBeNull])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Total AI Properties: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call l_list "size_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " == Total AI: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.alen l_artificialIntelligenceInterface)])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " + 1")])
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField l_commonStrings "GET_INSTANCE")])
    if JR.truth (<- JR.gt (<- JR.sub (<- JR.alen l_artificialIntelligenceInterface) (JV.int 1)) (<- JR.call l_list "size_0" #[])) then
        throw (<- JR.new "Exception" #[(JV.str "Not enough AI properties.")])
    if JR.truth (<- JR.lt (<- JR.sub (<- JR.alen l_artificialIntelligenceInterface) (JV.int 1)) (<- JR.call l_list "size_0" #[])) then
        throw (<- JR.new "Exception" #[(JV.str "Too Many AI properties.")])
    let mut l_numberOnSameTeam : JV := (<- JR.newArray "L" 1 #[(<- JR.call l_list "size_0" #[])])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_numberOnSameTeam))) then break
            JR.aset l_numberOnSameTeam l_index (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.new "NumberOnOwnGroupSequenceAI" #[l_numberOnSameTeam, l_artificialIntelligenceInterface, l_ownerLayerInterface, l_gameInput])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NumberOnOwnGroupSequenceAIFactory",
    javaName := "org.allbinary.game.ag.ai.NumberOnOwnGroupSequenceAIFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_4", #["ABHashtable", "ArtificialIntelligenceInterfaceArr", "AllBinaryLayer", "GameInput"], false, m_getInstance_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NumberOnOwnGroupSequenceAIFactory


