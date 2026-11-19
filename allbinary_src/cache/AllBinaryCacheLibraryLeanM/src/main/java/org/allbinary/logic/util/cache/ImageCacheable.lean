-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageCacheable

def jfields (this : JV) : JM JV := do
    JR.setField this "name" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getKey_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageCacheable",
    javaName := "org.allbinary.logic.util.cache.ImageCacheable",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null)],
    statics := #[],
    methods := #[
        ("getKey_0", #[], false, m_getKey_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["String", "Any"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageCacheable


