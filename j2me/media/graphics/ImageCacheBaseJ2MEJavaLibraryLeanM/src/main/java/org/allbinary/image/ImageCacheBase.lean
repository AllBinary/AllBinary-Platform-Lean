-- Generated Code Do Not Modify
-- package org.allbinary.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageCacheBase

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "imageFactory" (<- JR.callStatic "ImageFactory" "getInstance_0" #[])
    JR.setField this "hashtable" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    JR.setField this "SIZE" (JR.asI (JV.int 128))
    JR.setField this "widths" (<- JR.newArray "I" 1 #[(<- JR.getField this "SIZE")])
    JR.setField this "heights" (<- JR.newArray "I" 1 #[(<- JR.getField this "SIZE")])
    JR.setField this "listOfList" (<- JR.newArray "L" 1 #[(<- JR.getField this "SIZE")])
    JR.setField this "availableListOfList" (<- JR.newArray "L" 1 #[(<- JR.getField this "SIZE")])
    JR.setField this "volume" (JR.asI (JV.int 0))
    JR.setField this "nextIndex" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getImage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_resourceId : JV := (JR.arg jargs 0)
    let mut l_imageCanBeNull : JV := (<- JR.call (<- JR.getField this "hashtable") "get_1" #[l_resourceId])
    if JR.truth (<- JR.eq l_imageCanBeNull JV.null) then
        return (<- JR.getStatic "NullImage" "NULL_IMAGE")
    return l_imageCanBeNull


def m_releaseAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "listOfList")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "availableListOfList") l_index) "clear_0" #[])
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "availableListOfList") l_index) "addAllList_1" #[(<- JR.aget (<- JR.getField this "listOfList") l_index)])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "ImageCache: ")]) "append_1" #[(<- JR.call this "toString_0" #[])]) "toString_0" #[]), this, (JV.str "releaseAll")])
    pure JV.null


def m_getIndexWH_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_foundIndex : JV := (JR.asI (JV.int (-1)))
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "widths")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            if JR.truth (<- JR.cand (<- JR.eq (<- JR.aget (<- JR.getField this "widths") l_index) l_width) (do pure (<- JR.eq (<- JR.aget (<- JR.getField this "heights") l_index) l_height))) then
                l_foundIndex := (JR.asI l_index)
                return (JR.asI l_foundIndex)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (JR.asI l_foundIndex)


def m_getFromAvailable_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_foundIndex : JV := (JR.asI (JR.arg jargs 0))
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    if JR.truth (<- JR.ne l_foundIndex (JV.int (-1))) then
        if JR.truth (<- JR.gt (<- JR.call (<- JR.aget (<- JR.getField this "availableListOfList") l_foundIndex) "size_0" #[]) (JV.int 0)) then
            let mut l_list : JV := (<- JR.aget (<- JR.getField this "availableListOfList") l_foundIndex)
            return (<- JR.call l_list "removeAt_1" #[(<- JR.sub (<- JR.call l_list "size_0" #[]) (JV.int 1))])
        pure ()
    return (<- JR.getStatic "NullImage" "NULL_IMAGE")


def m_get_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_caller : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    throw (<- JR.new "RuntimeException" #[])


def m_getWithKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    throw (<- JR.new "RuntimeException" #[])


def m_createImage_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_caller : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    return (<- JR.call (<- JR.getField this "imageFactory") "createImage_3" #[l_caller, l_width, l_height])


def m_createImageFromInputStream_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    let mut l_inputStream : JV := (JR.arg jargs 1)
    return (<- JR.call (<- JR.getField this "imageFactory") "createImageFromInputStream_2" #[l_key, l_inputStream])


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.getField this "nextIndex") (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_width : JV := (JR.asI (<- JR.aget (<- JR.getField this "widths") l_index))
            let mut l_height : JV := (JR.asI (<- JR.aget (<- JR.getField this "heights") l_index))
            let mut l_total : JV := (JR.asI (<- JR.call (<- JR.aget (<- JR.getField this "listOfList") l_index) "size_0" #[]))
            let mut l_totalAvailable : JV := (JR.asI (<- JR.call (<- JR.aget (<- JR.getField this "availableListOfList") l_index) "size_0" #[]))
            let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " w: ")])
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_width])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " h: ")])
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_height])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "TOTAL_LABEL")])
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_total])
            let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " available: ")])
            let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_totalAvailable])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getHashtableP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "hashtable")


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    pure JV.null


def m_initProgress_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "listOfList")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            JR.aset (<- JR.getField this "listOfList") l_index (<- JR.new "BasicArrayListD" #[])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "availableListOfList")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            JR.aset (<- JR.getField this "availableListOfList") l_index (<- JR.new "BasicArrayListD" #[])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure this

initialize JR.registerClass {
    name := "ImageCacheBase",
    javaName := "org.allbinary.image.ImageCacheBase",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("imageFactory", JV.null), ("hashtable", JV.null), ("SIZE", (JV.int 0)), ("widths", JV.null), ("heights", JV.null), ("listOfList", JV.null), ("availableListOfList", JV.null), ("volume", (JV.int 0)), ("nextIndex", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getImage_1", #["Any"], false, m_getImage_1), 
        ("releaseAll_0", #[], false, m_releaseAll_0), 
        ("getIndexWH_2", #["int", "int"], false, m_getIndexWH_2), 
        ("getFromAvailable_3", #["int", "int", "int"], false, m_getFromAvailable_3), 
        ("get_3", #["String", "int", "int"], false, m_get_3), 
        ("getWithKey_1", #["Any"], false, m_getWithKey_1), 
        ("createImage_3", #["String", "int", "int"], false, m_createImage_3), 
        ("createImageFromInputStream_2", #["Any", "InputStream"], false, m_createImageFromInputStream_2), 
        ("toString_0", #[], false, m_toString_0), 
        ("getHashtableP_0", #[], false, m_getHashtableP_0), 
        ("init_1", #["Image"], false, m_init_1), 
        ("initProgress_0", #[], false, m_initProgress_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageCacheBase


