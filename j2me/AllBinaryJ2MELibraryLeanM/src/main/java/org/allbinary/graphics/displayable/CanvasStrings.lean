-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CanvasStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "CONSTRUCTOR" (JV.str "MyCanvas::MyCanvas")
    JR.setField this "PAUSE" (JV.str "MyCanvas::pause")
    JR.setField this "UN_PAUSE" (JV.str "MyCanvas::unPause")
    JR.setField this "SET_FULL_SCREEN_MODE" (JV.str "setFullScreenMode")
    JR.setField this "SIZE_CHANGED" (JV.str "sizeChanged")
    JR.setField this "SCALED_IMAGES" (JV.str "scaledImages")
    JR.setField this "PAINT" (JV.str "paint")
    JR.setField this "ON_DISPLAY_CHANGE_EVENT" (JV.str "onDisplayChangeEvent")
    JR.setField this "UPDATE_MEASUREMENT" (JV.str "updateMeasurement")
    JR.setField this "FD_WIDTH" (JV.str " font/display width: ")
    JR.setField this "FD_HEIGHT" (JV.str " font/display height: ")
    JR.setField this "EMPTY_CHILD_NAME_LIST" (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])
    JR.setField this "ABOUT" (JV.str "About")
    JR.setField this "OPTIONS" (JV.str "Options")
    JR.setField this "FONT_ATLAS" (JV.str "/font.png")
    JR.setField this "OBJ_MODEL" (JV.str "_obj")
    JR.setField this "MD2_MODEL" (JV.str "_md2")
    JR.setField this "_PNG" (JV.str ".png")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CanvasStrings" "instance" (<- JR.new "CanvasStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CanvasStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CanvasStrings",
    javaName := "org.allbinary.graphics.displayable.CanvasStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("CONSTRUCTOR", JV.null), ("PAUSE", JV.null), ("UN_PAUSE", JV.null), ("SET_FULL_SCREEN_MODE", JV.null), ("SIZE_CHANGED", JV.null), ("SCALED_IMAGES", JV.null), ("PAINT", JV.null), ("ON_DISPLAY_CHANGE_EVENT", JV.null), ("UPDATE_MEASUREMENT", JV.null), ("FD_WIDTH", JV.null), ("FD_HEIGHT", JV.null), ("EMPTY_CHILD_NAME_LIST", JV.null), ("ABOUT", JV.null), ("OPTIONS", JV.null), ("FONT_ATLAS", JV.null), ("OBJ_MODEL", JV.null), ("MD2_MODEL", JV.null), ("_PNG", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CanvasStrings


