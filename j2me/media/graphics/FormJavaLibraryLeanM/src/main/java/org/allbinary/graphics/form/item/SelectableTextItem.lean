-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SelectableTextItem

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isFocusable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "SelectableTextItem" "myFontProcessor") "process_1" #[l_graphics])
    let mut l_stringComponent : JV := (<- JR.callInherited this "SelectableTextItem" "getLabelStringComponent_0" #[])
    if JR.truth (<- JR.ne l_stringComponent JV.null) then
        let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.call l_stringComponent "getForegroundBasicColor_0" #[]) "intValue_0" #[])])
        pure ()
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.callInherited this "SelectableTextItem" "getLabel_0" #[]), (<- JR.add l_x (JV.int 2)), l_y, (JV.int 0)])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_label : JV := (JR.arg jargs 0)
    let mut l_layout : JV := (JR.asI (JR.arg jargs 1))
    let mut l_altText : JV := (JR.arg jargs 2)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 3)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "ABTextItem" this #[l_label, l_layout, l_altText, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SelectableTextItem",
    javaName := "org.allbinary.graphics.form.item.SelectableTextItem",
    super := "ABTextItem",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isFocusable_0", #[], false, m_isFocusable_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_5", #["String", "int", "String", "BasicColor", "BasicColor"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SelectableTextItem


