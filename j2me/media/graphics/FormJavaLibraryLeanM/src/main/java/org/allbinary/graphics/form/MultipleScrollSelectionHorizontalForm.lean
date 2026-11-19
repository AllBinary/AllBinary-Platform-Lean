-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MultipleScrollSelectionHorizontalForm

def jfields (this : JV) : JM JV := do
    JR.setField this "rectPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    JR.setField this "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable" (<- JR.callStatic "ItemIndexPaintable" "getInstance_0" #[])
    JR.setField this "backgroundColor" (JR.asI (<- JR.call (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "TRANSPARENT_GREY") "intValue_0" #[]))
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "logged" (JV.bool false)
    JR.setField this "fontHeight" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createForm_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_items : JV := (JR.arg jargs 1)
    let mut l_rectangle : JV := (JR.arg jargs 2)
    let mut l_formType : JV := (JR.arg jargs 3)
    let mut l_border : JV := (JR.asI (JR.arg jargs 4))
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 5)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 6)
    let mut l_scrollSelectionForm : JV := (<- JR.new "MultipleScrollSelectionHorizontalForm" #[l_title, l_items, (<- JR.callStatic "ItemPaintableFactory" "getInstance_0" #[]), l_border, l_backgroundBasicColor, l_foregroundBasicColor])
    let _ := (<- JR.call l_scrollSelectionForm "init_2" #[l_rectangle, l_formType])
    return l_scrollSelectionForm


def m_fillRect_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getField this "backgroundColor")])
    let _ := (<- JR.call l_graphics "fillRect_4" #[(<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "x"), (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "y"), (<- JR.call (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "rectangle") "getWidth_0" #[]), (<- JR.call (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "rectangle") "getHeight_0" #[])])
    pure JV.null


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    let mut l_formType : JV := (JR.arg jargs 1)
    let _ := (<- JR.callSuper "ScrollSelectionForm" this "init_2" #[l_rectangle, l_formType])
    let mut l_formTypeFactory : JV := (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "HORIZONTAL_FORM")) then
        JR.setField this "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable" (<- JR.new "MultipleScrollSelectionFormHorizontalPaintable" #[this])
        pure ()
    else
        if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "VERTICAL_CENTER_FORM")) then
            JR.setField this "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable" (<- JR.new "MultipleScrollSelectionFormVerticalPaintable" #[this])
            pure ()
        else
            if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "NULL_FORM_TYPE")) then
                pure ()
            else
                throw (<- JR.new "Exception" #[(<- JR.getField l_formTypeFactory "UNK")])
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "fontHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_paintHorizontal_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_item : JV := (JR.arg jargs 2)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    let mut l_dx2 : JV := (JR.asI (<- JR.add (<- JR.callInherited this "MultipleScrollSelectionHorizontalForm" "paintItem_5" #[l_graphics, l_index, l_item, l_dx, l_dy]) (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "border")))
    let _ := (<- JR.call (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "paintable") "paint_4" #[l_graphics, l_index, l_dx, l_dy])
    l_dx := (JR.asI l_dx2)
    return (JR.asI l_dx)


def m_paintVertical_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_item : JV := (JR.arg jargs 2)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    let _ := (<- JR.callInherited this "MultipleScrollSelectionHorizontalForm" "paintItem_5" #[l_graphics, l_index, l_item, l_dx, l_dy])
    let _ := (<- JR.call (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "paintable") "paint_4" #[l_graphics, l_index, l_dx, l_dy])
    return (JR.asI l_dx)


def m_getStartIndex_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callInherited this "MultipleScrollSelectionHorizontalForm" "getSelectedIndex_0" #[]))


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    try
        let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
        let mut l_start : JV := (JR.asI (<- JR.call this "getStartIndex_0" #[]))
        let mut l_size : JV := (JR.asI (<- JR.callInherited this "MultipleScrollSelectionHorizontalForm" "size_0" #[]))
        let mut l_dx : JV := (JR.asI (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "x"))
        let mut l_dy : JV := (JR.asI (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "y"))
        let _ := (<- JR.call (<- JR.getField this "rectPaintable") "paint_1" #[l_graphics])
        let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.callInherited this "MultipleScrollSelectionHorizontalForm" "getTitle_0" #[]), (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "x"), (<- JR.sub (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "y") (<- JR.getField this "fontHeight")), (JV.int 0)])
        let mut l_item : JV := JV.null
        if true then
            let mut l_index : JV := (JR.asI l_start)
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                l_item := (<- JR.callInherited this "MultipleScrollSelectionHorizontalForm" "get_1" #[l_index])
                if JR.truth (<- JR.ge l_dx (<- JR.call (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "rectangle") "getMaxX_0" #[])) then
                    if JR.truth (<- JR.getField this "logged") then
                        pure ()
                    else
                        JR.setField this "logged" (JV.bool true)
                        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "painting beyond maxx: ")]) "appendint_1" #[(<- JR.call (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "rectangle") "getMaxX_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "canvasStrings") "PAINT")])
                        pure ()
                    pure ()
                l_dx := (JR.asI (<- JR.call (<- JR.getField this "multipleScrollSelectionHorizontalFormTypeItemIndexPaintable") "paint_5" #[l_graphics, l_index, l_item, l_dx, l_dy]))
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.getField (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "MultipleScrollSelectionHorizontalForm" "canvasStrings") "PAINT")])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_items : JV := (JR.arg jargs 1)
    let mut l_formPaintableFactory : JV := (JR.arg jargs 2)
    let mut l_border : JV := (JR.asI (JR.arg jargs 3))
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 4)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "ScrollSelectionForm" this #[l_title, l_items, l_formPaintableFactory, l_border, (JV.int 3), l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    if JR.truth (<- JR.cor (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[]) (do pure (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]))) then
        pure ()
    else
        JR.setField this "rectPaintable" (<- JR.new "MultipleScrollSelectionFormRectPaintable" #[this])
        pure ()
    pure this

initialize JR.registerClass {
    name := "MultipleScrollSelectionHorizontalForm",
    javaName := "org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm",
    super := "ScrollSelectionForm",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("rectPaintable", JV.null), ("multipleScrollSelectionHorizontalFormTypeItemIndexPaintable", JV.null), ("backgroundColor", (JV.int 0)), ("myFontProcessor", JV.null), ("logged", (JV.bool false)), ("fontHeight", (JV.int 0))],
    statics := #[],
    methods := #[
        ("createForm_7", #["String", "ABCustomItemArr", "Rectangle", "FormType", "int", "BasicColor", "BasicColor"], true, m_createForm_7), 
        ("fillRect_1", #["Graphics"], false, m_fillRect_1), 
        ("init_2", #["Rectangle", "FormType"], false, m_init_2), 
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("paintHorizontal_5", #["Graphics", "int", "ABCustomItem", "int", "int"], false, m_paintHorizontal_5), 
        ("paintVertical_5", #["Graphics", "int", "ABCustomItem", "int", "int"], false, m_paintVertical_5), 
        ("getStartIndex_0", #[], false, m_getStartIndex_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_6", #["String", "ABCustomItemArr", "ItemPaintableFactory", "int", "BasicColor", "BasicColor"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MultipleScrollSelectionHorizontalForm


