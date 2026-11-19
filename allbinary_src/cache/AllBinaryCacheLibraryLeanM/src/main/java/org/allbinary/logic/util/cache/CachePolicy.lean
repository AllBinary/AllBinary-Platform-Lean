-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CachePolicy

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getMaxTime_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.getField this "maxTime"))


def m_setMaxTime_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxTime : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "maxTime" (JR.asJ l_maxTime)
    pure JV.null


def m_getMaxSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asJ (<- JR.getField this "maxSize"))


def m_setMaxSize_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxSize : JV := (JR.asJ (JR.arg jargs 0))
    JR.setField this "maxSize" (JR.asJ l_maxSize)
    pure JV.null


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_maxTime : JV := (JR.asJ (JR.arg jargs 1))
    let mut l_maxSize : JV := (JR.asJ (JR.arg jargs 2))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "name" l_name
    let _ := (<- JR.call this "setMaxTime_1" #[l_maxTime])
    let _ := (<- JR.call this "setMaxSize_1" #[l_maxSize])
    pure this

initialize JR.registerClass {
    name := "CachePolicy",
    javaName := "org.allbinary.logic.util.cache.CachePolicy",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null), ("maxTime", (JV.long 0)), ("maxSize", (JV.long 0))],
    statics := #[],
    methods := #[
        ("getMaxTime_0", #[], false, m_getMaxTime_0), 
        ("setMaxTime_1", #["long"], false, m_setMaxTime_1), 
        ("getMaxSize_0", #[], false, m_getMaxSize_0), 
        ("setMaxSize_1", #["long"], false, m_setMaxSize_1), 
        ("getName_0", #[], false, m_getName_0), 
        ("jinit_3", #["String", "long", "long"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CachePolicy


