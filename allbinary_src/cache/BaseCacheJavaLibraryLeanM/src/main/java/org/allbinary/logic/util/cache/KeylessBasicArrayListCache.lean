-- Generated Code Do Not Modify
-- package org.allbinary.logic.util.cache
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_KeylessBasicArrayListCache

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "basicArrayListUtil" (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_get_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        if JR.truth (<- JR.ge (<- JR.getInherited this "KeylessBasicArrayListCache" "index") (<- JR.call (<- JR.getInherited this "KeylessBasicArrayListCache" "list") "size_0" #[])) then
            let _ := (<- JR.callInherited this "KeylessBasicArrayListCache" "addDefault_0" #[])
            pure ()
        let jtemp1 : JV := (<- JR.getInherited this "KeylessBasicArrayListCache" "index")
        JR.setInherited this "KeylessBasicArrayListCache" "index" (JR.inc jtemp1)
        let mut l_list : JV := (<- JR.callInherited this "KeylessBasicArrayListCache" "getAt_1" #[jtemp1])
        return l_list
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "KeylessBasicArrayListCache" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "KeylessBasicArrayListCache" "commonStrings") "GET"), l_e])
            return (<- JR.call (<- JR.getField this "basicArrayListUtil") "getImmutableInstance_0" #[])
        else
            throw jex0
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "IndexedBasicArrayListCache" this "clear_0" #[])
    let mut l_basicArrayList : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getInherited this "KeylessBasicArrayListCache" "list") "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_basicArrayList := ((<- JR.aget (<- JR.getField (<- JR.getInherited this "KeylessBasicArrayListCache" "list") "objectArray") l_index))
            let _ := (<- JR.call l_basicArrayList "clear_0" #[])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_log_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "S: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call (<- JR.getInherited this "KeylessBasicArrayListCache" "list") "size_0" #[])])
    let mut l_S_LABEL : JV := (JV.str " s: ")
    let mut l_basicArrayList : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getInherited this "KeylessBasicArrayListCache" "list") "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let _ := (<- JR.call l_stringBuffer "append_1" #[l_S_LABEL])
            l_basicArrayList := ((<- JR.aget (<- JR.getField (<- JR.getInherited this "KeylessBasicArrayListCache" "list") "objectArray") l_index))
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call l_basicArrayList "size_0" #[])])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "IndexedBasicArrayListCache" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "KeylessBasicArrayListCache",
    javaName := "org.allbinary.logic.util.cache.KeylessBasicArrayListCache",
    super := "IndexedBasicArrayListCache",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("basicArrayListUtil", JV.null)],
    statics := #[],
    methods := #[
        ("get_0", #[], false, m_get_0), 
        ("clear_0", #[], false, m_clear_0), 
        ("log_0", #[], false, m_log_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_KeylessBasicArrayListCache


