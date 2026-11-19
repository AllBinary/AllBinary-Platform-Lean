-- Generated Code Do Not Modify
-- package org.allbinary.graphics.color
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicColorUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "ZERO_ARRAY" (<- JR.newArray "L" 1 #[(JV.int 0)])
    JR.setField this "ALPHA" (JR.asI (JV.int (JR.wrapI 0xFF000000)))
    JR.setField this "isAlpha" (JV.bool true)
    JR.setField this "ffOpaque" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicColorUtil" "instance" (<- JR.new "BasicColorUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicColorUtil" "instance")


def m_getRGB_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_red : JV := (JR.asI (JR.arg jargs 0))
    let mut l_green : JV := (JR.asI (JR.arg jargs 1))
    let mut l_blue : JV := (JR.asI (JR.arg jargs 2))
    let mut l_value : JV := (JR.asI (JV.int 0))
    if JR.truth (<- JR.getField this "isAlpha") then
        if JR.truth (<- JR.getField this "ffOpaque") then
            l_value := (JR.asI (<- JR.getField this "ALPHA"))
            pure ()
        pure ()
    l_value := (JR.asI (<- JR.bor ((<- JR.shl l_red (JV.int 16))) l_value))
    l_value := (JR.asI (<- JR.bor ((<- JR.shl l_green (JV.int 8))) l_value))
    l_value := (JR.asI (<- JR.bor l_blue l_value))
    return (JR.asI l_value)


def m_getARGB_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alphaValue : JV := (JR.asI (JR.arg jargs 0))
    let mut l_r : JV := (JR.asI (JR.arg jargs 1))
    let mut l_g : JV := (JR.asI (JR.arg jargs 2))
    let mut l_b : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (<- JR.add (<- JR.add (<- JR.add ((<- JR.band ((<- JR.shl l_alphaValue (JV.int 24))) (<- JR.getField this "ALPHA"))) ((<- JR.band ((<- JR.shl l_r (JV.int 16))) (JV.int (JR.wrapI 0x00FF0000))))) ((<- JR.band ((<- JR.shl l_g (JV.int 8))) (JV.int (JR.wrapI 0x0000FF00))))) ((<- JR.band l_b (JV.int (JR.wrapI 0x000000FF))))))


def m_get_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alphaValue : JV := (JR.asI (JR.arg jargs 0))
    let mut l_color : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI (<- JR.add ((<- JR.band ((<- JR.shl l_alphaValue (JV.int 24))) (<- JR.getField this "ALPHA"))) l_color))


def m_invert_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_color : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (<- JR.bor ((<- JR.sub (JV.int (JR.wrapI 0xFFFFFF)) l_color)) (<- JR.getField this "ALPHA")))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicColorUtil",
    javaName := "org.allbinary.graphics.color.BasicColorUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("ZERO_ARRAY", JV.null), ("ALPHA", (JV.int 0)), ("isAlpha", (JV.bool false)), ("ffOpaque", (JV.bool false))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getRGB_3", #["int", "int", "int"], false, m_getRGB_3), 
        ("getARGB_4", #["int", "int", "int", "int"], false, m_getARGB_4), 
        ("get_2", #["int", "int"], false, m_get_2), 
        ("invert_1", #["int"], false, m_invert_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicColorUtil


