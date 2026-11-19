-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LevelLayersFinder

def jfields (this : JV) : JM JV := do
    JR.setField this "enumerationUtil" (<- JR.callStatic "EnumerationUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LevelLayersFinder" "instance" (<- JR.new "LevelLayersFinder" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LevelLayersFinder" "instance")


def m_get_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    let mut l_list : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_enumeration : JV := (<- JR.call l_hashtable "keys_0" #[])
    let mut l_layerHashtableCanBeNull : JV := JV.null
    let mut l_integerCanBeNull : JV := JV.null
    let mut l_cachedIntegerCanBeNull : JV := JV.null
    repeat
        if !(JR.truth (<- JR.call (<- JR.getField this "enumerationUtil") "hasMoreElements_1" #[l_enumeration])) then break
        l_layerHashtableCanBeNull := (<- JR.call l_hashtable "get_1" #[(<- JR.call (<- JR.getField this "enumerationUtil") "nextElement_1" #[l_enumeration])])
        l_integerCanBeNull := (<- JR.call l_layerHashtableCanBeNull "get_1" #[(<- JR.getStatic "Layer" "ID")])
        l_cachedIntegerCanBeNull := (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(<- JR.call l_integerCanBeNull "intValue_0" #[])])
        if JR.truth (JR.not (<- JR.call l_list "contains_1" #[l_cachedIntegerCanBeNull])) then
            let _ := (<- JR.call l_list "add_1" #[l_cachedIntegerCanBeNull])
            pure ()
        pure ()
    return l_list


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LevelLayersFinder",
    javaName := "org.allbinary.game.layer.LevelLayersFinder",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("enumerationUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("get_1", #["ABHashtable"], false, m_get_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LevelLayersFinder


