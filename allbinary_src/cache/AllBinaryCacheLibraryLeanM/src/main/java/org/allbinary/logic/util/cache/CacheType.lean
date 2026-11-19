-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CacheType

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getVendor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "vendor")


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "type")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "CacheType: Vendor: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getVendor_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Type: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getType_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vendor : JV := (JR.arg jargs 0)
    let mut l_type : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "vendor" l_vendor
    JR.setField this "type" l_type
    pure this

initialize JR.registerClass {
    name := "CacheType",
    javaName := "org.allbinary.logic.util.cache.CacheType",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("vendor", JV.null), ("type", JV.null)],
    statics := #[],
    methods := #[
        ("getVendor_0", #[], false, m_getVendor_0), 
        ("getType_0", #[], false, m_getType_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["String", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CacheType


