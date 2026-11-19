-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StartIntermissionPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "fontDebugFactory" (<- JR.callStatic "FontDebugFactory" "getInstance_0" #[])
    JR.setField this "basicSetColorUtil" (<- JR.callStatic "BasicColorSetUtil" "getInstance_0" #[])
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK")
    JR.setField this "lineYOffsetArray" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY")
    JR.setField this "hasChanged" (JV.bool true)
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    JR.setField this "BEGIN_LEVEL" (JV.str "Begin Level ")
    JR.setField this "EMPTY_STRING" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "fontHeightP" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let mut l_existingFont : JV := (<- JR.call l_graphics "getFont_0" #[])
    let _ := (<- JR.call (<- JR.getField this "fontDebugFactory") "setFont_2" #[(<- JR.getField this "font"), l_graphics])
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP3_3" #[l_graphics, (<- JR.getField this "basicColor"), (<- JR.getField this "color")])
    let mut l_beginWidth : JV := (JR.asI (JV.int 0))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "lineYOffsetArray")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            if JR.truth (<- JR.getField this "hasChanged") then
                JR.aset (<- JR.getField this "lastWidth") l_index (JR.asI ((<- JR.shr (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "stringWidth_1" #[(<- JR.aget (<- JR.getField this "stringArray") l_index)]) (JV.int 1))))
                pure ()
            l_beginWidth := (JR.asI (<- JR.aget (<- JR.getField this "lastWidth") l_index))
            let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.aget (<- JR.getField this "stringArray") l_index), (<- JR.sub (<- JR.call l_displayInfo "getLastHalfWidth_0" #[]) l_beginWidth), (<- JR.sub (<- JR.call l_displayInfo "getLastHalfHeight_0" #[]) (<- JR.aget (<- JR.getField this "lineYOffsetArray") l_index)), (<- JR.getField this "anchor")])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    JR.setField this "hasChanged" (JV.bool false)
    let _ := (<- JR.call (<- JR.getField this "fontDebugFactory") "setFont_2" #[l_existingFont, l_graphics])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_level : JV := (JR.asI (<- JR.call (<- JR.call (<- JR.call (<- JR.getField this "gameCanvas") "getLayerManager_0" #[]) "getGameInfo_0" #[]) "getCurrentLevel_0" #[]))
    JR.aset (<- JR.getField this "stringArray") (JV.int 0) (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "BEGIN_LEVEL")]) "appendint_1" #[l_level]) "toString_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "stringArray")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 1))) then break
            JR.aset (<- JR.getField this "stringArray") l_index (<- JR.getField this "EMPTY_STRING")
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "basicColor" l_basicColor
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColor")


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameCanvas : JV := (JR.arg jargs 0)
    let mut l_stringArray : JV := (JR.arg jargs 1)
    let mut l_basicColor : JV := (JR.arg jargs 2)
    let mut l_font : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "InitUpdatePaintable" this #[]
    let _ <- jfields this
    JR.setField this "gameCanvas" l_gameCanvas
    JR.setField this "stringArray" l_stringArray
    JR.setField this "lastWidth" (<- JR.newArray "I" 1 #[(<- JR.alen (<- JR.getField this "stringArray"))])
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    JR.setField this "color" (JR.asI (<- JR.call l_basicColor "intValue_0" #[]))
    JR.setField this "fontSize" (JR.asI (<- JR.call l_font "getSize_0" #[]))
    JR.setField this "font" l_font
    pure this

initialize JR.registerClass {
    name := "StartIntermissionPaintable",
    javaName := "org.allbinary.game.displayable.canvas.StartIntermissionPaintable",
    super := "InitUpdatePaintable",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("fontDebugFactory", JV.null), ("basicSetColorUtil", JV.null), ("gameCanvas", JV.null), ("stringArray", JV.null), ("fontSize", (JV.int 0)), ("font", JV.null), ("lastWidth", JV.null), ("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null), ("basicColor", JV.null), ("color", (JV.int 0)), ("lineYOffsetArray", JV.null), ("hasChanged", (JV.bool false)), ("anchor", (JV.int 0)), ("fontHeightP", (JV.int 0)), ("BEGIN_LEVEL", JV.null), ("EMPTY_STRING", JV.null)],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("update_0", #[], false, m_update_0), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("jinit_4", #["AllBinaryGameCanvas", "StringArr", "BasicColor", "Font"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StartIntermissionPaintable


