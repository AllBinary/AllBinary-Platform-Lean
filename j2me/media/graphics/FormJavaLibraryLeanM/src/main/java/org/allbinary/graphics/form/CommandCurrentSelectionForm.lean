-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommandCurrentSelectionForm

def jfields (this : JV) : JM JV := do
    JR.setField this "selectedAnimationArray" (<- JR.newArray "L" 1 #[(JV.int 16)])
    JR.setField this "unSelectedAnimationArray" (<- JR.newArray "L" 1 #[(JV.int 16)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "updateAll_2" #[l_graphics, (<- JR.callInherited this "CommandCurrentSelectionForm" "getAllitems_0" #[])])
    let _ := (<- JR.callSuper "ScrollCurrentSelectionForm" this "updateMeasurement_1" #[l_graphics])
    pure JV.null


def m_initAnimations_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_nullAnimation : JV := (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "selectedAnimationArray")))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            JR.aset (<- JR.getField this "selectedAnimationArray") l_index l_nullAnimation
            pure ()
        pure ()
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "unSelectedAnimationArray")))
        repeat
            let jtemp3 : JV := (JR.dec l_index)
            l_index := jtemp3
            
            if !(JR.truth (<- JR.ge jtemp3 (JV.int 0))) then break
            JR.aset (<- JR.getField this "unSelectedAnimationArray") l_index l_nullAnimation
            pure ()
        pure ()
    pure JV.null


def m_addAll_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_items : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen l_items))
        repeat
            let jtemp4 : JV := (JR.dec l_index)
            l_index := jtemp4
            
            if !(JR.truth (<- JR.ge jtemp4 (JV.int 0))) then break
            let _ := (<- JR.call this "addAt_2" #[l_index, (<- JR.aget l_items l_index)])
            pure ()
        pure ()
    pure JV.null


def m_addAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let mut l_basicColorFactory : JV := (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[])
    let mut l_buttonColor : JV := (<- JR.getField l_basicColorFactory "TRANSPARENT_GREY")
    let mut l_selectedButtonColor : JV := (<- JR.getField l_basicColorFactory "TRANSPARENT_RED")
    let mut l_width : JV := (JR.asI (<- JR.call l_item "getMinimumWidth_0" #[]))
    let mut l_height : JV := (JR.asI (<- JR.call l_item "getMinimumHeight_0" #[]))
    let mut l_adjustedBorder : JV := (JR.asI (JV.int 3))
    let mut l_offset : JV := (JR.asI (JR.neg ((<- JR.add (<- JR.getInherited this "CommandCurrentSelectionForm" "halfBorder") l_adjustedBorder))))
    let mut l_rectWidth : JV := (JR.asI (<- JR.sub (<- JR.add l_width (<- JR.getInherited this "CommandCurrentSelectionForm" "border")) l_adjustedBorder))
    let mut l_rectHeight : JV := (JR.asI (<- JR.sub (<- JR.add l_height (<- JR.getInherited this "CommandCurrentSelectionForm" "border")) l_adjustedBorder))
    if JR.truth (<- JR.cor (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[]) (do pure (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]))) then
        JR.aset (<- JR.getField this "selectedAnimationArray") l_index (<- JR.new "RectangleAdjustedAnimation" #[l_rectWidth, l_rectHeight, l_offset, l_offset, l_selectedButtonColor])
        pure ()
    else
        JR.aset (<- JR.getField this "selectedAnimationArray") l_index (<- JR.new "RectangleFilledAdjustedAnimation" #[l_rectWidth, l_rectHeight, l_offset, l_offset, l_selectedButtonColor])
        pure ()
    l_adjustedBorder := (JR.asI (JV.int 4))
    if JR.truth (<- JR.cor (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[]) (do pure (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]))) then
        JR.aset (<- JR.getField this "unSelectedAnimationArray") l_index (<- JR.new "RectangleAdjustedAnimation" #[l_rectWidth, l_rectHeight, l_offset, l_offset, l_buttonColor])
        pure ()
    else
        JR.aset (<- JR.getField this "unSelectedAnimationArray") l_index (<- JR.new "RectangleFilledAdjustedAnimation" #[l_rectWidth, l_rectHeight, l_offset, l_offset, l_buttonColor])
        pure ()
    pure JV.null


def m_updateAll_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_items : JV := (JR.arg jargs 1)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen l_items))
        repeat
            let jtemp5 : JV := (JR.dec l_index)
            l_index := jtemp5
            
            if !(JR.truth (<- JR.ge jtemp5 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget l_items l_index) "preMeasurement_1" #[l_graphics])
            let _ := (<- JR.call this "updateAt_2" #[l_index, (<- JR.aget l_items l_index)])
            pure ()
        pure ()
    pure JV.null


def m_updateAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let mut l_basicColorFactory : JV := (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[])
    let mut l_buttonColor : JV := (<- JR.getField l_basicColorFactory "TRANSPARENT_GREY")
    let mut l_selectedButtonColor : JV := (<- JR.getField l_basicColorFactory "TRANSPARENT_RED")
    let mut l_width : JV := (JR.asI (<- JR.call l_item "getMinimumWidth_0" #[]))
    let mut l_height : JV := (JR.asI (<- JR.call l_item "getMinimumHeight_0" #[]))
    let mut l_adjustedBorder : JV := (JR.asI (JV.int 3))
    let mut l_offset : JV := (JR.asI (JR.neg ((<- JR.add (<- JR.getInherited this "CommandCurrentSelectionForm" "halfBorder") l_adjustedBorder))))
    let mut l_rectWidth : JV := (JR.asI (<- JR.sub (<- JR.add l_width (<- JR.getInherited this "CommandCurrentSelectionForm" "border")) l_adjustedBorder))
    let mut l_rectHeight : JV := (JR.asI (<- JR.sub (<- JR.add l_height (<- JR.getInherited this "CommandCurrentSelectionForm" "border")) l_adjustedBorder))
    if JR.truth (<- JR.cor (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[]) (do pure (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]))) then
        let mut l_rectangleAdjustedAnimation : JV := (<- JR.aget (<- JR.getField this "selectedAnimationArray") l_index)
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setWidth_1" #[l_rectWidth])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setHeight_1" #[l_rectHeight])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setOffsetX_1" #[l_offset])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setOffsetY_1" #[l_offset])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setBasicColorP_1" #[l_selectedButtonColor])
        pure ()
    else
        let mut l_rectangleAdjustedAnimation : JV := (<- JR.aget (<- JR.getField this "selectedAnimationArray") l_index)
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setWidth_1" #[l_rectWidth])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setHeight_1" #[l_rectHeight])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setOffsetX_1" #[l_offset])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setOffsetY_1" #[l_offset])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setBasicColorP_1" #[l_selectedButtonColor])
        pure ()
    l_adjustedBorder := (JR.asI (JV.int 4))
    if JR.truth (<- JR.cor (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[]) (do pure (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]))) then
        let mut l_rectangleAdjustedAnimation : JV := (<- JR.aget (<- JR.getField this "unSelectedAnimationArray") l_index)
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setWidth_1" #[l_rectWidth])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setHeight_1" #[l_rectHeight])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setOffsetX_1" #[l_offset])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setOffsetY_1" #[l_offset])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setBasicColorP_1" #[l_buttonColor])
        pure ()
    else
        let mut l_rectangleAdjustedAnimation : JV := (<- JR.aget (<- JR.getField this "unSelectedAnimationArray") l_index)
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setWidth_1" #[l_rectWidth])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setHeight_1" #[l_rectHeight])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setOffsetX_1" #[l_offset])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setOffsetY_1" #[l_offset])
        let _ := (<- JR.call l_rectangleAdjustedAnimation "setBasicColorP_1" #[l_buttonColor])
        pure ()
    pure JV.null


def m_getSelectedCommand_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (<- JR.callSuper "ScrollCurrentSelectionForm" this "getSelectedIndex_0" #[]))
    let mut l_commandTextItem : JV := (<- JR.callInherited this "CommandCurrentSelectionForm" "get_1" #[l_index])
    return (<- JR.call l_commandTextItem "getCommand_0" #[])


def m_append_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_item : JV := (JR.arg jargs 0)
    let mut l_result : JV := (JR.asI (<- JR.callSuper "ScrollCurrentSelectionForm" this "append_1" #[l_item]))
    let _ := (<- JR.call this "addAt_2" #[l_result, l_item])
    return (JR.asI l_result)


def m_delete_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_itemNum : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "ScrollCurrentSelectionForm" this "delete_1" #[l_itemNum])
    pure JV.null


def m_deleteAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "initAnimations_0" #[])
    let _ := (<- JR.callSuper "ScrollCurrentSelectionForm" this "deleteAll_0" #[])
    pure JV.null


def m_insert_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_itemNum : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let _ := (<- JR.callSuper "ScrollCurrentSelectionForm" this "insert_2" #[l_itemNum, l_item])
    pure JV.null


def m_set_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_itemNum : JV := (JR.asI (JR.arg jargs 0))
    let mut l_item : JV := (JR.arg jargs 1)
    let _ := (<- JR.callSuper "ScrollCurrentSelectionForm" this "set_2" #[l_itemNum, l_item])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "CommandCurrentSelectionForm" "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.callSuper "ScrollCurrentSelectionForm" this "paint_1" #[l_graphics])
    pure JV.null


def m_paintItem_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_item : JV := (JR.arg jargs 2)
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let _ := (<- JR.call (<- JR.aget (<- JR.getField this "selectedAnimationArray") l_index) "paintXY_3" #[l_graphics, l_x, l_y])
    return (JR.asI (<- JR.callSuper "ScrollCurrentSelectionForm" this "paintItem_5" #[l_graphics, l_index, l_item, l_x, l_y]))


def m_paintUnselectedItem_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let mut l_item : JV := (JR.arg jargs 2)
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let _ := (<- JR.call (<- JR.aget (<- JR.getField this "unSelectedAnimationArray") l_index) "paintXY_3" #[l_graphics, l_x, l_y])
    return (JR.asI (<- JR.callSuper "ScrollCurrentSelectionForm" this "paintUnselectedItem_5" #[l_graphics, l_index, l_item, l_x, l_y]))


def jinit_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_title : JV := (JR.arg jargs 0)
    let mut l_items : JV := (JR.arg jargs 1)
    let mut l_border : JV := (JR.asI (JR.arg jargs 2))
    let mut l_moveForSmallScreen : JV := (JR.arg jargs 3)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 4)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 5)
    let _ <- JR.superInit "ScrollCurrentSelectionForm" this #[l_title, l_items, (<- JR.callStatic "ItemPaintableFactory" "getInstance_0" #[]), l_border, (JV.int (-3)), l_moveForSmallScreen, l_backgroundBasicColor, l_foregroundBasicColor]
    let _ <- jfields this
    let _ := (<- JR.call this "initAnimations_0" #[])
    let _ := (<- JR.call this "addAll_1" #[l_items])
    pure this

initialize JR.registerClass {
    name := "CommandCurrentSelectionForm",
    javaName := "org.allbinary.graphics.form.CommandCurrentSelectionForm",
    super := "ScrollCurrentSelectionForm",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("selectedAnimationArray", JV.null), ("unSelectedAnimationArray", JV.null)],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("initAnimations_0", #[], false, m_initAnimations_0), 
        ("addAll_1", #["ABCustomItemArr"], false, m_addAll_1), 
        ("addAt_2", #["int", "ABCustomItem"], false, m_addAt_2), 
        ("updateAll_2", #["Graphics", "ABCustomItemArr"], false, m_updateAll_2), 
        ("updateAt_2", #["int", "ABCustomItem"], false, m_updateAt_2), 
        ("getSelectedCommand_0", #[], false, m_getSelectedCommand_0), 
        ("append_1", #["ABCustomItem"], false, m_append_1), 
        ("delete_1", #["int"], false, m_delete_1), 
        ("deleteAll_0", #[], false, m_deleteAll_0), 
        ("insert_2", #["int", "ABCustomItem"], false, m_insert_2), 
        ("set_2", #["int", "ABCustomItem"], false, m_set_2), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintItem_5", #["Graphics", "int", "ABCustomItem", "int", "int"], false, m_paintItem_5), 
        ("paintUnselectedItem_5", #["Graphics", "int", "ABCustomItem", "int", "int"], false, m_paintUnselectedItem_5), 
        ("jinit_6", #["String", "ABCustomItemArr", "int", "boolean", "BasicColor", "BasicColor"], false, jinit_6)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommandCurrentSelectionForm


