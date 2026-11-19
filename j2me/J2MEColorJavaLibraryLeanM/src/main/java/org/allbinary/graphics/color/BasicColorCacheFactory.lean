-- Generated Code Do Not Modify
-- package org.allbinary.graphics.color
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicColorCacheFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "hashtable" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicColorCacheFactory" "instance" (<- JR.new "BasicColorCacheFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicColorCacheFactory" "instance")


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicDefaultColor : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "hashtable") "put_2" #[(<- JR.new "Integer" #[(<- JR.call l_basicDefaultColor "intValue_0" #[])]), l_basicDefaultColor])
    pure JV.null


def m_getAndOrCreate_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_integer : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (<- JR.call (<- JR.getField this "hashtable") "get_1" #[l_integer])
    if JR.truth (<- JR.eq l_basicColor JV.null) then
        l_basicColor := (<- JR.call (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "createInstance_1" #[(<- JR.call l_integer "intValue_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "hashtable") "put_2" #[l_integer, l_basicColor])
        pure ()
    return l_basicColor


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicColorCacheFactory",
    javaName := "org.allbinary.graphics.color.BasicColorCacheFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("hashtable", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("add_1", #["BasicColor"], false, m_add_1), 
        ("getAndOrCreate_1", #["Integer"], false, m_getAndOrCreate_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicColorCacheFactory


