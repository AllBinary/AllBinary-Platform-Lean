-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFeatureChoiceGroups

def jfields (this : JV) : JM JV := do
    JR.setField this "hashtable" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameFeatureChoiceGroups" "gameFeatureChoiceGroupsExclusive" (<- JR.new "GameFeatureChoiceGroups" #[])
    JR.setStatic "GameFeatureChoiceGroups" "gameFeatureChoiceGroupsMultiple" (<- JR.new "GameFeatureChoiceGroups" #[])
    pure JV.null


def m_getExclusiveInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameFeatureChoiceGroups" "gameFeatureChoiceGroupsExclusive")


def m_getMultipleInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameFeatureChoiceGroups" "gameFeatureChoiceGroupsMultiple")


def m_get_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "hashtable")


def m_add_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_list : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "hashtable") "put_2" #[l_name, l_list])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameFeatureChoiceGroups",
    javaName := "org.allbinary.game.configuration.feature.GameFeatureChoiceGroups",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("hashtable", JV.null)],
    statics := #[("gameFeatureChoiceGroupsExclusive", JV.null), ("gameFeatureChoiceGroupsMultiple", JV.null)],
    methods := #[
        ("getExclusiveInstance_0", #[], true, m_getExclusiveInstance_0), 
        ("getMultipleInstance_0", #[], true, m_getMultipleInstance_0), 
        ("get_0", #[], false, m_get_0), 
        ("add_2", #["String", "BasicArrayList"], false, m_add_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameFeatureChoiceGroups


