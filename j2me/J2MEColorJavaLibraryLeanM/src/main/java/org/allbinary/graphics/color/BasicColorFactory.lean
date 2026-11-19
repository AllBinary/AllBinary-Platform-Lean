-- Generated Code Do Not Modify
-- package org.allbinary.graphics.color
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicColorFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NULL_COLOR" (<- JR.call this "createInstanceARGB_5" #[(JV.int 255), (JV.int 255), (JV.int 255), (JV.int 255), (JV.str "null color")])
    JR.setField this "TAN" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0xE9D8B5))])
    JR.setField this "SKIN_PINK" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0xFDCECE))])
    JR.setField this "RED" (<- JR.call this "createInstanceAN_3" #[(<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ALPHA"), (JV.int (JR.wrapI 0xFF0000)), (JV.str "red")])
    JR.setField this "LIGHT_RED" (<- JR.call this "createInstanceAN_3" #[(<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ALPHA"), (JV.int (JR.wrapI 0xFFA0A0)), (JV.str "light red")])
    JR.setField this "DARK_GREEN" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0x00FF00))])
    JR.setField this "GREEN" (<- JR.call this "createInstanceAN_3" #[(<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ALPHA"), (JV.int (JR.wrapI 0x00DD00)), (JV.str "green")])
    JR.setField this "LIGHT_GREEN" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0x007700))])
    JR.setField this "PURPLE" (<- JR.call this "createInstanceAN_3" #[(<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ALPHA"), (JV.int (JR.wrapI 0x400040)), (JV.str "purple")])
    JR.setField this "BLUE" (<- JR.call this "createInstanceAN_3" #[(<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ALPHA"), (JV.int (JR.wrapI 0x0000FF)), (JV.str "blue")])
    JR.setField this "LIGHT_BLUE" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0x00aaff))])
    JR.setField this "VERY_LIGHT_BLUE" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0x000033))])
    JR.setField this "PUCE" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0xFF00AA))])
    JR.setField this "AQUA" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0x00FFFF))])
    JR.setField this "YELLOW" (<- JR.call this "createInstanceAN_3" #[(<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ALPHA"), (JV.int (JR.wrapI 0xFFFF00)), (JV.str "yellow")])
    JR.setField this "PINK" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0xFF00FF))])
    JR.setField this "BLACK" (<- JR.call this "createInstanceAN_3" #[(<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ALPHA"), (JV.int (JR.wrapI 0x000000)), (JV.str "black")])
    JR.setField this "GREY" (<- JR.call this "createInstanceAN_3" #[(<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ALPHA"), (JV.int (JR.wrapI 0xAAAAAA)), (JV.str "grey")])
    JR.setField this "LIGHT_GREY" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0xC0C0C0))])
    JR.setField this "DARK_GREY" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0x404040))])
    JR.setField this "ORANGE" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0xe07718))])
    JR.setField this "BROWN" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0x956B00))])
    JR.setField this "WHITE" (<- JR.call this "createInstance_1" #[(JV.int (JR.wrapI 0xFFFFFF))])
    JR.setField this "TRANSPARENT_COLOR" (<- JR.call this "createInstanceAN_3" #[(JV.int (JR.wrapI 0x00000000)), (JV.int (JR.wrapI 0x000000)), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    JR.setField this "TRANSPARENT_GREY" (<- JR.call this "createInstanceAN_3" #[(JV.int (JR.wrapI 0x52000000)), (JV.int (JR.wrapI 0xECECEC)), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    JR.setField this "TRANSPARENT_BLACK" (<- JR.call this "createInstanceAN_3" #[(JV.int (JR.wrapI 0x52000000)), (JV.int (JR.wrapI 0x000000)), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    JR.setField this "TRANSPARENT_RED" (<- JR.call this "createInstanceAN_3" #[(JV.int (JR.wrapI 0x52000000)), (JV.int (JR.wrapI 0xFF0000)), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])
    JR.setField this "CLEAR_COLOR" (<- JR.getField this "BLACK")
    JR.setField this "BORDER_COLOR" (<- JR.getField this "WHITE")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicColorFactory" "instance" (<- JR.new "BasicColorFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicColorFactory" "instance")


def m_createInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_value : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.new "BasicColor" #[(<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ALPHA"), l_value, (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])


def m_createInstanceA_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alphaValue : JV := (JR.asI (JR.arg jargs 0))
    let mut l_value : JV := (JR.asI (JR.arg jargs 1))
    return (<- JR.new "BasicColor" #[l_alphaValue, l_value, (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])


def m_createInstanceAN_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alphaValue : JV := (JR.asI (JR.arg jargs 0))
    let mut l_value : JV := (JR.asI (JR.arg jargs 1))
    let mut l_name : JV := (JR.arg jargs 2)
    return (<- JR.new "BasicColor" #[l_alphaValue, l_value, l_name])


def m_createInstanceARGB_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alphaValue : JV := (JR.asI (JR.arg jargs 0))
    let mut l_r : JV := (JR.asI (JR.arg jargs 1))
    let mut l_g : JV := (JR.asI (JR.arg jargs 2))
    let mut l_b : JV := (JR.asI (JR.arg jargs 3))
    let mut l_name : JV := (JR.arg jargs 4)
    let mut l_ALPHA_MASK : JV := (JR.asI (JV.int (JR.wrapI 0xFF000000)))
    return (<- JR.new "BasicColor" #[l_alphaValue, (<- JR.add (<- JR.add (<- JR.add ((<- JR.band ((<- JR.shl l_alphaValue (JV.int 24))) l_ALPHA_MASK)) ((<- JR.band ((<- JR.shl l_r (JV.int 16))) (JV.int (JR.wrapI 0x00FF0000))))) ((<- JR.band ((<- JR.shl l_g (JV.int 8))) (JV.int (JR.wrapI 0x0000FF00))))) ((<- JR.band l_b (JV.int (JR.wrapI 0x000000FF))))), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicColorFactory",
    javaName := "org.allbinary.graphics.color.BasicColorFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NULL_COLOR", JV.null), ("TAN", JV.null), ("SKIN_PINK", JV.null), ("RED", JV.null), ("LIGHT_RED", JV.null), ("DARK_GREEN", JV.null), ("GREEN", JV.null), ("LIGHT_GREEN", JV.null), ("PURPLE", JV.null), ("BLUE", JV.null), ("LIGHT_BLUE", JV.null), ("VERY_LIGHT_BLUE", JV.null), ("PUCE", JV.null), ("AQUA", JV.null), ("YELLOW", JV.null), ("PINK", JV.null), ("BLACK", JV.null), ("GREY", JV.null), ("LIGHT_GREY", JV.null), ("DARK_GREY", JV.null), ("ORANGE", JV.null), ("BROWN", JV.null), ("WHITE", JV.null), ("TRANSPARENT_COLOR", JV.null), ("TRANSPARENT_GREY", JV.null), ("TRANSPARENT_BLACK", JV.null), ("TRANSPARENT_RED", JV.null), ("CLEAR_COLOR", JV.null), ("BORDER_COLOR", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createInstance_1", #["int"], false, m_createInstance_1), 
        ("createInstanceA_2", #["int", "int"], false, m_createInstanceA_2), 
        ("createInstanceAN_3", #["int", "int", "String"], false, m_createInstanceAN_3), 
        ("createInstanceARGB_5", #["int", "int", "int", "int", "String"], false, m_createInstanceARGB_5), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicColorFactory


