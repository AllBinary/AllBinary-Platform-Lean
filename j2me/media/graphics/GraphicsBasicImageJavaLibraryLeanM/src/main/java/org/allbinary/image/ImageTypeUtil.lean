-- Generated Code Do Not Modify
-- package org.allbinary.image
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ImageTypeUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "PNG" (JV.str "png")
    JR.setField this "JPG" (JV.str "jpg")
    JR.setField this "GIF" (JV.str "gif")
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ImageTypeUtil" "SINGLETON" (<- JR.new "ImageTypeUtil" #[])
    pure JV.null


def m_isSupported_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mediaFileType : JV := (JR.arg jargs 0)
    l_mediaFileType := (<- JR.call l_mediaFileType "toLowerCase_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getField this "list") "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_name : JV := (<- JR.call (<- JR.getField this "list") "get_1" #[l_index])
            if JR.truth (<- JR.eq (<- JR.call l_mediaFileType "compareTo_1" #[l_name]) (JV.int 0)) then
                return (JV.bool true)
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    return (JV.bool false)


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ImageTypeUtil" "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "JPG")])
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "GIF")])
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[(<- JR.getField this "PNG")])
    pure this

initialize JR.registerClass {
    name := "ImageTypeUtil",
    javaName := "org.allbinary.image.ImageTypeUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("PNG", JV.null), ("JPG", JV.null), ("GIF", JV.null), ("list", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("isSupported_1", #["String"], false, m_isSupported_1), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ImageTypeUtil


