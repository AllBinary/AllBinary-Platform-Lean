-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFeatureUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    JR.setField this "enumerationUtil" (<- JR.callStatic "EnumerationUtil" "getInstance_0" #[])
    JR.setField this "ON_GAME_FEATURE_CHANGE" (JV.str "onGameFeatureChange")
    JR.setField this "GAME_FEATURE_CHANGED" (JV.str "Game Feature Changed: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameFeatureUtil" "instance" (<- JR.new "GameFeatureUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameFeatureUtil" "instance")


def m_setDefault_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_choiceGroup : JV := (JR.arg jargs 0)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_METHOD_NAME : JV := (JV.str "setDefault")
    let mut l_SELECTED_ARRAY_RETURN : JV := (JV.str "selectedArray_return[")
    let mut l_SELECTED_SEP : JV := (JV.str "] = ")
    let mut l_selectedArray_return : JV := (<- JR.newArray "Z" 1 #[(<- JR.call l_choiceGroup "size_0" #[])])
    let mut l_total : JV := (JR.asI (<- JR.call l_choiceGroup "getSelectedFlags_1" #[l_selectedArray_return]))
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Multiple Total Choices: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_total])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, l_METHOD_NAME])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_selectedArray_return))) then break
            let mut l_isSelected : JV := (<- JR.aget l_selectedArray_return l_index)
            let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_SELECTED_ARRAY_RETURN])
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_index])
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_SELECTED_SEP])
            let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[l_isSelected])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, l_METHOD_NAME])
            let mut l_selectedChoiceLabel : JV := (<- JR.call l_choiceGroup "getString_1" #[l_index])
            let mut l_gameFeature : JV := (<- JR.callStatic "Feature" "getInstance_1" #[l_selectedChoiceLabel])
            if JR.truth (<- JR.call l_features "isDefault_1" #[l_gameFeature]) then
                let _ := (<- JR.call l_features "add_1" #[l_gameFeature])
                let _ := (<- JR.call l_choiceGroup "setSelectedIndex_2" #[l_index, (JV.bool true)])
                pure ()
            else
                let _ := (<- JR.call l_features "remove_1" #[l_gameFeature])
                let _ := (<- JR.call l_choiceGroup "setSelectedIndex_2" #[l_index, (JV.bool false)])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_updateMultiple_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_choiceGroup : JV := (JR.arg jargs 0)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_METHOD_NAME : JV := (JV.str "updateMultiple")
    let mut l_SELECTED_ARRAY_RETURN : JV := (JV.str "selectedArray_return[")
    let mut l_SELECTED_SEP : JV := (JV.str "] = ")
    let mut l_selectedArray_return : JV := (<- JR.newArray "Z" 1 #[(<- JR.call l_choiceGroup "size_0" #[])])
    let mut l_total : JV := (JR.asI (<- JR.call l_choiceGroup "getSelectedFlags_1" #[l_selectedArray_return]))
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Multiple Total Choices: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_total])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, l_METHOD_NAME])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_selectedArray_return))) then break
            let mut l_isSelected : JV := (<- JR.aget l_selectedArray_return l_index)
            let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_SELECTED_ARRAY_RETURN])
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_index])
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_SELECTED_SEP])
            let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[l_isSelected])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, l_METHOD_NAME])
            let mut l_selectedChoiceLabel : JV := (<- JR.call l_choiceGroup "getString_1" #[l_index])
            let mut l_gameFeature : JV := (<- JR.callStatic "Feature" "getInstance_1" #[l_selectedChoiceLabel])
            if JR.truth (<- JR.cand (JR.not l_isSelected) (do pure (<- JR.call l_features "isFeature_1" #[l_gameFeature]))) then
                let _ := (<- JR.call l_features "remove_1" #[l_gameFeature])
                pure ()
            else
                if JR.truth (<- JR.cand l_isSelected (do pure (JR.not (<- JR.call l_features "isFeature_1" #[l_gameFeature])))) then
                    let _ := (<- JR.call l_features "add_1" #[l_gameFeature])
                    pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_updateExclusiveForChoiceGroup_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_choiceGroup : JV := (JR.arg jargs 0)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_METHOD_NAME : JV := (JV.str "updateExclusive")
    let mut l_SELECTED_ARRAY_RETURN : JV := (JV.str "selectedArray_return[")
    let mut l_SELECTED_SEP : JV := (JV.str "] = ")
    let mut l_selectedArray_return : JV := (<- JR.newArray "Z" 1 #[(<- JR.call l_choiceGroup "size_0" #[])])
    let mut l_total : JV := (JR.asI (<- JR.call l_choiceGroup "getSelectedFlags_1" #[l_selectedArray_return]))
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Exclusive Total Choices: 1==")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_total])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, l_METHOD_NAME])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_selectedArray_return))) then break
            let mut l_isSelected : JV := (<- JR.aget l_selectedArray_return l_index)
            let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_SELECTED_ARRAY_RETURN])
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_index])
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_SELECTED_SEP])
            let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[l_isSelected])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, l_METHOD_NAME])
            if JR.truth l_isSelected then
                let mut l_selectedChoiceLabel : JV := (<- JR.call l_choiceGroup "getString_1" #[l_index])
                let _ := (<- JR.call this "updateExclusive_1" #[l_selectedChoiceLabel])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_isExclusive_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_itemLabel : JV := (JR.arg jargs 0)
    let mut l_enumeration : JV := (<- JR.call (<- JR.call (<- JR.callStatic "GameFeatureChoiceGroups" "getExclusiveInstance_0" #[]) "get_0" #[]) "keys_0" #[])
    let mut l_name : JV := JV.null
    repeat
        if !(JR.truth (<- JR.call (<- JR.getField this "enumerationUtil") "hasMoreElements_1" #[l_enumeration])) then break
        l_name := (<- JR.call (<- JR.getField this "enumerationUtil") "nextElement_1" #[l_enumeration])
        if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "tsUtil") "compareTo_2" #[l_itemLabel, l_name]) (JV.int 0)) then
            return (JV.bool true)
        pure ()
    return (JV.bool false)


def m_updateExclusive_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_selectedChoiceLabel : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "ITEM_LABEL")]) "append_1" #[l_selectedChoiceLabel]) "toString_0" #[]), this, (JV.str "updateExclusive")])
    let mut l_gameFeature : JV := (<- JR.callStatic "Feature" "getInstance_1" #[l_selectedChoiceLabel])
    let mut l_hashtable : JV := (<- JR.call (<- JR.callStatic "GameFeatureChoiceGroups" "getExclusiveInstance_0" #[]) "get_0" #[])
    let mut l_objectArray : JV := (<- JR.call (<- JR.callStatic "HashtableUtil" "getInstance_0" #[]) "getKeysAsArray_1" #[l_hashtable])
    let mut l_basicArrayList : JV := JV.null
    let mut l_anyType : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.alen l_objectArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_anyType := (<- JR.aget l_objectArray l_index)
            l_basicArrayList := (<- JR.call l_hashtable "get_1" #[l_anyType])
            let _ := (<- JR.call this "updateExclusiveList_2" #[l_gameFeature, l_basicArrayList])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_updateExclusiveList_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    let mut l_list : JV := (JR.arg jargs 1)
    if JR.truth (<- JR.call l_list "contains_1" #[l_gameFeature]) then
        let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
        let mut l_addIndex : JV := (JR.asI (<- JR.call l_list "indexOf_1" #[l_gameFeature]))
        let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                if JR.truth (<- JR.ne l_addIndex l_index) then
                    let _ := (<- JR.call l_features "remove_1" #[(<- JR.aget (<- JR.getField l_list "objectArray") l_index)])
                    pure ()
                else
                    let _ := (<- JR.call l_features "add_1" #[(<- JR.aget (<- JR.getField l_list "objectArray") l_index)])
                    pure ()
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameFeatureUtil",
    javaName := "org.allbinary.game.configuration.feature.GameFeatureUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("tsUtil", JV.null), ("enumerationUtil", JV.null), ("ON_GAME_FEATURE_CHANGE", JV.null), ("GAME_FEATURE_CHANGED", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setDefault_1", #["ChoiceGroup"], false, m_setDefault_1), 
        ("updateMultiple_1", #["ChoiceGroup"], false, m_updateMultiple_1), 
        ("updateExclusiveForChoiceGroup_1", #["ChoiceGroup"], false, m_updateExclusiveForChoiceGroup_1), 
        ("isExclusive_1", #["String"], false, m_isExclusive_1), 
        ("updateExclusive_1", #["String"], false, m_updateExclusive_1), 
        ("updateExclusiveList_2", #["Feature", "BasicArrayList"], false, m_updateExclusiveList_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameFeatureUtil


