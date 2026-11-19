-- Generated Code Do Not Modify
-- package org.allbinary.game.graphics.hud
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicHud_1

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "canvasStrings" (<- JR.callStatic "CanvasStrings" "getInstance_0" #[])
    JR.setField this "basicSetColorUtil" (<- JR.callStatic "BasicColorSetUtil" "getInstance_0" #[])
    JR.setField this "displayInfo" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "updateMyFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    JR.setField this "hudGraphicsPosition" (<- JR.getStatic "HudGraphicsPosition" "NULL_HUD_GRAPHICS_POSITION")
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    try
        JR.setField this "hudGraphicsPosition" (<- JR.call this "getHudGraphicsPositionWH_4" #[(<- JR.call (<- JR.getField this "displayInfo") "getLastWidth_0" #[]), (<- JR.call (<- JR.getField this "displayInfo") "getLastHeight_0" #[]), (<- JR.getField this "updateMaxWidth"), (<- JR.getField this "updateMaxHeight")])
        JR.setField this "x" (JR.asI (<- JR.call (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getPoint_0" #[]) "getX_0" #[]))
        let _ := (<- JR.call this "setY_1" #[(<- JR.call (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getPoint_0" #[]) "getY_0" #[])])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "canvasStrings") "ON_DISPLAY_CHANGE_EVENT"), l_e])
            pure ()
        else
            throw jex0
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_getLocation_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "location"))


def m_getDirection_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "direction"))


def m_getHudGraphicsPositionWH_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    let mut l_maxWidth : JV := (JR.asI (JR.arg jargs 2))
    let mut l_maxHeight : JV := (JR.asI (JR.arg jargs 3))
    let mut l_x : JV := (JR.asI (JV.int 0))
    let mut l_y : JV := (JR.asI (JV.int 0))
    let mut l_anchor : JV := (JR.asI (JV.int 0))
    let mut l_basicHudFactory : JV := (<- JR.callStatic "BasicHudFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq (<- JR.getField l_basicHudFactory "BOTTOMLEFT") (<- JR.call this "getLocation_0" #[])) then
        l_x := (JR.asI (<- JR.add (<- JR.getField this "bufferZone") (JV.int 2)))
        l_y := (JR.asI (<- JR.sub (<- JR.sub l_height l_maxHeight) (<- JR.getField this "bufferZone")))
        l_anchor := (JR.asI (<- JR.band (<- JR.getStatic "Graphics" "BOTTOM") (<- JR.getStatic "Graphics" "LEFT")))
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.getField l_basicHudFactory "BOTTOMRIGHT") (<- JR.call this "getLocation_0" #[])) then
            l_x := (JR.asI (<- JR.sub l_width l_maxWidth))
            l_y := (JR.asI (<- JR.sub (<- JR.sub l_height l_maxHeight) (<- JR.getField this "bufferZone")))
            l_anchor := (JR.asI (<- JR.band (<- JR.getStatic "Graphics" "BOTTOM") (<- JR.getStatic "Graphics" "RIGHT")))
            pure ()
        else
            if JR.truth (<- JR.eq (<- JR.getField l_basicHudFactory "TOPLEFT") (<- JR.call this "getLocation_0" #[])) then
                l_x := (JR.asI (<- JR.add (<- JR.getField this "bufferZone") (JV.int 2)))
                l_y := (JR.asI (<- JR.add (<- JR.getField this "bufferZone") (JV.int 5)))
                l_anchor := (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
                pure ()
            else
                if JR.truth (<- JR.eq (<- JR.getField l_basicHudFactory "TOPRIGHT") (<- JR.call this "getLocation_0" #[])) then
                    l_x := (JR.asI (<- JR.sub l_width l_maxWidth))
                    l_y := (JR.asI (<- JR.add (<- JR.getField this "bufferZone") (JV.int 5)))
                    l_anchor := (JR.asI (<- JR.band (<- JR.getStatic "Graphics" "TOP") (<- JR.getStatic "Graphics" "RIGHT")))
                    pure ()
                else
                    if JR.truth (<- JR.eq (<- JR.getField l_basicHudFactory "TOPCENTER") (<- JR.call this "getLocation_0" #[])) then
                        l_x := (JR.asI ((<- JR.div ((<- JR.sub l_width l_maxWidth)) (JV.int 2))))
                        l_y := (JR.asI (<- JR.add (<- JR.getField this "bufferZone") (JV.int 5)))
                        l_anchor := (JR.asI (<- JR.band (<- JR.getStatic "Graphics" "TOP") (<- JR.getStatic "Graphics" "HCENTER")))
                        pure ()
                    else
                        if JR.truth (<- JR.eq (<- JR.getField l_basicHudFactory "BOTTOMCENTER") (<- JR.call this "getLocation_0" #[])) then
                            l_x := (JR.asI ((<- JR.div ((<- JR.sub l_width l_maxWidth)) (JV.int 2))))
                            l_y := (JR.asI (<- JR.sub (<- JR.sub l_height l_maxHeight) (<- JR.getField this "bufferZone")))
                            l_anchor := (JR.asI (<- JR.band (<- JR.getStatic "Graphics" "BOTTOM") (<- JR.getStatic "Graphics" "HCENTER")))
                            pure ()
                        else
                            if JR.truth (<- JR.eq (<- JR.getField l_basicHudFactory "ABSOLUTE") (<- JR.call this "getLocation_0" #[])) then
                                l_x := (JR.asI l_maxHeight)
                                l_y := (JR.asI l_maxWidth)
                                l_anchor := (JR.asI (JV.int 0))
                                pure ()
    return (<- JR.new "HudGraphicsPosition" #[(<- JR.call this "getPoint_2" #[l_x, l_y]), l_anchor])


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onDisplayChangeEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayChangeEvent : JV := (JR.arg jargs 0)
    JR.setField this "myFontProcessor" (<- JR.getField this "updateMyFontProcessor")
    pure JV.null


def m_getPoint_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    return (<- JR.call (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "createXY_2" #[l_x, l_y])


def m_getBufferZone_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "bufferZone"))


def m_setBufferZone_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_bufferZone : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "bufferZone" (JR.asI l_bufferZone)
    pure JV.null


def m_setLocation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_location : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "location" (JR.asI l_location)
    pure JV.null


def m_setDirection_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_direction : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "direction" (JR.asI l_direction)
    pure JV.null


def m_getHudGraphicsPosition_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "hudGraphicsPosition")


def m_getColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "color"))


def m_getX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "x"))


def m_setX_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "x" (JR.asI l_x)
    pure JV.null


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "basicColor" l_basicColor
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColor")


def m_setY_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_y : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "y" (JR.asI l_y)
    pure JV.null


def m_getY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "y"))


def m_paintSSO_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_string : JV := (JR.arg jargs 1)
    let mut l_string2 : JV := (JR.arg jargs 2)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 3))
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.call this "getBasicColorP_0" #[])])
    let _ := (<- JR.call l_graphics "drawString_4" #[l_string, (<- JR.getField this "x"), (<- JR.call this "getY_0" #[]), (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getAnchor_0" #[])])
    let _ := (<- JR.call l_graphics "drawString_4" #[l_string2, (<- JR.add (<- JR.getField this "x") l_offset), (<- JR.call this "getY_0" #[]), (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getAnchor_0" #[])])
    pure JV.null


def m_paintSSOO_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_string : JV := (JR.arg jargs 1)
    let mut l_string2 : JV := (JR.arg jargs 2)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 3))
    let mut l_offset2 : JV := (JR.asI (JR.arg jargs 4))
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.call this "getColor_0" #[])])
    let _ := (<- JR.call l_graphics "drawString_4" #[l_string, (<- JR.add (<- JR.getField this "x") l_offset), (<- JR.call this "getY_0" #[]), (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getAnchor_0" #[])])
    let _ := (<- JR.call l_graphics "drawString_4" #[l_string2, (<- JR.add (<- JR.getField this "x") l_offset2), (<- JR.call this "getY_0" #[]), (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getAnchor_0" #[])])
    pure JV.null


def m_paintDXY_9 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_charArray : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    let mut l_len : JV := (JR.asI (JR.arg jargs 3))
    let mut l_charArray2 : JV := (JR.arg jargs 4)
    let mut l_offset2 : JV := (JR.asI (JR.arg jargs 5))
    let mut l_len2 : JV := (JR.asI (JR.arg jargs 6))
    let mut l_xOffset : JV := (JR.asI (JR.arg jargs 7))
    let mut l_xOffset2 : JV := (JR.asI (JR.arg jargs 8))
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.call this "getBasicColorP_0" #[])])
    let mut l_y : JV := (JR.asI (<- JR.call this "getY_0" #[]))
    let _ := (<- JR.call l_graphics "drawChars_6" #[l_charArray, l_offset, l_len, (<- JR.add (<- JR.getField this "x") l_xOffset), l_y, (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getAnchor_0" #[])])
    let _ := (<- JR.call l_graphics "drawChars_6" #[l_charArray2, l_offset2, l_len2, (<- JR.add (<- JR.getField this "x") l_xOffset2), l_y, (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getAnchor_0" #[])])
    pure JV.null


def m_paintDX_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_charArray : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    let mut l_len : JV := (JR.asI (JR.arg jargs 3))
    let mut l_charArray2 : JV := (JR.arg jargs 4)
    let mut l_offset2 : JV := (JR.asI (JR.arg jargs 5))
    let mut l_len2 : JV := (JR.asI (JR.arg jargs 6))
    let mut l_xOffset : JV := (JR.asI (JR.arg jargs 7))
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.call this "getBasicColorP_0" #[])])
    let mut l_y : JV := (JR.asI (<- JR.call this "getY_0" #[]))
    let _ := (<- JR.call l_graphics "drawChars_6" #[l_charArray, l_offset, l_len, (<- JR.getField this "x"), l_y, (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getAnchor_0" #[])])
    let _ := (<- JR.call l_graphics "drawChars_6" #[l_charArray2, l_offset2, l_len2, (<- JR.add (<- JR.getField this "x") l_xOffset), l_y, (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getAnchor_0" #[])])
    pure JV.null


def m_paintOffsetAndLength_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_charArray : JV := (JR.arg jargs 1)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 2))
    let mut l_len : JV := (JR.asI (JR.arg jargs 3))
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.call this "getBasicColorP_0" #[])])
    let mut l_y : JV := (JR.asI (<- JR.call this "getY_0" #[]))
    let _ := (<- JR.call l_graphics "drawChars_6" #[l_charArray, l_offset, l_len, (<- JR.getField this "x"), l_y, (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getAnchor_0" #[])])
    pure JV.null


def m_paintString_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_string : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.call this "getBasicColorP_0" #[])])
    let mut l_y : JV := (JR.asI (<- JR.add (<- JR.call this "getY_0" #[]) (<- JR.getField this "offsetY")))
    let _ := (<- JR.call l_graphics "drawString_4" #[l_string, (<- JR.getField this "x"), l_y, (<- JR.call (<- JR.getField this "hudGraphicsPosition") "getAnchor_0" #[])])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_location : JV := (JR.asI (JR.arg jargs 0))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 1))
    let mut l_bufferZone : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setLocation_1" #[l_location])
    let _ := (<- JR.call this "setDirection_1" #[l_direction])
    let _ := (<- JR.call this "setBufferZone_1" #[l_bufferZone])
    let _ := (<- JR.call this "onDisplayChangeEvent_1" #[(<- JR.getField (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[]) "displayChangeEvent")])
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    JR.setField this "color" (JR.asI (<- JR.call l_basicColor "intValue_0" #[]))
    pure this

initialize JR.registerClass {
    name := "BasicHud_1",
    javaName := "org.allbinary.game.graphics.hud.BasicHud_1",
    super := "Object",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("canvasStrings", JV.null), ("basicSetColorUtil", JV.null), ("displayInfo", JV.null), ("updateMyFontProcessor", JV.null), ("myFontProcessor", JV.null), ("location", (JV.int 0)), ("direction", (JV.int 0)), ("bufferZone", (JV.int 0)), ("hudGraphicsPosition", JV.null), ("x", (JV.int 0)), ("y", (JV.int 0)), ("basicColor", JV.null), ("color", (JV.int 0)), ("updateMaxWidth", (JV.int 0)), ("updateMaxHeight", (JV.int 0)), ("offsetY", (JV.int 0))],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("getLocation_0", #[], false, m_getLocation_0), 
        ("getDirection_0", #[], false, m_getDirection_0), 
        ("getHudGraphicsPositionWH_4", #["int", "int", "int", "int"], false, m_getHudGraphicsPositionWH_4), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onDisplayChangeEvent_1", #["DisplayChangeEvent"], false, m_onDisplayChangeEvent_1), 
        ("getPoint_2", #["int", "int"], false, m_getPoint_2), 
        ("getBufferZone_0", #[], false, m_getBufferZone_0), 
        ("setBufferZone_1", #["int"], false, m_setBufferZone_1), 
        ("setLocation_1", #["int"], false, m_setLocation_1), 
        ("setDirection_1", #["int"], false, m_setDirection_1), 
        ("getHudGraphicsPosition_0", #[], false, m_getHudGraphicsPosition_0), 
        ("getColor_0", #[], false, m_getColor_0), 
        ("getX_0", #[], false, m_getX_0), 
        ("setX_1", #["int"], false, m_setX_1), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("setY_1", #["int"], false, m_setY_1), 
        ("getY_0", #[], false, m_getY_0), 
        ("paintSSO_4", #["Graphics", "String", "String", "int"], false, m_paintSSO_4), 
        ("paintSSOO_5", #["Graphics", "String", "String", "int", "int"], false, m_paintSSOO_5), 
        ("paintDXY_9", #["Graphics", "charArr", "int", "int", "charArr", "int", "int", "int", "int"], false, m_paintDXY_9), 
        ("paintDX_8", #["Graphics", "charArr", "int", "int", "charArr", "int", "int", "int"], false, m_paintDX_8), 
        ("paintOffsetAndLength_4", #["Graphics", "charArr", "int", "int"], false, m_paintOffsetAndLength_4), 
        ("paintString_2", #["Graphics", "String"], false, m_paintString_2), 
        ("jinit_4", #["int", "int", "int", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicHud_1


