-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFeatureFormUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "meUtil" (<- JR.callStatic "MIDPUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameFeatureFormUtil" "instance" (<- JR.new "GameFeatureFormUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameFeatureFormUtil" "instance")


def m_getChoiceGroup_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_name : JV := (JR.arg jargs 1)
    let mut l_option : JV := (JR.asI (JR.arg jargs 2))
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let mut l_choiceGroup : JV := (<- JR.new "ChoiceGroup" #[l_name, l_option, (<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "getArrayInstance_0" #[]), (<- JR.getStatic "NullImage" "NULL_IMAGE_ARRAY")])
    let mut l_list : JV := (<- JR.call l_hashtable "get_1" #[l_name])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_ADD_CHOICE : JV := (JV.str ": Adding Choice: ")
    let mut l_GET_CHOICE_GROUP : JV := (JV.str "getChoiceGroup")
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_gameFeature : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_name]) "append_1" #[l_ADD_CHOICE]) "append_1" #[(<- JR.call l_gameFeature "toString_0" #[])]) "toString_0" #[]), this, l_GET_CHOICE_GROUP])
            let _ := (<- JR.call l_choiceGroup "append_2" #[(<- JR.call l_gameFeature "toString_0" #[]), (<- JR.getStatic "NullImage" "NULL_IMAGE")])
            if JR.truth (<- JR.call l_features "isFeature_1" #[l_gameFeature]) then
                let _ := (<- JR.call l_choiceGroup "setSelectedIndex_2" #[l_index, (JV.bool true)])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_choiceGroup


def m_addChoiceGroup_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_form : JV := (JR.arg jargs 0)
    let mut l_hashtable : JV := (JR.arg jargs 1)
    let mut l_option : JV := (JR.asI (JR.arg jargs 2))
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let mut l_ADDING_CHOICE_GROUP : JV := (JV.str "Adding Choice Group: ")
    let mut l_ADD_CHOICE_GROUP : JV := (JV.str "addChoiceGroup")
    let mut l_size : JV := (JR.asI (<- JR.call l_hashtable "size_0" #[]))
    let mut l_objectArray : JV := (<- JR.call (<- JR.callStatic "HashtableUtil" "getInstance_0" #[]) "getKeysAsArray_1" #[l_hashtable])
    let mut l_name : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_name := (<- JR.aget l_objectArray l_index)
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[l_ADDING_CHOICE_GROUP]) "append_1" #[l_name]) "toString_0" #[]), this, l_ADD_CHOICE_GROUP])
            let _ := (<- JR.call (<- JR.getField this "meUtil") "appendItem_2" #[l_form, (<- JR.call this "getChoiceGroup_3" #[l_hashtable, l_name, l_option])])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_setDefault_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_form : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (<- JR.call l_form "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_item : JV := (<- JR.call l_form "get_1" #[l_index])
            if JR.truth (<- JR.instanceOf l_item "GameConfigurationGauge") then
                let _ := (<- JR.call (<- JR.callStatic "GameConfigurationUtil" "getInstance_0" #[]) "setDefault_1" #[l_item])
                pure ()
            else
                if JR.truth (<- JR.instanceOf l_item "ChoiceGroup") then
                    let _ := (<- JR.call (<- JR.callStatic "GameFeatureUtil" "getInstance_0" #[]) "setDefault_1" #[l_item])
                    pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameFeatureFormUtil",
    javaName := "org.allbinary.game.configuration.feature.GameFeatureFormUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("meUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getChoiceGroup_3", #["ABHashtable", "String", "int"], false, m_getChoiceGroup_3), 
        ("addChoiceGroup_3", #["CommandForm", "ABHashtable", "int"], false, m_addChoiceGroup_3), 
        ("setDefault_1", #["CommandForm"], false, m_setDefault_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameFeatureFormUtil


