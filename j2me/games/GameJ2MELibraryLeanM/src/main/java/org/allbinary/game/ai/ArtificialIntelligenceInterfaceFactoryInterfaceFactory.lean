-- Generated Code Do Not Modify
-- package org.allbinary.game.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ArtificialIntelligenceInterfaceFactoryInterfaceFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ArtificialIntelligenceInterfaceFactoryInterfaceFactory" "SINGLETON" (<- JR.new "ArtificialIntelligenceInterfaceFactoryInterfaceFactory" #[])
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ArtificialIntelligenceInterfaceFactoryInterfaceFactory" "SINGLETON")


def m_getInstanceFromCollection_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_typeInteger : JV := (<- JR.call l_hashtable "get_1" #[(<- JR.getStatic "BasicAI" "ID")])
    let mut l_type : JV := (JR.asI (<- JR.call l_typeInteger "intValue_0" #[]))
    let mut l_artificialIntelligenceInterfaceFactoryInterface : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") (<- JR.sub l_type (JV.int 1)))
    return l_artificialIntelligenceInterfaceFactoryInterface


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_artificialIntelligenceInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_artificialIntelligenceInterfaceFactoryInterface])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ArtificialIntelligenceInterfaceFactoryInterfaceFactory",
    javaName := "org.allbinary.game.ai.ArtificialIntelligenceInterfaceFactoryInterfaceFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("clear_0", #[], false, m_clear_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstanceFromCollection_1", #["ABHashtable"], false, m_getInstanceFromCollection_1), 
        ("add_1", #["ArtificialIntelligenceInterfaceFactoryInterface"], false, m_add_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ArtificialIntelligenceInterfaceFactoryInterfaceFactory


