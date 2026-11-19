-- Generated Code Do Not Modify
-- package org.allbinary.game.resource
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ResourceRelativeRelationshipFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "basicArrayListUtil" (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[])
    JR.setField this "hashtable" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "setInitialized_1" #[(JV.bool true)])
    pure JV.null


def m_getResourceRelativeRelationshipList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_listCanBeNull : JV := (<- JR.call (<- JR.getField this "hashtable") "get_1" #[l_resource])
    if JR.truth (<- JR.eq l_listCanBeNull JV.null) then
        return (<- JR.call (<- JR.getField this "basicArrayListUtil") "getImmutableInstance_0" #[])
    return l_listCanBeNull


def m_addResourceRelativeRelationship_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resource : JV := (JR.arg jargs 0)
    let mut l_hardPoint : JV := (JR.arg jargs 1)
    let mut l_list : JV := (<- JR.call this "getResourceRelativeRelationshipList_1" #[l_resource])
    if JR.truth (<- JR.eq l_list (<- JR.call (<- JR.getField this "basicArrayListUtil") "getImmutableInstance_0" #[])) then
        l_list := (<- JR.new "BasicArrayListD" #[])
        pure ()
    let _ := (<- JR.call l_list "add_1" #[l_hardPoint])
    let _ := (<- JR.call (<- JR.getField this "hashtable") "put_2" #[l_resource, l_list])
    pure JV.null


def m_isLoadingLevel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    return (JV.bool false)


def m_isFeature_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_setInitialized_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_initialized : JV := (JR.arg jargs 0)
    JR.setField this "initialized" l_initialized
    pure JV.null


def m_isInitialized_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "initialized")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ResourceRelativeRelationshipFactory",
    javaName := "org.allbinary.game.resource.ResourceRelativeRelationshipFactory",
    super := "Object",
    interfaces := #["ResourceRelativeRelationshipFactoryInterface"],
    isInterface := false,
    fields := #[("basicArrayListUtil", JV.null), ("hashtable", JV.null), ("initialized", (JV.bool false))],
    statics := #[],
    methods := #[
        ("init_1", #["int"], false, m_init_1), 
        ("getResourceRelativeRelationshipList_1", #["String"], false, m_getResourceRelativeRelationshipList_1), 
        ("addResourceRelativeRelationship_2", #["String", "RelativeRelationship"], false, m_addResourceRelativeRelationship_2), 
        ("isLoadingLevel_1", #["int"], false, m_isLoadingLevel_1), 
        ("isFeature_0", #[], false, m_isFeature_0), 
        ("setInitialized_1", #["boolean"], false, m_setInitialized_1), 
        ("isInitialized_0", #[], false, m_isInitialized_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ResourceRelativeRelationshipFactory


