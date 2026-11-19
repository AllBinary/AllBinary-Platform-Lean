-- Generated Code Do Not Modify
-- package org.allbinary.game.paint.help
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputMappingHelpPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "commonSeps" (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    JR.setField this "stringUtil" (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    JR.setField this "basicColorFactory" (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[])
    JR.setField this "NONE" (<- JR.getField (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[]) "NONE")
    JR.setField this "EMPTY_STRING" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "keyMappingArray" (<- JR.newArray "L" 1 #[(JV.int 0)])
    JR.setField this "actionBasicColor" (<- JR.getField (<- JR.callStatic "BasicColorUtil" "getInstance_0" #[]) "ZERO_ARRAY")
    JR.setField this "inputBasicColorArray" (<- JR.newArray "L" 2 #[(JV.int 0), (JV.int 0)])
    JR.setField this "updateMyFontProperties" (<- JR.new "UpdateMyFontProperties" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    let mut l_updateMyFontProperties : JV := (<- JR.new "UpdateMyFontProperties" #[])
    JR.setField l_updateMyFontProperties "charHeight" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let mut l_inputInfo : JV := (<- JR.getInherited this "InputMappingHelpPaintable" "inputInfo")
    let mut l_size : JV := (JR.asI (<- JR.alen l_inputInfo))
    JR.setField l_updateMyFontProperties "actionStringArray" (<- JR.newArray "L" 1 #[l_size])
    JR.setField l_updateMyFontProperties "keymappingBeginWidthArray" (<- JR.newArray "I" 1 #[l_size])
    JR.setField l_updateMyFontProperties "actionStringDeltaXArray" (<- JR.newArray "I" 1 #[l_size])
    JR.setField l_updateMyFontProperties "inputDeltaXArray" (<- JR.newArray "I" 2 #[l_size, (JV.int 0)])
    JR.setField l_updateMyFontProperties "sepArray" (<- JR.newArray "L" 2 #[l_size, (JV.int 0)])
    JR.setField l_updateMyFontProperties "sepWidthArray" (<- JR.newArray "I" 2 #[l_size, (JV.int 0)])
    let mut l_list : JV := JV.null
    let mut l_keyMappings : JV := JV.null
    let mut l_actionString : JV := JV.null
    let mut l_input : JV := JV.null
    let mut l_size2 : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_list := (<- JR.aget (<- JR.getField this "keyMappingArray") l_index)
            l_keyMappings := (<- JR.call this "get_1" #[l_list])
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            l_actionString := (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.aget l_inputInfo l_index)]) "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "COLON")]) "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "SPACE")]) "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "SPACE")]) "toString_0" #[])
            JR.aset (<- JR.getField l_updateMyFontProperties "actionStringArray") l_index l_actionString
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            JR.aset (<- JR.getField l_updateMyFontProperties "keymappingBeginWidthArray") l_index ((<- JR.shr (<- JR.call l_font "stringWidth_1" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.aget (<- JR.getField l_updateMyFontProperties "actionStringArray") l_index)]) "append_1" #[l_keyMappings]) "toString_0" #[])]) (JV.int 1)))
            JR.aset (<- JR.getField l_updateMyFontProperties "actionStringDeltaXArray") l_index (<- JR.call l_font "stringWidth_1" #[l_actionString])
            l_size2 := (JR.asI (<- JR.call l_list "size_0" #[]))
            JR.aset (<- JR.getField l_updateMyFontProperties "inputDeltaXArray") l_index (<- JR.newArray "I" 1 #[l_size2])
            JR.aset (<- JR.getField l_updateMyFontProperties "sepArray") l_index (<- JR.newArray "L" 1 #[l_size2])
            JR.aset (<- JR.getField l_updateMyFontProperties "sepWidthArray") l_index (<- JR.newArray "I" 1 #[l_size2])
            if true then
                let mut l_index2 : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index2 l_size2)) then break
                    l_input := (<- JR.aget (<- JR.getField l_list "objectArray") l_index2)
                    JR.aset (<- JR.aget (<- JR.getField l_updateMyFontProperties "inputDeltaXArray") l_index) l_index2 (<- JR.call l_font "stringWidth_1" #[(<- JR.call l_input "getName_0" #[])])
                    JR.aset (<- JR.aget (<- JR.getField l_updateMyFontProperties "sepArray") l_index) l_index2 (<- JR.getField this "EMPTY_STRING")
                    if JR.truth (<- JR.lt (<- JR.add l_index2 (JV.int 1)) (<- JR.call l_list "size_0" #[])) then
                        if JR.truth (<- JR.eq (<- JR.call l_list "size_0" #[]) (JV.int 2)) then
                            JR.aset (<- JR.aget (<- JR.getField l_updateMyFontProperties "sepArray") l_index) l_index2 (<- JR.getStatic "InputMappingHelpPaintable" "AND")
                            pure ()
                        else
                            if JR.truth (<- JR.eq (<- JR.add l_index2 (JV.int 2)) (<- JR.call l_list "size_0" #[])) then
                                JR.aset (<- JR.aget (<- JR.getField l_updateMyFontProperties "sepArray") l_index) l_index2 (<- JR.getStatic "InputMappingHelpPaintable" "MORE_THAN_TWO_IN_LIST_AND")
                                pure ()
                            else
                                JR.aset (<- JR.aget (<- JR.getField l_updateMyFontProperties "sepArray") l_index) l_index2 (<- JR.getStatic "InputMappingHelpPaintable" "SEP")
                                pure ()
                            pure ()
                        pure ()
                    if JR.truth (<- JR.ne (<- JR.aget (<- JR.aget (<- JR.getField l_updateMyFontProperties "sepArray") l_index) l_index2) (<- JR.getField this "EMPTY_STRING")) then
                        JR.aset (<- JR.aget (<- JR.getField l_updateMyFontProperties "sepWidthArray") l_index) l_index2 (<- JR.call l_font "stringWidth_1" #[(<- JR.aget (<- JR.aget (<- JR.getField l_updateMyFontProperties "sepArray") l_index) l_index2)])
                        pure ()
                    l_index2 := (JR.inc l_index2)
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "updateMyFontProperties" l_updateMyFontProperties
    let _ := (<- JR.callSuper "HelpPaintable" this "updateMeasurement_1" #[l_graphics])
    pure JV.null


def m_update_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_selectedGameKey : JV := (JR.arg jargs 0)
    let mut l_selectedInput : JV := (JR.arg jargs 1)
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[(JV.str "selected GameKey: ")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[l_selectedGameKey])]) "append_1" #[(JV.str " Input: ")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[l_selectedInput])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
    let mut l_gameKeyMapping : JV := (<- JR.call (<- JR.callStatic "PlatformInputMappingFactory" "getInstance_0" #[]) "getPersistentInputMappingInstance_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "gameInputMappingArray")))
    let mut l_keyInfo : JV := (<- JR.newArray "L" 1 #[l_size])
    let mut l_keyMappingArray : JV := (<- JR.newArray "L" 1 #[l_size])
    let mut l_actionBasicColor : JV := (<- JR.newArray "L" 1 #[l_size])
    let mut l_inputBasicColorArray : JV := (<- JR.newArray "L" 2 #[l_size])
    let mut l_gameInputMapping : JV := JV.null
    let mut l_gameKey : JV := JV.null
    let mut l_list : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_gameInputMapping := (<- JR.aget (<- JR.getField this "gameInputMappingArray") l_index)
            l_gameKey := (<- JR.call l_gameInputMapping "getGameKey_0" #[])
            l_list := (<- JR.call (<- JR.call l_gameKeyMapping "getInputMapping_0" #[]) "getMappedInput_1" #[l_gameKey])
            let mut l_size2 : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
            JR.aset l_inputBasicColorArray l_index (<- JR.newArray "L" 1 #[l_size2])
            if true then
                let mut l_index2 : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index2 l_size2)) then break
                    JR.aset (<- JR.aget l_inputBasicColorArray l_index) l_index2 (<- JR.getInherited this "InputMappingHelpPaintable" "basicColor")
                    l_index2 := (JR.inc l_index2)
                    pure ()
                pure ()
            if JR.truth (<- JR.eq l_gameKey l_selectedGameKey) then
                let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(JV.str "Found: selected GameKey: ")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[l_selectedGameKey])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
                JR.aset l_actionBasicColor l_index (<- JR.getField this "selectedBasicColor")
                let mut l_indexOfSelectedInput : JV := (JR.asI (<- JR.call l_list "indexOf_1" #[l_selectedInput]))
                if JR.truth (<- JR.ge l_indexOfSelectedInput (JV.int 0)) then
                    let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(JV.str "Found: selected Input: ")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[l_selectedInput])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
                    JR.aset (<- JR.aget l_inputBasicColorArray l_index) l_indexOfSelectedInput (<- JR.getField this "selectedBasicColor")
                    pure ()
                pure ()
            else
                JR.aset l_actionBasicColor l_index (<- JR.getInherited this "InputMappingHelpPaintable" "basicColor")
                pure ()
            JR.aset l_keyInfo l_index (<- JR.call l_gameInputMapping "getName_0" #[])
            JR.aset l_keyMappingArray l_index l_list
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "keyMappingArray" l_keyMappingArray
    JR.setField this "actionBasicColor" l_actionBasicColor
    JR.setField this "inputBasicColorArray" l_inputBasicColorArray
    let _ := (<- JR.callSuper "HelpPaintable" this "setInputInfoP_1" #[l_keyInfo])
    JR.setInherited this "InputMappingHelpPaintable" "myFontProcessor" (<- JR.getInherited this "InputMappingHelpPaintable" "updateMyFontProcessor")
    pure JV.null


def m_get_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyList : JV := (JR.arg jargs 0)
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_key : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call l_keyList "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_key := (<- JR.aget (<- JR.getField l_keyList "objectArray") l_index)
            let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call l_key "getName_0" #[])])
            if JR.truth (<- JR.lt (<- JR.add l_index (JV.int 1)) (<- JR.call l_keyList "size_0" #[])) then
                if JR.truth (<- JR.eq (<- JR.call l_keyList "size_0" #[]) (JV.int 2)) then
                    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "InputMappingHelpPaintable" "AND")])
                    pure ()
                else
                    if JR.truth (<- JR.eq (<- JR.add l_index (JV.int 2)) (<- JR.call l_keyList "size_0" #[])) then
                        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "InputMappingHelpPaintable" "MORE_THAN_TWO_IN_LIST_AND")])
                        pure ()
                    else
                        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "InputMappingHelpPaintable" "SEP")])
                        pure ()
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "InputMappingHelpPaintable" "myFontProcessor") "process_1" #[l_graphics])
    let mut l_halfWidth : JV := (JR.asI (<- JR.call (<- JR.getInherited this "InputMappingHelpPaintable" "displayInfo") "getLastHalfWidth_0" #[]))
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.getInherited this "InputMappingHelpPaintable" "basicColor") "intValue_0" #[])])
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getInherited this "InputMappingHelpPaintable" "title"), (<- JR.sub l_halfWidth (<- JR.getInherited this "InputMappingHelpPaintable" "titleBeginWidth")), (<- JR.getField (<- JR.getField this "updateMyFontProperties") "charHeight"), (<- JR.getInherited this "InputMappingHelpPaintable" "anchor")])
    let mut l_inputInfo : JV := (<- JR.getInherited this "InputMappingHelpPaintable" "inputInfo")
    let mut l_size : JV := (JR.asI (<- JR.alen l_inputInfo))
    let mut l_y : JV := (JR.asI (JV.int 0))
    let mut l_deltaX : JV := (JR.asI (JV.int 0))
    let mut l_size2 : JV := (JR.asI (JV.int 0))
    let mut l_actionString : JV := JV.null
    let mut l_input : JV := JV.null
    let mut l_list : JV := JV.null
    let mut l_sep : JV := JV.null
    let mut l_beginWidth : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_y := (JR.asI (<- JR.mul ((<- JR.add l_index (JV.int 3))) (<- JR.getField (<- JR.getField this "updateMyFontProperties") "charHeight")))
            l_deltaX := (JR.asI (JV.int 0))
            l_list := (<- JR.aget (<- JR.getField this "keyMappingArray") l_index)
            l_size2 := (JR.asI (<- JR.call l_list "size_0" #[]))
            l_beginWidth := (JR.asI (<- JR.aget (<- JR.getField (<- JR.getField this "updateMyFontProperties") "keymappingBeginWidthArray") l_index))
            let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.aget (<- JR.getField this "actionBasicColor") l_index) "intValue_0" #[])])
            l_actionString := (<- JR.aget (<- JR.getField (<- JR.getField this "updateMyFontProperties") "actionStringArray") l_index)
            let _ := (<- JR.call l_graphics "drawString_4" #[l_actionString, (<- JR.add (<- JR.sub l_halfWidth l_beginWidth) l_deltaX), l_y, (<- JR.getInherited this "InputMappingHelpPaintable" "anchor")])
            l_deltaX := (JR.castLike l_deltaX (<- JR.add l_deltaX (<- JR.aget (<- JR.getField (<- JR.getField this "updateMyFontProperties") "actionStringDeltaXArray") l_index)))
            if true then
                let mut l_index2 : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index2 l_size2)) then break
                    l_input := (<- JR.aget (<- JR.getField l_list "objectArray") l_index2)
                    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.aget (<- JR.aget (<- JR.getField this "inputBasicColorArray") l_index) l_index2) "intValue_0" #[])])
                    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.call l_input "getName_0" #[]), (<- JR.add (<- JR.sub l_halfWidth l_beginWidth) l_deltaX), l_y, (<- JR.getInherited this "InputMappingHelpPaintable" "anchor")])
                    l_deltaX := (JR.castLike l_deltaX (<- JR.add l_deltaX (<- JR.aget (<- JR.aget (<- JR.getField (<- JR.getField this "updateMyFontProperties") "inputDeltaXArray") l_index) l_index2)))
                    l_sep := (<- JR.aget (<- JR.aget (<- JR.getField (<- JR.getField this "updateMyFontProperties") "sepArray") l_index) l_index2)
                    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call (<- JR.getInherited this "InputMappingHelpPaintable" "basicColor") "intValue_0" #[])])
                    let _ := (<- JR.call l_graphics "drawString_4" #[l_sep, (<- JR.add (<- JR.sub l_halfWidth l_beginWidth) l_deltaX), l_y, (<- JR.getInherited this "InputMappingHelpPaintable" "anchor")])
                    l_deltaX := (JR.castLike l_deltaX (<- JR.add l_deltaX (<- JR.aget (<- JR.aget (<- JR.getField (<- JR.getField this "updateMyFontProperties") "sepWidthArray") l_index) l_index2)))
                    l_index2 := (JR.inc l_index2)
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameInputMappingArray : JV := (JR.arg jargs 0)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 1)
    let mut l_basicColor : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "HelpPaintable" this #[(JV.str "Input Mapping"), l_backgroundBasicColor, l_basicColor]
    let _ <- jfields this
    JR.setField this "gameInputMappingArray" l_gameInputMappingArray
    let _ := (<- JR.call this "update_2" #[(<- JR.getField this "NONE"), (<- JR.getField this "NONE")])
    if JR.truth (<- JR.cor (<- JR.eq l_backgroundBasicColor (<- JR.getField (<- JR.getField this "basicColorFactory") "WHITE")) (do pure (<- JR.eq l_basicColor (<- JR.getField (<- JR.getField this "basicColorFactory") "WHITE")))) then
        JR.setField this "selectedBasicColor" (<- JR.getField (<- JR.getField this "basicColorFactory") "RED")
        pure ()
    else
        JR.setField this "selectedBasicColor" (<- JR.getField (<- JR.getField this "basicColorFactory") "WHITE")
        pure ()
    pure this

initialize JR.registerClass {
    name := "InputMappingHelpPaintable",
    javaName := "org.allbinary.game.paint.help.InputMappingHelpPaintable",
    super := "HelpPaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("commonSeps", JV.null), ("stringUtil", JV.null), ("basicColorFactory", JV.null), ("NONE", JV.null), ("EMPTY_STRING", JV.null), ("gameInputMappingArray", JV.null), ("keyMappingArray", JV.null), ("actionBasicColor", JV.null), ("inputBasicColorArray", JV.null), ("selectedBasicColor", JV.null), ("updateMyFontProperties", JV.null)],
    statics := #[("AND", (JV.str " and ")), ("SEP", (JV.str ", ")), ("MORE_THAN_TWO_IN_LIST_AND", (JV.str ", and "))],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("update_2", #["GameKey", "Input"], false, m_update_2), 
        ("get_1", #["BasicArrayList"], false, m_get_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_3", #["GameInputMappingArr", "BasicColor", "BasicColor"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputMappingHelpPaintable


