-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicArrayListPool

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "BasicArrayListPool" "buffers") "clear_0" #[])
    pure JV.null


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getInherited this "BasicArrayListPool" "buffers") "size_0" #[]))
    if JR.truth (<- JR.gt l_size (JV.int 0)) then
        return (<- JR.call (<- JR.getInherited this "BasicArrayListPool" "buffers") "removeAt_1" #[(<- JR.sub l_size (JV.int 1))])
    else
        return (<- JR.call (<- JR.getInherited this "BasicArrayListPool" "cacheableInterfaceFactoryInterface") "getInstance_1" #[l_key])
    pure JV.null


def m_addAll_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_usedList : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call l_usedList "size_0" #[]))
        repeat
            let jtemp1 : JV := (JR.dec l_index)
            l_index := jtemp1
            
            if !(JR.truth (<- JR.ge jtemp1 (JV.int 0))) then break
            let mut l_anyType : JV := (<- JR.aget (<- JR.getField l_usedList "objectArray") l_index)
            let _ := (<- JR.callInherited this "BasicArrayListPool" "add_1" #[l_anyType])
            pure ()
        pure ()
    let _ := (<- JR.call l_usedList "clear_0" #[])
    pure JV.null


def m_releaseUsedBackToPool_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_usedList : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call l_usedList "size_0" #[]))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            let mut l_list : JV := (<- JR.aget (<- JR.getField l_usedList "objectArray") l_index)
            if JR.truth (<- JR.eq (<- JR.call l_list "size_0" #[]) (JV.int 0)) then
                let _ := (<- JR.call l_usedList "removeAt_1" #[l_index])
                let _ := (<- JR.callInherited this "BasicArrayListPool" "add_1" #[l_list])
                pure ()
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cacheableInterfaceFactoryInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AbstractArrayListPool" this #[l_cacheableInterfaceFactoryInterface]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicArrayListPool",
    javaName := "org.allbinary.logic.util.cache.BasicArrayListPool",
    super := "AbstractArrayListPool",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("clear_0", #[], false, m_clear_0), 
        ("remove_1", #["Any"], false, m_remove_1), 
        ("addAll_1", #["BasicArrayList"], false, m_addAll_1), 
        ("releaseUsedBackToPool_1", #["BasicArrayList"], false, m_releaseUsedBackToPool_1), 
        ("jinit_1", #["CacheableInterfaceFactoryInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicArrayListPool


