-- Generated Code Do Not Modify
-- package org.allbinary.game.part
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CountedLayersHudPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "displayInfoSingleton" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    JR.setField this "height" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
    if JR.truth (<- JR.gt (<- JR.getField this "dropSize") (<- JR.call l_font "getHeight_0" #[])) then
        JR.setField this "height" (JR.asI (<- JR.getField this "dropSize"))
        pure ()
    if JR.truth (<- JR.eq (<- JR.getStatic "CountedLayersHudPaintable" "XXStringWidth") (JV.int 0)) then
        let mut l_XXString : JV := (JV.str "XX")
        JR.setStatic "CountedLayersHudPaintable" "XXStringWidth" (JR.asI (<- JR.call l_font "stringWidth_1" #[l_XXString]))
        pure ()
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let mut l_lastWidth : JV := (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastWidth_0" #[]))
    let mut l_widthEdge : JV := (JR.asI (<- JR.sub l_lastWidth (<- JR.getField this "dropSize")))
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "partInterfaceArray")))
    let mut l_count : JV := (JR.asI (JV.int 0))
    let mut l_y : JV := (JR.asI (JV.int 0))
    let mut l_countedLayerInterfaceFactory : JV := JV.null
    let mut l_pickedUpLayerInterfaceFactoryInterface : JV := JV.null
    let mut l_layerInterface : JV := JV.null
    let mut l_charArray : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.getField this "startIndex"))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_countedLayerInterfaceFactory := (<- JR.aget (<- JR.getField this "partInterfaceArray") l_index)
            if JR.truth (<- JR.gt (<- JR.call l_countedLayerInterfaceFactory "getTotal_0" #[]) (JV.int 0)) then
                l_pickedUpLayerInterfaceFactoryInterface := (<- JR.call l_countedLayerInterfaceFactory "getCountedPickedUpLayerInterfaceFactory_0" #[])
                l_layerInterface := (<- JR.call l_pickedUpLayerInterfaceFactoryInterface "getIconLayer_0" #[])
                l_y := (JR.asI (<- JR.add (JV.int 40) ((<- JR.mul l_count (<- JR.getField this "height")))))
                let _ := (<- JR.call l_layerInterface "setPosition_3" #[l_widthEdge, l_y, (<- JR.call l_layerInterface "getZP_0" #[])])
                let _ := (<- JR.call l_layerInterface "paint_1" #[l_graphics])
                let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getField this "countedTotalStringColor")])
                let _ := (<- JR.call l_countedLayerInterfaceFactory "paint_1" #[l_graphics])
                l_charArray := (<- JR.call l_countedLayerInterfaceFactory "getTotalString_0" #[])
                let _ := (<- JR.call l_graphics "drawChars_6" #[l_charArray, (JV.int 0), (<- JR.alen l_charArray), (<- JR.sub l_widthEdge (<- JR.call l_countedLayerInterfaceFactory "getXOffset_0" #[])), l_y, (JV.int 0)])
                l_count := (JR.inc l_count)
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    if JR.truth (<- JR.gt l_count (JV.int 0)) then
        let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getField this "countedPartsBorder")])
        let _ := (<- JR.call l_graphics "drawRect_4" #[(<- JR.sub l_lastWidth ((<- JR.add (<- JR.getStatic "CountedLayersHudPaintable" "XXStringWidth") (<- JR.getField this "dropSize")))), (JV.int 40), (<- JR.add (<- JR.getStatic "CountedLayersHudPaintable" "XXStringWidth") (<- JR.getField this "dropSize")), (<- JR.add ((<- JR.mul l_count (<- JR.getField this "height"))) (JV.int 3))])
        pure ()
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_partInterfaceArray : JV := (JR.arg jargs 0)
    let mut l_dropSize : JV := (JR.asI (JR.arg jargs 1))
    let mut l_startIndex : JV := (JR.asI (JR.arg jargs 2))
    let mut l_countedTotalStringColor : JV := (JR.asI (JR.arg jargs 3))
    let mut l_countedPartsBorder : JV := (JR.asI (JR.arg jargs 4))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "partInterfaceArray" l_partInterfaceArray
    JR.setField this "startIndex" (JR.asI l_startIndex)
    JR.setField this "countedTotalStringColor" (JR.asI l_countedTotalStringColor)
    JR.setField this "countedPartsBorder" (JR.asI l_countedPartsBorder)
    JR.setField this "dropSize" (JR.asI l_dropSize)
    pure this

initialize JR.registerClass {
    name := "CountedLayersHudPaintable",
    javaName := "org.allbinary.game.part.CountedLayersHudPaintable",
    super := "Object",
    interfaces := #["PaintableInterface", "UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("displayInfoSingleton", JV.null), ("partInterfaceArray", JV.null), ("countedTotalStringColor", (JV.int 0)), ("countedPartsBorder", (JV.int 0)), ("startIndex", (JV.int 0)), ("dropSize", (JV.int 0)), ("myFontProcessor", JV.null), ("height", (JV.int 0))],
    statics := #[("XXStringWidth", (JR.asI (JV.int 0)))],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_5", #["PartInterfaceArr", "int", "int", "int", "int"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CountedLayersHudPaintable


