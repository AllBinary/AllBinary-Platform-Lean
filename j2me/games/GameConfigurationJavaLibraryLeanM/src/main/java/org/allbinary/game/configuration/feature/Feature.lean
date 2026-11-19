-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Feature

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Feature" "hashtable" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getStatic "Feature" "hashtable") "get_1" #[l_name])


def m_add_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_gameFeature : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getStatic "Feature" "hashtable") "put_2" #[l_name, l_gameFeature])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call this "getName_0" #[])


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    let _ := (<- JR.callStatic "Feature" "add_2" #[l_name, this])
    let _ := (<- JR.call (<- JR.callStatic "ChangedGameFeatureListener" "getInstance_0" #[]) "add_1" #[this])
    pure this

initialize JR.registerClass {
    name := "Feature",
    javaName := "org.allbinary.game.configuration.feature.Feature",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null)],
    statics := #[("hashtable", JV.null)],
    methods := #[
        ("getInstance_1", #["String"], true, m_getInstance_1), 
        ("add_2", #["String", "Feature"], true, m_add_2), 
        ("toString_0", #[], false, m_toString_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Feature


