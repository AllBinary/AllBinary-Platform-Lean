-- Generated Code Do Not Modify
-- package org.allbinary.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageCache

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "tsUtil" (<- JR.callStatic "TsUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageCache" "NULL_IMAGE_CACHE" (<- JR.new "ImageCache" #[])
    pure JV.null


def m_addListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_renderer : JV := (JR.arg jargs 0)
    pure JV.null


def m_getIndex_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    let mut l_gdResources : JV := (<- JR.callStatic "GDResources" "getInstance_0" #[])
    let mut l_resourceStringArray : JV := (<- JR.getField l_gdResources "resourceStringArray")
    let mut l_size : JV := (JR.asI (<- JR.alen l_resourceStringArray))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            if JR.truth (<- JR.eq (<- JR.aget l_resourceStringArray l_index) l_key) then
                return (JR.asI l_index)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getInherited this "ImageCache" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "unable to find key: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_key])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN")])
    throw (<- JR.new "RuntimeException" #[])


def m_get_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_caller : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_foundIndex : JV := (JR.asI (<- JR.callInherited this "ImageCache" "getIndexWH_2" #[l_width, l_height]))
    let mut l_image : JV := (<- JR.callInherited this "ImageCache" "getFromAvailable_3" #[l_foundIndex, l_width, l_height])
    if JR.truth (<- JR.eq l_image (<- JR.getStatic "NullImage" "NULL_IMAGE")) then
        JR.setInherited this "ImageCache" "volume" (JR.castLike (<- JR.getInherited this "ImageCache" "volume") (<- JR.add (<- JR.getInherited this "ImageCache" "volume") (<- JR.mul l_width l_height)))
        if JR.truth (<- JR.gt (<- JR.getInherited this "ImageCache" "volume") (JV.int 32000)) then
            let _ := (<- JR.call (<- JR.getField this "tsUtil") "gc_0" #[])
            JR.setInherited this "ImageCache" "volume" (JV.int 0)
            pure ()
        l_image := (<- JR.callInherited this "ImageCache" "createImage_3" #[l_caller, l_width, l_height])
        let mut l_widths : JV := (<- JR.getInherited this "ImageCache" "widths")
        if JR.truth (<- JR.gt (<- JR.getInherited this "ImageCache" "nextIndex") (<- JR.sub (<- JR.alen l_widths) (JV.int 1))) then
            if JR.truth (<- JR.eq l_foundIndex (JV.int (-1))) then
                l_foundIndex := (JR.asI (<- JR.getInherited this "ImageCache" "nextIndex"))
                JR.aset l_widths (<- JR.getInherited this "ImageCache" "nextIndex") (JR.asI l_width)
                JR.aset (<- JR.getInherited this "ImageCache" "heights") (<- JR.getInherited this "ImageCache" "nextIndex") l_height
                JR.setInherited this "ImageCache" "nextIndex" (JR.inc (<- JR.getInherited this "ImageCache" "nextIndex"))
                pure ()
            let _ := (<- JR.call (<- JR.aget (<- JR.getInherited this "ImageCache" "listOfList") l_foundIndex) "add_1" #[l_image])
            pure ()
        pure ()
    return l_image


def m_getWithKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_key : JV := (JR.arg jargs 0)
    let mut l_image : JV := (<- JR.callInherited this "ImageCache" "getImage_1" #[l_key])
    if JR.truth (<- JR.eq l_image (<- JR.getStatic "NullImage" "NULL_IMAGE")) then
        let mut l_resourceUtil : JV := (<- JR.callStatic "ResourceUtil" "getInstance_0" #[])
        let mut l_resourceInputStream : JV := (<- JR.call l_resourceUtil "getResourceAsStream_1" #[l_key])
        if JR.truth (<- JR.eq l_resourceInputStream JV.null) then
            throw (<- JR.new "RuntimeException" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Image resource is not available for key: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_key])]) "toString_0" #[])])
        try
            l_image := (<- JR.callInherited this "ImageCache" "createImageFromInputStream_2" #[l_key, l_resourceInputStream])
            pure ()
        catch jex0 =>
            if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
                let mut l_e : JV := jex0
                let _ := (<- JR.call (<- JR.getInherited this "ImageCache" "logUtil") "put_4" #[(JV.str "Exception: Trying Again After GC"), this, (<- JR.getField (<- JR.getField this "commonStrings") "GET"), l_e])
                let _ := (<- JR.call (<- JR.getInherited this "ImageCache" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "InputStream: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_resourceInputStream])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "GET")])
                let _ := (<- JR.call (<- JR.getField this "tsUtil") "gc_0" #[])
                let _ := (<- JR.call (<- JR.getField this "tsUtil") "gc_0" #[])
                let _ := (<- JR.call (<- JR.getInherited this "ImageCache" "logUtil") "putF_3" #[(<- JR.callStatic "Memory" "getInfo_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "GET")])
                let _ := (<- JR.callStatic "Thread" "sleep_1" #[(JV.int 100)])
                l_image := (<- JR.callInherited this "ImageCache" "createImageFromInputStream_2" #[l_key, l_resourceInputStream])
                pure ()
            else
                throw jex0
        if JR.truth (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) then
            pure ()
        else
            let _ := (<- JR.call l_resourceInputStream "close_0" #[])
            pure ()
        let _ := (<- JR.call (<- JR.getInherited this "ImageCache" "hashtable") "put_2" #[l_key, l_image])
        pure ()
    return l_image


def m_loadImageForAnimation_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_progressEnded_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_runTask_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_isLazy_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "ImageCacheBase" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ImageCache",
    javaName := "org.allbinary.image.ImageCache",
    super := "ImageCacheBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("tsUtil", JV.null)],
    statics := #[("NULL_IMAGE_CACHE", JV.null)],
    methods := #[
        ("addListener_1", #["Any"], false, m_addListener_1), 
        ("getIndex_1", #["Any"], false, m_getIndex_1), 
        ("get_3", #["String", "int", "int"], false, m_get_3), 
        ("getWithKey_1", #["Any"], false, m_getWithKey_1), 
        ("loadImageForAnimation_0", #[], false, m_loadImageForAnimation_0), 
        ("progressEnded_0", #[], false, m_progressEnded_0), 
        ("runTask_0", #[], false, m_runTask_0), 
        ("isLazy_0", #[], false, m_isLazy_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageCache


