-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameConfigurationSingleton

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameConfigurationSingleton" "SINGLETON" (<- JR.new "GameConfigurationSingleton" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameConfigurationSingleton" "SINGLETON")


def m_getInstanceByName_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.getField this "hashtable") "get_1" #[l_name])


def m_getOptionsBasicArrayList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "list")


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameConfiguration : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_gameConfiguration])
    pure JV.null


def m_getHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "hashtable")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "hashtable" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    pure this

initialize JR.registerClass {
    name := "GameConfigurationSingleton",
    javaName := "org.allbinary.game.configuration.GameConfigurationSingleton",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null), ("hashtable", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstanceByName_1", #["String"], false, m_getInstanceByName_1), 
        ("getOptionsBasicArrayList_0", #[], false, m_getOptionsBasicArrayList_0), 
        ("add_1", #["GameConfiguration"], false, m_add_1), 
        ("getHashtable_0", #[], false, m_getHashtable_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameConfigurationSingleton


