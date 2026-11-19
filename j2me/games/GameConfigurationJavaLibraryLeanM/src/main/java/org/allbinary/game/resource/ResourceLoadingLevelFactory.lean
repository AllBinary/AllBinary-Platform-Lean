-- Generated Code Do Not Modify
-- package org.allbinary.game.resource
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ResourceLoadingLevelFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "LOAD_EARLY" (<- JR.new "ResourceLoadingLevel" #[(JV.str "Load Early"), (<- JR.getStatic "Integer" "MAX_VALUE")])
    JR.setField this "LOAD_TOUCH" (<- JR.new "ResourceLoadingLevel" #[(JV.str "Load Touch"), (<- JR.sub (<- JR.getStatic "Integer" "MAX_VALUE") (JV.int 1))])
    JR.setField this "LOAD_GAME" (<- JR.new "ResourceLoadingLevel" #[(JV.str "Load Game"), (<- JR.sub (<- JR.getStatic "Integer" "MAX_VALUE") (JV.int 2))])
    JR.setField this "LEVEL" (<- JR.new "ResourceLoadingLevel" #[(JV.str "Level"), (<- JR.sub (<- JR.getStatic "Integer" "MAX_VALUE") (JV.int 99))])
    JR.setField this "MAX_LEVEL" (<- JR.new "ResourceLoadingLevel" #[(JV.str "Max Level"), (<- JR.sub (<- JR.getStatic "Integer" "MAX_VALUE") (JV.int 100))])
    JR.setField this "LOAD_ALL" (<- JR.new "ResourceLoadingLevel" #[(JV.str "Load All"), (JV.int (-1))])
    JR.setField this "RESOURCE_LOADING_LEVEL_ARRAY" (<- JR.arrayOf "L" #[(<- JR.getField this "LOAD_ALL"), (<- JR.getField this "MAX_LEVEL"), (<- JR.getField this "LEVEL"), (<- JR.getField this "LOAD_GAME"), (<- JR.getField this "LOAD_TOUCH"), (<- JR.getField this "LOAD_EARLY")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ResourceLoadingLevelFactory" "instance" (<- JR.new "ResourceLoadingLevelFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ResourceLoadingLevelFactory" "instance")


def m_getLevelString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (JR.arg jargs 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen (<- JR.getField this "RESOURCE_LOADING_LEVEL_ARRAY")))) then break
            if JR.truth (<- JR.eq l_level (<- JR.call (<- JR.aget (<- JR.getField this "RESOURCE_LOADING_LEVEL_ARRAY") l_index) "getLevel_0" #[])) then
                return (<- JR.call (<- JR.aget (<- JR.getField this "RESOURCE_LOADING_LEVEL_ARRAY") l_index) "getName_0" #[])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.callStatic "Integer" "toString_1" #[l_level])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ResourceLoadingLevelFactory",
    javaName := "org.allbinary.game.resource.ResourceLoadingLevelFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("LOAD_EARLY", JV.null), ("LOAD_TOUCH", JV.null), ("LOAD_GAME", JV.null), ("LEVEL", JV.null), ("MAX_LEVEL", JV.null), ("LOAD_ALL", JV.null), ("RESOURCE_LOADING_LEVEL_ARRAY", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getLevelString_1", #["int"], false, m_getLevelString_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ResourceLoadingLevelFactory


