-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_IndexedBasicArrayListCache

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "size" (JR.asI (JV.int 0))
    JR.setField this "index" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createCache_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    let mut l_indexedBasicArrayListCache : JV := (<- JR.new "IndexedBasicArrayListCache" #[])
    let _ := (<- JR.call l_indexedBasicArrayListCache "init_1" #[l_size])
    return l_indexedBasicArrayListCache


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.lt (<- JR.getField this "size") l_size) then
        let _ := (<- JR.call (<- JR.getInherited this "IndexedBasicArrayListCache" "list") "ensureCapacity_1" #[l_size])
        if true then
            let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
            repeat
                if !(JR.truth (<- JR.ge l_index (<- JR.getField this "size"))) then break
                let _ := (<- JR.call this "addDefault_0" #[])
                l_index := (JR.dec l_index)
                pure ()
            pure ()
        JR.setField this "size" (JR.asI l_size)
        pure ()
    pure JV.null


def m_getAt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField (<- JR.getInherited this "IndexedBasicArrayListCache" "list") "objectArray") l_index)


def m_addDefault_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_addObject_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "IndexedBasicArrayListCache" "list") "add_1" #[l_anyType])
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheableInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "IndexedBasicArrayListCache" "list") "add_1" #[l_cacheableInterface])
    pure JV.null


def m_addArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheableInterfaces : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(JV.str "No Imple")])


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "index" (JR.asI (JV.int 0))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BaseBasicArrayListCache" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "IndexedBasicArrayListCache",
    javaName := "org.allbinary.logic.util.cache.IndexedBasicArrayListCache",
    super := "BaseBasicArrayListCache",
    interfaces := #["CacheInterface"],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("size", (JV.int 0)), ("index", (JV.int 0))],
    statics := #[],
    methods := #[
        ("createCache_1", #["int"], true, m_createCache_1), 
        ("init_1", #["int"], false, m_init_1), 
        ("getAt_1", #["int"], false, m_getAt_1), 
        ("addDefault_0", #[], false, m_addDefault_0), 
        ("addObject_1", #["Any"], false, m_addObject_1), 
        ("add_1", #["CacheableInterface"], false, m_add_1), 
        ("addArray_1", #["CacheableInterfaceArr"], false, m_addArray_1), 
        ("clear_0", #[], false, m_clear_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_IndexedBasicArrayListCache


