-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ABCustomGaugeItem

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ABCustomGaugeItem" "NULL_GAUGE_ITEM" (<- JR.new "ABCustomGaugeItem" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (JV.int 1), (JV.int 0), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    let mut l_maxValue : JV := (JR.asI (JR.arg jargs 1))
    let mut l_initialValue : JV := (JR.asI (JR.arg jargs 2))
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 3)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "ABCustomItem" this #[l_label, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ABCustomGaugeItem",
    javaName := "org.allbinary.graphics.form.item.ABCustomGaugeItem",
    super := "ABCustomItem",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_GAUGE_ITEM", JV.null)],
    methods := #[
        ("jinit_5", #["String", "int", "int", "BasicColor", "BasicColor"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ABCustomGaugeItem


