-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PaintableForm

def jfields (this : JV) : JM JV := do
    JR.setField this "canvasStrings" (<- JR.callStatic "CanvasStrings" "getInstance_0" #[])
    JR.setField this "rectangle" (<- JR.getStatic "RectangleFactory" "SINGLETON")
    JR.setField this "formType" (<- JR.getField (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[]) "NULL_FORM_TYPE")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PaintableForm" "NULL_PAINTABLE_FORM" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getNullPaintableForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "PaintableForm" "NULL_PAINTABLE_FORM") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "PaintableForm" "NULL_PAINTABLE_FORM" (<- JR.new "PaintableForm" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.newArray "L" 1 #[(JV.int 0)]), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")])
        pure ()
    return (<- JR.getStatic "PaintableForm" "NULL_PAINTABLE_FORM")


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    let mut l_formType : JV := (JR.arg jargs 1)
    JR.setField this "rectangle" l_rectangle
    let mut l_point : JV := (<- JR.call (<- JR.getField this "rectangle") "getPoint_0" #[])
    JR.setField this "x" (JR.asI (<- JR.call l_point "getX_0" #[]))
    JR.setField this "y" (JR.asI (<- JR.call l_point "getY_0" #[]))
    JR.setField this "formType" l_formType
    pure JV.null


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "rectangle") "getWidth_0" #[]))


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_items : JV := (JR.arg jargs 1)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 2)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "ABCustomForm" this #[l_title, l_items, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    let _ := (<- JR.callInherited this "PaintableForm" "setSelectedIndex_1" #[(JV.int 0)])
    pure this

initialize JR.registerClass {
    name := "PaintableForm",
    javaName := "org.allbinary.graphics.form.PaintableForm",
    super := "ABCustomForm",
    interfaces := #[],
    isInterface := false,
    fields := #[("canvasStrings", JV.null), ("rectangle", JV.null), ("x", (JV.int 0)), ("y", (JV.int 0)), ("formType", JV.null)],
    statics := #[("NULL_PAINTABLE_FORM", JV.null)],
    methods := #[
        ("getNullPaintableForm_0", #[], true, m_getNullPaintableForm_0), 
        ("init_2", #["Rectangle", "FormType"], false, m_init_2), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("jinit_4", #["String", "ABCustomItemArr", "BasicColor", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PaintableForm


