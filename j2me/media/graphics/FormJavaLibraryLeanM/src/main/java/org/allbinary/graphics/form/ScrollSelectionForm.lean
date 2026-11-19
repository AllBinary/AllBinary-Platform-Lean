-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScrollSelectionForm

def jfields (this : JV) : JM JV := do
    JR.setField this "rectangleCollisionUtil" (<- JR.callStatic "RectangleCollisionUtil" "getInstance_0" #[])
    JR.setField this "scrollSelectionFormFormTypeItemIndexPaintable" (<- JR.callStatic "ItemIndexPaintable" "getInstance_0" #[])
    JR.setField this "formTypeItemIndexDx" (<- JR.callStatic "ItemIndexDx" "getInstance_0" #[])
    JR.setField this "paintable" (<- JR.callStatic "ItemPaintableFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ScrollSelectionForm" "NULL_SCROLL_SELECTION_FORM" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    JR.setStatic "ScrollSelectionForm" "NULL_SCROLL_SELECTION_HORIZONTAL_FORM" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_createForm_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_items : JV := (JR.arg jargs 1)
    let mut l_formPaintableFactory : JV := (JR.arg jargs 2)
    let mut l_border : JV := (JR.asI (JR.arg jargs 3))
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 4)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 5)
    try
        if JR.truth (<- JR.eq l_formPaintableFactory (<- JR.callStatic "ItemPaintableFactory" "getInstance_0" #[])) then
            return (<- JR.new "ScrollSelectionForm" #[l_title, l_items, l_formPaintableFactory, l_border, (JV.int (-3)), l_backgroundBasicColor, l_foregroundBasicColor])
        else
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
            let _ := (<- JR.call l_logUtil "putF_3" #[(<- JR.getField l_commonStrings "EXCEPTION"), l_logUtil, (<- JR.getField l_commonStrings "EXCEPTION")])
            return (<- JR.callStatic "PaintableForm" "getNullPaintableForm_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
            let _ := (<- JR.call l_logUtil "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), l_logUtil, (<- JR.getField l_commonStrings "EXCEPTION"), l_e])
            return (<- JR.callStatic "PaintableForm" "getNullPaintableForm_0" #[])
        else
            throw jex0
    pure JV.null


def m_getNullScrollSelectionForm_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "ScrollSelectionForm" "NULL_SCROLL_SELECTION_FORM") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "ScrollSelectionForm" "NULL_SCROLL_SELECTION_FORM" (<- JR.callStatic "ScrollSelectionForm" "createForm_6" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.newArray "L" 1 #[(JV.int 0)]), (<- JR.callStatic "ItemPaintableFactory" "getInstance_0" #[]), (JV.int 0), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")])
        pure ()
    return (<- JR.getStatic "ScrollSelectionForm" "NULL_SCROLL_SELECTION_FORM")


def m_getNullScrollSelectionFormHorizontal_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "ScrollSelectionForm" "NULL_SCROLL_SELECTION_HORIZONTAL_FORM") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "ScrollSelectionForm" "NULL_SCROLL_SELECTION_HORIZONTAL_FORM" (<- JR.callStatic "ScrollSelectionForm" "createForm_6" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.newArray "L" 1 #[(JV.int 0)]), (<- JR.callStatic "ItemPaintableFactory" "getInstance_0" #[]), (JV.int 0), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")])
        pure ()
    return (<- JR.getStatic "ScrollSelectionForm" "NULL_SCROLL_SELECTION_HORIZONTAL_FORM")


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    let mut l_formType : JV := (JR.arg jargs 1)
    let _ := (<- JR.callSuper "PaintableForm" this "init_2" #[l_rectangle, l_formType])
    let mut l_formTypeFactory : JV := (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "HORIZONTAL_FORM")) then
        JR.setField this "scrollSelectionFormFormTypeItemIndexPaintable" (<- JR.new "ScrollSelectionFormHorizontalPaintable" #[this])
        JR.setField this "formTypeItemIndexDx" (<- JR.new "ScrollSelectionFormHorizontalDx" #[this])
        pure ()
    else
        if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "VERTICAL_CENTER_FORM")) then
            JR.setField this "scrollSelectionFormFormTypeItemIndexPaintable" (<- JR.new "ScrollSelectionFormVerticalPaintable" #[this])
            JR.setField this "formTypeItemIndexDx" (<- JR.new "ScrollSelectionFormVericalDx" #[this])
            pure ()
        else
            if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "TEMP_HORIZONTAL_FORM")) then
                JR.setField this "scrollSelectionFormFormTypeItemIndexPaintable" (<- JR.new "ScrollSelectionFormTempHorizontalPaintable" #[this])
                JR.setField this "formTypeItemIndexDx" (<- JR.new "ScrollSelectionFormTempHorizontalDx" #[this])
                pure ()
            else
                if JR.truth (<- JR.eq l_formType (<- JR.getField l_formTypeFactory "NULL_FORM_TYPE")) then
                    pure ()
                else
                    throw (<- JR.new "Exception" #[(<- JR.getField l_formTypeFactory "UNK")])
    pure JV.null


def m_paintItemHorizontal_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_item : JV := (JR.arg jargs 2)
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let mut l_width : JV := (JR.asI (<- JR.call l_item "getMinimumWidth_0" #[]))
    return (JR.asI (<- JR.add (<- JR.add l_x l_width) (<- JR.getField this "border")))


def m_paintItemVertical_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_item : JV := (JR.arg jargs 2)
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let mut l_height : JV := (JR.asI (<- JR.call l_item "getMinimumHeight_0" #[]))
    return (JR.asI (<- JR.add (<- JR.add l_y l_height) (<- JR.getField this "border")))


def m_paintItemTempHorizontal_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_item : JV := (JR.arg jargs 2)
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    return (JR.asI (JV.int 0))


def m_getSelectedIndexForPointHorizontalDx_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (<- JR.sub l_dx (<- JR.getField this "halfBorder")))


def m_getSelectedIndexForPointVerticalDx_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (<- JR.add l_dx (<- JR.call this "getDiffX_1" #[l_item])))


def m_getSelectedIndexForPointTempHorizontalDx_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    return (JR.asI (<- JR.add l_dx (<- JR.call this "getDiffX_1" #[l_item])))


def m_append_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_item : JV := (JR.arg jargs 0)
    return (JR.asI (<- JR.callSuper "PaintableForm" this "append_1" #[l_item]))


def m_getSelectedItem_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (<- JR.call this "getSelectedIndexForPoint_1" #[l_point]))
    if JR.truth (<- JR.ne l_index (JV.int (-1))) then
        return (<- JR.callInherited this "ScrollSelectionForm" "get_1" #[l_index])
    else
        return (<- JR.callStatic "ABCustomItem" "getNullInstance_0" #[])
    pure JV.null


def m_getItemIndex_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_item : JV := (JR.arg jargs 0)
    let mut l_nextItem : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.callInherited this "ScrollSelectionForm" "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_nextItem := (<- JR.callInherited this "ScrollSelectionForm" "get_1" #[l_index])
            if JR.truth (<- JR.eq l_nextItem l_item) then
                return (JR.asI l_index)
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (JR.asI (JV.int (-1)))


def m_getStartIndex_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_getSelectedIndexForPoint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    let mut l_start : JV := (JR.asI (<- JR.call this "getStartIndex_0" #[]))
    let mut l_size : JV := (JR.asI (<- JR.callInherited this "ScrollSelectionForm" "size_0" #[]))
    let mut l_dx : JV := (JR.asI (<- JR.call this "getDx_0" #[]))
    let mut l_dy : JV := (JR.asI (<- JR.call this "getDy_0" #[]))
    let mut l_formTypeFactory : JV := (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[])
    let mut l_commonLabels : JV := (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonLabels "START_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_start])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonLabels "TOTAL_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_size])
    let _ := (<- JR.call (<- JR.getInherited this "ScrollSelectionForm" "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getStatic "ScrollSelectionForm" "GET_SELECTED_INDEX")])
    let mut l_item : JV := JV.null
    let mut l_width : JV := (JR.asI (JV.int 0))
    let mut l_height : JV := (JR.asI (JV.int 0))
    let mut l_diffX : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI l_start)
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_item := (<- JR.callInherited this "ScrollSelectionForm" "get_1" #[l_index])
            l_width := (JR.asI (<- JR.call l_item "getMinimumWidth_0" #[]))
            l_height := (JR.asI (<- JR.call l_item "getMinimumHeight_0" #[]))
            l_diffX := (JR.asI (<- JR.call (<- JR.getField this "formTypeItemIndexDx") "getDx_4" #[l_index, l_item, l_dx, l_dy]))
            if JR.truth (<- JR.call (<- JR.getField this "rectangleCollisionUtil") "isInside_6" #[l_diffX, (<- JR.sub l_dy (<- JR.getField this "halfBorder")), (<- JR.add (<- JR.add l_diffX l_width) (<- JR.getField this "border")), (<- JR.add (<- JR.add (<- JR.add l_dy l_height) (<- JR.getField this "halfBorder")) (JV.int 1)), (<- JR.call l_point "getX_0" #[]), (<- JR.call l_point "getY_0" #[])]) then
                let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonLabels "ITEM_LABEL")])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_item "getLabel_0" #[])])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonLabels "INDEX_LABEL")])
                let _ := (<- JR.call l_stringBuffer "appendint_1" #[l_index])
                let _ := (<- JR.call (<- JR.getInherited this "ScrollSelectionForm" "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getStatic "ScrollSelectionForm" "GET_SELECTED_INDEX")])
                return (JR.asI l_index)
            if JR.truth (<- JR.eq (<- JR.getInherited this "ScrollSelectionForm" "formType") (<- JR.getField l_formTypeFactory "HORIZONTAL_FORM")) then
                l_dx := (JR.asI (<- JR.add (<- JR.add l_dx l_width) (<- JR.getField this "border")))
                if JR.truth (<- JR.gt l_dx (<- JR.call (<- JR.getInherited this "ScrollSelectionForm" "rectangle") "getMaxX_0" #[])) then
                    break
                pure ()
            else
                if JR.truth (<- JR.eq (<- JR.getInherited this "ScrollSelectionForm" "formType") (<- JR.getField l_formTypeFactory "VERTICAL_CENTER_FORM")) then
                    l_dy := (JR.asI (<- JR.add (<- JR.add l_dy l_height) (<- JR.getField this "border")))
                    if JR.truth (<- JR.gt l_dy (<- JR.call (<- JR.getInherited this "ScrollSelectionForm" "rectangle") "getMaxY_0" #[])) then
                        break
                    pure ()
                else
                    if JR.truth (<- JR.eq (<- JR.getInherited this "ScrollSelectionForm" "formType") (<- JR.getField l_formTypeFactory "NULL_FORM_TYPE")) then
                        pure ()
                    else
                        throw (<- JR.new "Exception" #[(<- JR.getField l_formTypeFactory "UNK")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (JR.asI (JV.int (-1)))


def m_processInputKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyCode : JV := (JR.asI (JR.arg jargs 0))
    let mut l_formTypeFactory : JV := (<- JR.callStatic "FormTypeFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq (<- JR.callInherited this "ScrollSelectionForm" "size_0" #[]) (JV.int 0)) then
        return (JR.asI (JV.int (-1)))
    let mut l_index : JV := (JR.asI (<- JR.callInherited this "ScrollSelectionForm" "getSelectedIndex_0" #[]))
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.getInherited this "ScrollSelectionForm" "formType") (<- JR.getField l_formTypeFactory "HORIZONTAL_FORM")) (do pure (<- JR.eq (<- JR.getInherited this "ScrollSelectionForm" "formType") (<- JR.getField l_formTypeFactory "TEMP_HORIZONTAL_FORM")))) then
        if JR.truth (<- JR.eq l_gameKeyCode (<- JR.getStatic "Canvas" "RIGHT")) then
            l_index := (JR.inc l_index)
            pure ()
        else
            if JR.truth (<- JR.eq l_gameKeyCode (<- JR.getStatic "Canvas" "LEFT")) then
                l_index := (JR.dec l_index)
                pure ()
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.getInherited this "ScrollSelectionForm" "formType") (<- JR.getField l_formTypeFactory "VERTICAL_CENTER_FORM")) then
            if JR.truth (<- JR.eq l_gameKeyCode (<- JR.getStatic "Canvas" "DOWN")) then
                l_index := (JR.inc l_index)
                pure ()
            else
                if JR.truth (<- JR.eq l_gameKeyCode (<- JR.getStatic "Canvas" "UP")) then
                    l_index := (JR.dec l_index)
                    pure ()
            pure ()
        else
            if JR.truth (<- JR.eq (<- JR.getInherited this "ScrollSelectionForm" "formType") (<- JR.getField l_formTypeFactory "NULL_FORM_TYPE")) then
                pure ()
            else
                throw (<- JR.new "Exception" #[(<- JR.getField l_formTypeFactory "UNK")])
    let mut l_max : JV := (JR.asI (<- JR.sub (<- JR.callInherited this "ScrollSelectionForm" "size_0" #[]) (JV.int 1)))
    if JR.truth (<- JR.lt l_index (JV.int 0)) then
        let _ := (<- JR.callInherited this "ScrollSelectionForm" "setSelectedIndex_1" #[(JV.int 0)])
        pure ()
    else
        if JR.truth (<- JR.gt l_index l_max) then
            let _ := (<- JR.callInherited this "ScrollSelectionForm" "setSelectedIndex_1" #[l_max])
            pure ()
        else
            let _ := (<- JR.callInherited this "ScrollSelectionForm" "setSelectedIndex_1" #[l_index])
            pure ()
    return (JR.asI (JV.int (-1)))


def m_isInForm_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.getField this "rectangleCollisionUtil") "isInside_6" #[(<- JR.getInherited this "ScrollSelectionForm" "x"), (<- JR.sub (<- JR.getInherited this "ScrollSelectionForm" "y") (<- JR.getField this "halfBorder")), (<- JR.add (<- JR.call (<- JR.getInherited this "ScrollSelectionForm" "rectangle") "getMaxX_0" #[]) (<- JR.getField this "border")), (<- JR.add (<- JR.call (<- JR.getInherited this "ScrollSelectionForm" "rectangle") "getMaxY_0" #[]) (<- JR.getField this "border")), (<- JR.call l_point "getX_0" #[]), (<- JR.call l_point "getY_0" #[])]) then
        let _ := (<- JR.call (<- JR.getInherited this "ScrollSelectionForm" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_point])]) "append_1" #[(<- JR.getStatic "ScrollSelectionForm" "INSIDE_FORM")]) "toString_0" #[]), this, (<- JR.getStatic "ScrollSelectionForm" "IS_IN_FORM")])
        return (JV.bool true)
    return (JV.bool false)


def m_paintItem_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_item : JV := (JR.arg jargs 2)
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let _ := (<- JR.call l_item "paintXY_3" #[l_graphics, l_x, l_y])
    let mut l_width : JV := (JR.asI (<- JR.call l_item "getMinimumWidth_0" #[]))
    let mut l_height : JV := (JR.asI (<- JR.call l_item "getMinimumHeight_0" #[]))
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.call this "getButtonBasicColor_0" #[]) "intValue_0" #[])])
    let mut l_adjustedBorder : JV := (JR.asI (JV.int 3))
    let _ := (<- JR.call l_graphics "drawRect_4" #[(<- JR.sub (<- JR.sub l_x (<- JR.getField this "halfBorder")) l_adjustedBorder), (<- JR.sub (<- JR.sub l_y (<- JR.getField this "halfBorder")) l_adjustedBorder), (<- JR.add (<- JR.add l_width (<- JR.getField this "border")) (<- JR.getField this "adjustedExtraBorder")), (<- JR.add (<- JR.add l_height (<- JR.getField this "border")) (<- JR.getField this "adjustedExtraBorder"))])
    return (JR.asI (<- JR.call (<- JR.getField this "scrollSelectionFormFormTypeItemIndexPaintable") "paint_5" #[l_graphics, l_index, l_item, l_x, l_y]))


def m_paintUnselectedItem_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_item : JV := (JR.arg jargs 2)
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.call this "getButtonBasicColor_0" #[]) "intValue_0" #[])])
    let _ := (<- JR.call l_item "paintUnselected_3" #[l_graphics, l_x, l_y])
    return (JR.asI (<- JR.call (<- JR.getField this "scrollSelectionFormFormTypeItemIndexPaintable") "paint_5" #[l_graphics, l_index, l_item, l_x, l_y]))


def m_getDiffX_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_item : JV := (JR.arg jargs 0)
    return (JR.asI (JV.int 0))


def m_getDx_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getInherited this "ScrollSelectionForm" "x"))


def m_getDy_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getInherited this "ScrollSelectionForm" "y"))


def m_setButtonBasicColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_buttonBasicColor : JV := (JR.arg jargs 0)
    JR.setField this "buttonBasicColor" l_buttonBasicColor
    pure JV.null


def m_getButtonBasicColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "buttonBasicColor")


def jinit_7 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_items : JV := (JR.arg jargs 1)
    let mut l_formPaintableFactory : JV := (JR.arg jargs 2)
    let mut l_border : JV := (JR.asI (JR.arg jargs 3))
    let mut l_adjustedExtraBorder : JV := (JR.asI (JR.arg jargs 4))
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 5)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 6)
    let _ <- JR.superInit "PaintableForm" this #[l_title, l_items, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    JR.setField this "adjustedExtraBorder" (JR.asI l_adjustedExtraBorder)
    JR.setField this "buttonBasicColor" l_foregroundBasicColor
    JR.setField this "border" (JR.asI l_border)
    JR.setField this "halfBorder" (JR.asI ((<- JR.shr l_border (JV.int 1))))
    JR.setField this "paintable" (<- JR.call l_formPaintableFactory "getInstanceItemPaintable_1" #[this])
    pure this

initialize JR.registerClass {
    name := "ScrollSelectionForm",
    javaName := "org.allbinary.graphics.form.ScrollSelectionForm",
    super := "PaintableForm",
    interfaces := #[],
    isInterface := false,
    fields := #[("rectangleCollisionUtil", JV.null), ("border", (JV.int 0)), ("halfBorder", (JV.int 0)), ("buttonBasicColor", JV.null), ("scrollSelectionFormFormTypeItemIndexPaintable", JV.null), ("formTypeItemIndexDx", JV.null), ("paintable", JV.null), ("adjustedExtraBorder", (JV.int 0))],
    statics := #[("NULL_SCROLL_SELECTION_FORM", JV.null), ("NULL_SCROLL_SELECTION_HORIZONTAL_FORM", JV.null), ("INSIDE_FORM", (JV.str " inside form")), ("IS_IN_FORM", (JV.str "isInForm")), ("GET_SELECTED_INDEX", (JV.str "getSelectedIndexForPoint"))],
    methods := #[
        ("createForm_6", #["String", "ABCustomItemArr", "ItemPaintableFactory", "int", "BasicColor", "BasicColor"], true, m_createForm_6), 
        ("getNullScrollSelectionForm_0", #[], true, m_getNullScrollSelectionForm_0), 
        ("getNullScrollSelectionFormHorizontal_0", #[], true, m_getNullScrollSelectionFormHorizontal_0), 
        ("init_2", #["Rectangle", "FormType"], false, m_init_2), 
        ("paintItemHorizontal_5", #["Graphics", "int", "ABCustomItem", "int", "int"], false, m_paintItemHorizontal_5), 
        ("paintItemVertical_5", #["Graphics", "int", "ABCustomItem", "int", "int"], false, m_paintItemVertical_5), 
        ("paintItemTempHorizontal_5", #["Graphics", "int", "ABCustomItem", "int", "int"], false, m_paintItemTempHorizontal_5), 
        ("getSelectedIndexForPointHorizontalDx_4", #["int", "ABCustomItem", "int", "int"], false, m_getSelectedIndexForPointHorizontalDx_4), 
        ("getSelectedIndexForPointVerticalDx_4", #["int", "ABCustomItem", "int", "int"], false, m_getSelectedIndexForPointVerticalDx_4), 
        ("getSelectedIndexForPointTempHorizontalDx_4", #["int", "ABCustomItem", "int", "int"], false, m_getSelectedIndexForPointTempHorizontalDx_4), 
        ("append_1", #["ABCustomItem"], false, m_append_1), 
        ("getSelectedItem_1", #["GPoint"], false, m_getSelectedItem_1), 
        ("getItemIndex_1", #["ABCustomItem"], false, m_getItemIndex_1), 
        ("getStartIndex_0", #[], false, m_getStartIndex_0), 
        ("getSelectedIndexForPoint_1", #["GPoint"], false, m_getSelectedIndexForPoint_1), 
        ("processInputKey_1", #["int"], false, m_processInputKey_1), 
        ("isInForm_1", #["GPoint"], false, m_isInForm_1), 
        ("paintItem_5", #["Graphics", "int", "ABCustomItem", "int", "int"], false, m_paintItem_5), 
        ("paintUnselectedItem_5", #["Graphics", "int", "ABCustomItem", "int", "int"], false, m_paintUnselectedItem_5), 
        ("getDiffX_1", #["ABCustomItem"], false, m_getDiffX_1), 
        ("getDx_0", #[], false, m_getDx_0), 
        ("getDy_0", #[], false, m_getDy_0), 
        ("setButtonBasicColor_1", #["BasicColor"], false, m_setButtonBasicColor_1), 
        ("getButtonBasicColor_0", #[], false, m_getButtonBasicColor_0), 
        ("jinit_7", #["String", "ABCustomItemArr", "ItemPaintableFactory", "int", "int", "BasicColor", "BasicColor"], false, jinit_7)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScrollSelectionForm


