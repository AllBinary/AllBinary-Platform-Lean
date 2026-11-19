-- Generated Code Do Not Modify
-- package org.allbinary.game.paint.help
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicInputMappingHelpPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "NONE" (<- JR.getField (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[]) "NONE")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_update_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_selectedGameKey : JV := (JR.arg jargs 0)
    let mut l_selectedInput : JV := (JR.arg jargs 1)
    let mut l_gameKeyMapping : JV := (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[])
    let mut l_EQUAL : JV := (JV.str " = ")
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "gameInputMappingArray")))
    let mut l_keyInfo : JV := (<- JR.newArray "L" 1 #[l_size])
    let mut l_gameInputMapping : JV := JV.null
    let mut l_gameKey : JV := JV.null
    let mut l_list : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_gameInputMapping := (<- JR.aget (<- JR.getField this "gameInputMappingArray") l_index)
            l_gameKey := (<- JR.call l_gameInputMapping "getGameKey_0" #[])
            l_list := (<- JR.call (<- JR.call l_gameKeyMapping "getInputMapping_0" #[]) "getMappedInput_1" #[l_gameKey])
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            JR.aset l_keyInfo l_index (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.call l_gameInputMapping "getName_0" #[])]) "append_1" #[l_EQUAL]) "append_1" #[(<- JR.call this "get_1" #[l_list])]) "toString_0" #[])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.callSuper "HelpPaintable" this "setInputInfoP_1" #[l_keyInfo])
    pure JV.null


def m_get_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyList : JV := (JR.arg jargs 0)
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_AND : JV := (JV.str "and ")
    let mut l_key : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call l_keyList "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_key := (<- JR.aget (<- JR.getField l_keyList "objectArray") l_index)
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_key "getName_0" #[])])
            if JR.truth (<- JR.lt (<- JR.add l_index (JV.int 1)) (<- JR.call l_keyList "size_0" #[])) then
                if JR.truth (<- JR.eq (<- JR.call l_keyList "size_0" #[]) (JV.int 2)) then
                    let _ := (<- JR.call (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[l_AND])
                    pure ()
                else
                    if JR.truth (<- JR.eq (<- JR.add l_index (JV.int 2)) (<- JR.call l_keyList "size_0" #[])) then
                        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA_SEP")])
                        let _ := (<- JR.call l_stringBuffer "append_1" #[l_AND])
                        pure ()
                    else
                        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COMMA_SEP")])
                        pure ()
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInputMappingArray : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "HelpPaintable" this #[(JV.str "Help Screen"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK"), l_basicColor]
    let _ <- jfields this
    JR.setField this "gameInputMappingArray" l_gameInputMappingArray
    let _ := (<- JR.call this "update_2" #[(<- JR.getField this "NONE"), (<- JR.getField this "NONE")])
    pure this

initialize JR.registerClass {
    name := "BasicInputMappingHelpPaintable",
    javaName := "org.allbinary.game.paint.help.BasicInputMappingHelpPaintable",
    super := "HelpPaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("gameInputMappingArray", JV.null), ("NONE", JV.null)],
    statics := #[],
    methods := #[
        ("update_2", #["GameKey", "Input"], false, m_update_2), 
        ("get_1", #["BasicArrayList"], false, m_get_1), 
        ("jinit_2", #["GameInputMappingArr", "BasicColor"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicInputMappingHelpPaintable


