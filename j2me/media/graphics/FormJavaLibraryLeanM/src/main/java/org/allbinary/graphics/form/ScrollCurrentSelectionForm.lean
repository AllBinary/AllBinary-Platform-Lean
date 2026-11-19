-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScrollCurrentSelectionForm

def jfields (this : JV) : JM JV := do
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    JR.setField this "processor" (<- JR.callStatic "Processor" "getInstance_0" #[])
    JR.setField this "preItemIndexDx" (<- JR.callStatic "ItemIndexDx" "getInstance_0" #[])
    JR.setField this "maxWidth" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    let mut l_formType : JV := (JR.arg jargs 1)
    let _ := (<- JR.callSuper "ScrollSelectionForm" this "init_2" #[l_rectangle, l_formType])
    let mut l_formTypeFactory : JV := (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "TEMP_HORIZONTAL_FORM")) then
        JR.setField this "processor" (<- JR.new "TempHorizontalFormProcessor" #[this])
        JR.setField this "preItemIndexDx" (<- JR.new "TempHorizontalItemIndexDx" #[this])
        pure ()
    else
        if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "HORIZONTAL_FORM")) then
            JR.setField this "processor" (<- JR.new "HorizontalFormProcessor" #[this])
            JR.setField this "preItemIndexDx" (<- JR.new "HorizontalItemIndexDx" #[this])
            pure ()
        else
            if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "VERTICAL_CENTER_FORM")) then
                JR.setField this "processor" (<- JR.new "VerticalFormProcessor" #[this])
                JR.setField this "preItemIndexDx" (<- JR.new "VerticalItemIndexDx" #[this])
                pure ()
            else
                if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "NULL_FORM_TYPE")) then
                    pure ()
                else
                    let _ := (<- JR.call (<- JR.getInherited this "ScrollCurrentSelectionForm" "logUtil") "putF_3" #[(<- JR.getField l_formTypeFactory "UNK"), this, (<- JR.getField (<- JR.getInherited this "ScrollCurrentSelectionForm" "commonStrings") "INIT")])
                    pure ()
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_processTempHorizontalForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "dx" (JR.asI (<- JR.add (<- JR.sub (<- JR.getInherited this "ScrollCurrentSelectionForm" "x") (JV.int 30)) ((<- JR.shr (<- JR.call (<- JR.getInherited this "ScrollCurrentSelectionForm" "rectangle") "getWidth_0" #[]) (JV.int 1)))))
    JR.setField this "dy" (JR.asI (<- JR.getInherited this "ScrollCurrentSelectionForm" "y"))
    pure JV.null


def m_processHorizontalForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (<- JR.callInherited this "ScrollCurrentSelectionForm" "size_0" #[]))
    let mut l_totalWidth : JV := (JR.asI (JV.int 0))
    let mut l_item : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_item := (<- JR.callInherited this "ScrollCurrentSelectionForm" "get_1" #[l_index])
            l_totalWidth := (JR.castLike l_totalWidth (<- JR.add l_totalWidth (<- JR.add (<- JR.call l_item "getMinimumWidth_0" #[]) (<- JR.getInherited this "ScrollCurrentSelectionForm" "border"))))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "dx" (JR.asI (<- JR.sub (<- JR.add (<- JR.getInherited this "ScrollCurrentSelectionForm" "x") ((<- JR.shr (<- JR.call (<- JR.getInherited this "ScrollCurrentSelectionForm" "rectangle") "getWidth_0" #[]) (JV.int 1)))) ((<- JR.shr l_totalWidth (JV.int 1)))))
    JR.setField this "dy" (JR.asI (<- JR.add (<- JR.getInherited this "ScrollCurrentSelectionForm" "y") ((<- JR.shr (<- JR.call (<- JR.getInherited this "ScrollCurrentSelectionForm" "rectangle") "getHeight_0" #[]) (JV.int 1)))))
    if JR.truth (<- JR.getField this "moveForSmallScreen") then
        let mut l_maxTitleHeight : JV := (JR.asI (JV.int 175))
        if JR.truth (<- JR.lt (<- JR.getField this "dy") l_maxTitleHeight) then
            JR.setField this "dy" (JR.asI l_maxTitleHeight)
            pure ()
        pure ()
    pure JV.null


def m_processVerticalForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_totalHeight : JV := (JR.asI (JV.int 0))
    let mut l_size : JV := (JR.asI (<- JR.callInherited this "ScrollCurrentSelectionForm" "size_0" #[]))
    let mut l_item2 : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_item2 := (<- JR.callInherited this "ScrollCurrentSelectionForm" "get_1" #[l_index])
            if JR.truth (<- JR.lt (<- JR.getField this "maxWidth") (<- JR.call l_item2 "getMinimumWidth_0" #[])) then
                JR.setField this "maxWidth" (JR.asI (<- JR.call l_item2 "getMinimumWidth_0" #[]))
                pure ()
            l_totalHeight := (JR.castLike l_totalHeight (<- JR.add l_totalHeight (<- JR.add (<- JR.call l_item2 "getMinimumHeight_0" #[]) (<- JR.getInherited this "ScrollCurrentSelectionForm" "border"))))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "dx" (JR.asI ((<- JR.div ((<- JR.sub (<- JR.call (<- JR.getInherited this "ScrollCurrentSelectionForm" "rectangle") "getWidth_0" #[]) (<- JR.getField this "maxWidth"))) (JV.int 2))))
    if JR.truth (<- JR.gt (<- JR.callInherited this "ScrollCurrentSelectionForm" "size_0" #[]) (JV.int 0)) then
        JR.setField this "dy" (JR.asI (<- JR.add (<- JR.getInherited this "ScrollCurrentSelectionForm" "y") ((<- JR.div ((<- JR.sub (<- JR.call (<- JR.getInherited this "ScrollCurrentSelectionForm" "rectangle") "getHeight_0" #[]) l_totalHeight)) (JV.int 2)))))
        if JR.truth (<- JR.getField this "moveForSmallScreen") then
            let mut l_maxTitleHeight : JV := (JR.asI (JV.int 175))
            if JR.truth (<- JR.lt (<- JR.getField this "dy") l_maxTitleHeight) then
                JR.setField this "dy" (JR.asI l_maxTitleHeight)
                pure ()
            pure ()
        pure ()
    else
        JR.setField this "dy" (JR.asI (<- JR.getInherited this "ScrollCurrentSelectionForm" "y"))
        pure ()
    pure JV.null


def m_getXTempHorizontalForm_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (<- JR.call this "getDiffX_1" #[l_item]))


def m_getXHorizontalForm_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (JV.int 0))


def m_getXVerticalForm_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (<- JR.add (<- JR.call this "getDiffX_1" #[l_item]) (<- JR.getInherited this "ScrollCurrentSelectionForm" "halfBorder")))


def m_getDiffX_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_item : JV := (JR.arg jargs 0)
    return (JR.asI ((<- JR.shr ((<- JR.sub (<- JR.getField this "maxWidth") (<- JR.call l_item "getMinimumWidth_0" #[]))) (JV.int 1))))


def m_getDx_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "dx"))


def m_getDy_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "dy"))


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    try
        let _ := (<- JR.call (<- JR.getField this "processor") "process_0" #[])
        let mut l_delta : JV := (JR.asI (JV.int 0))
        let mut l_deltaX : JV := (JR.asI (<- JR.call this "getDx_0" #[]))
        let mut l_deltaY : JV := (JR.asI (<- JR.call this "getDy_0" #[]))
        let mut l_size : JV := (JR.asI (<- JR.callInherited this "ScrollCurrentSelectionForm" "size_0" #[]))
        let mut l_formTypeFactory : JV := (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[])
        let mut l_item : JV := JV.null
        if true then
            let mut l_index : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index l_size)) then break
                l_item := (<- JR.callInherited this "ScrollCurrentSelectionForm" "get_1" #[l_index])
                let mut l_diffX : JV := (JR.asI (<- JR.call (<- JR.getField this "preItemIndexDx") "getDx_4" #[l_index, l_item, (<- JR.getField this "dx"), (<- JR.getField this "dy")]))
                if JR.truth (<- JR.eq l_index (<- JR.callInherited this "ScrollCurrentSelectionForm" "getSelectedIndex_0" #[])) then
                    l_delta := (JR.asI (<- JR.callInherited this "ScrollCurrentSelectionForm" "paintItem_5" #[l_graphics, l_index, l_item, (<- JR.add l_deltaX l_diffX), l_deltaY]))
                    let _ := (<- JR.call (<- JR.getInherited this "ScrollCurrentSelectionForm" "paintable") "paint_4" #[l_graphics, l_index, (<- JR.add l_deltaX l_diffX), l_deltaY])
                    pure ()
                else
                    l_delta := (JR.asI (<- JR.callInherited this "ScrollCurrentSelectionForm" "paintUnselectedItem_5" #[l_graphics, l_index, l_item, (<- JR.add l_deltaX l_diffX), l_deltaY]))
                    let _ := (<- JR.call (<- JR.getInherited this "ScrollCurrentSelectionForm" "paintable") "paint_4" #[l_graphics, l_index, (<- JR.add l_deltaX l_diffX), l_deltaY])
                    pure ()
                if JR.truth (<- JR.eq (<- JR.getInherited this "ScrollCurrentSelectionForm" "formType") (<- JR.getField l_formTypeFactory "TEMP_HORIZONTAL_FORM")) then
                    pure ()
                else
                    if JR.truth (<- JR.eq (<- JR.getInherited this "ScrollCurrentSelectionForm" "formType") (<- JR.getField l_formTypeFactory "HORIZONTAL_FORM")) then
                        l_deltaX := (JR.asI l_delta)
                        pure ()
                    else
                        if JR.truth (<- JR.eq (<- JR.getInherited this "ScrollCurrentSelectionForm" "formType") (<- JR.getField l_formTypeFactory "VERTICAL_CENTER_FORM")) then
                            l_deltaY := (JR.asI l_delta)
                            pure ()
                        else
                            throw (<- JR.new "Exception" #[(<- JR.getField l_formTypeFactory "UNK")])
                l_index := (JR.inc l_index)
                pure ()
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "ScrollCurrentSelectionForm" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "ScrollCurrentSelectionForm" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "ScrollCurrentSelectionForm" "canvasStrings") "PAINT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_items : JV := (JR.arg jargs 1)
    let mut l_formPaintableFactory : JV := (JR.arg jargs 2)
    let mut l_border : JV := (JR.asI (JR.arg jargs 3))
    let mut l_adjustedExtraBorder : JV := (JR.asI (JR.arg jargs 4))
    let mut l_moveForSmallScreen : JV := (JR.arg jargs 5)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 6)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 7)
    let _ <- JR.superInit "ScrollSelectionForm" this #[l_title, l_items, l_formPaintableFactory, l_border, l_adjustedExtraBorder, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    JR.setField this "moveForSmallScreen" l_moveForSmallScreen
    pure this

initialize JR.registerClass {
    name := "ScrollCurrentSelectionForm",
    javaName := "org.allbinary.graphics.form.ScrollCurrentSelectionForm",
    super := "ScrollSelectionForm",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("moveForSmallScreen", (JV.bool false)), ("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null), ("processor", JV.null), ("preItemIndexDx", JV.null), ("dx", (JV.int 0)), ("dy", (JV.int 0)), ("maxWidth", (JV.int 0))],
    statics := #[],
    methods := #[
        ("init_2", #["Rectangle", "FormType"], false, m_init_2), 
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("processTempHorizontalForm_0", #[], false, m_processTempHorizontalForm_0), 
        ("processHorizontalForm_0", #[], false, m_processHorizontalForm_0), 
        ("processVerticalForm_0", #[], false, m_processVerticalForm_0), 
        ("getXTempHorizontalForm_4", #["int", "ABCustomItem", "int", "int"], false, m_getXTempHorizontalForm_4), 
        ("getXHorizontalForm_4", #["int", "ABCustomItem", "int", "int"], false, m_getXHorizontalForm_4), 
        ("getXVerticalForm_4", #["int", "ABCustomItem", "int", "int"], false, m_getXVerticalForm_4), 
        ("getDiffX_1", #["ABCustomItem"], false, m_getDiffX_1), 
        ("getDx_0", #[], false, m_getDx_0), 
        ("getDy_0", #[], false, m_getDy_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_8", #["String", "ABCustomItemArr", "ItemPaintableFactory", "int", "int", "boolean", "BasicColor", "BasicColor"], false, jinit_8)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScrollCurrentSelectionForm


