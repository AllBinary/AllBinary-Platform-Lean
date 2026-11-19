-- Generated Code Do Not Modify
-- package org.allbinary.graphics.color
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SmallBasicColorCacheFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "SIZE" (JR.asI (JV.int 255))
    JR.setField this "INDEX_TO_COLOR" (<- JR.newArray "I" 1 #[(<- JR.getField this "SIZE")])
    JR.setField this "BASIC_COLOR_ARRAY" (<- JR.newArray "L" 1 #[(<- JR.getField this "SIZE")])
    JR.setField this "colorIndex" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SmallBasicColorCacheFactory" "instance" (<- JR.new "SmallBasicColorCacheFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SmallBasicColorCacheFactory" "instance")


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicDefaultColor : JV := (JR.arg jargs 0)
    JR.aset (<- JR.getField this "BASIC_COLOR_ARRAY") (<- JR.getField this "colorIndex") l_basicDefaultColor
    JR.aset (<- JR.getField this "INDEX_TO_COLOR") (<- JR.getField this "colorIndex") (JR.asI (<- JR.call l_basicDefaultColor "intValue_0" #[]))
    JR.setField this "colorIndex" (JR.inc (<- JR.getField this "colorIndex"))
    pure JV.null


def m_getAndOrCreate_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_colorAsInt : JV := (JR.asI (JR.arg jargs 0))
    let mut l_basicColor : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.getField this "SIZE"))) then break
            if JR.truth (<- JR.eq (<- JR.aget (<- JR.getField this "INDEX_TO_COLOR") l_index) l_colorAsInt) then
                return (<- JR.aget (<- JR.getField this "BASIC_COLOR_ARRAY") l_index)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let mut l_ALPHA_MASK : JV := (JR.asI (JV.int (JR.wrapI 0xFF000000)))
    l_basicColor := (<- JR.call (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "createInstanceAN_3" #[(<- JR.band l_colorAsInt l_ALPHA_MASK), (<- JR.band l_colorAsInt (JV.int (JR.wrapI 0x00FFFFFF))), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    let _ := (<- JR.call this "add_1" #[l_basicColor])
    return l_basicColor


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SmallBasicColorCacheFactory",
    javaName := "org.allbinary.graphics.color.SmallBasicColorCacheFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("SIZE", (JV.int 0)), ("INDEX_TO_COLOR", JV.null), ("BASIC_COLOR_ARRAY", JV.null), ("colorIndex", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("add_1", #["BasicColor"], false, m_add_1), 
        ("getAndOrCreate_1", #["int"], false, m_getAndOrCreate_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SmallBasicColorCacheFactory


