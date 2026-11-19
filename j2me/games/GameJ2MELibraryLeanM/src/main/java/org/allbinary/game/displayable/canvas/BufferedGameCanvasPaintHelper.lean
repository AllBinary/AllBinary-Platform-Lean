-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BufferedGameCanvasPaintHelper

def jfields (this : JV) : JM JV := do
    JR.setField this "gameCanvas" (<- JR.getStatic "NullCanvas" "NULL_CANVAS")
    JR.setField this "offScreenImage" (<- JR.newArray "L" 1 #[(<- JR.getStatic "BufferedGameCanvasPaintHelper" "MAX_IMAGES")])
    JR.setField this "previousImage" (<- JR.getStatic "NullImage" "NULL_IMAGE")
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.getStatic "BufferedGameCanvasPaintHelper" "MAX_IMAGES")])
    JR.setField this "drawCircularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstanceAt_2" #[(<- JR.sub (<- JR.getStatic "BufferedGameCanvasPaintHelper" "MAX_IMAGES") (JV.int 1)), (<- JR.getStatic "BufferedGameCanvasPaintHelper" "MAX_IMAGES")])
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_myCanvas : JV := ((<- JR.getField this "gameCanvas"))
    let _ := (<- JR.call l_myCanvas "draw_1" #[(<- JR.call (<- JR.aget (<- JR.getField this "offScreenImage") (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[])) "getGraphics_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    let _ := (<- JR.call (<- JR.getField this "drawCircularIndexUtil") "next_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    JR.setField this "previousImage" (<- JR.aget (<- JR.getField this "offScreenImage") (<- JR.call (<- JR.getField this "drawCircularIndexUtil") "getIndex_0" #[]))
    let _ := (<- JR.call l_graphics "drawImage_4" #[(<- JR.getField this "previousImage"), (JV.int 0), (JV.int 0), (<- JR.getField this "anchor")])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameCanvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ProcessPaintable" this #[]
    let _ <- jfields this
    throw (<- JR.new "Exception" #[(JV.str "No Longer Used")])

initialize JR.registerClass {
    name := "BufferedGameCanvasPaintHelper",
    javaName := "org.allbinary.game.displayable.canvas.BufferedGameCanvasPaintHelper",
    super := "ProcessPaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("gameCanvas", JV.null), ("offScreenImage", JV.null), ("previousImage", JV.null), ("circularIndexUtil", JV.null), ("drawCircularIndexUtil", JV.null), ("anchor", (JV.int 0))],
    statics := #[("MAX_IMAGES", (JR.asI (JV.int 4)))],
    methods := #[
        ("process_0", #[], false, m_process_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["AllBinaryGameCanvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BufferedGameCanvasPaintHelper


