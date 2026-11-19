-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DemoCanvasProgressUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_showProgress_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_demoCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "DemoCanvasProgressUtil" "showProgressOptionallyInTheBackground_2" #[l_demoCanvas, (JV.bool false)])
    pure JV.null


def m_showProgressOptionallyInTheBackground_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_demoCanvas : JV := (JR.arg jargs 0)
    let mut l_background : JV := (JR.arg jargs 1)
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_progressCanvas "startBackground_1" #[l_background])
    let mut l_paintableArray : JV := (<- JR.newArray "L" 1 #[(JV.int 2)])
    JR.aset l_paintableArray (JV.int 0) l_progressCanvas
    JR.aset l_paintableArray (JV.int 1) (<- JR.call l_demoCanvas "getDefaultPaintableInterface_0" #[])
    let _ := (<- JR.call l_demoCanvas "setDefaultPaintableInterface_1" #[(<- JR.new "PaintableComposite" #[l_paintableArray])])
    let _ := (<- JR.call l_demoCanvas "setPaintableInterface_1" #[(<- JR.call l_demoCanvas "getDefaultPaintableInterface_0" #[])])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DemoCanvasProgressUtil",
    javaName := "org.allbinary.game.displayable.canvas.DemoCanvasProgressUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("showProgress_1", #["DemoCanvas"], true, m_showProgress_1), 
        ("showProgressOptionallyInTheBackground_2", #["DemoCanvas", "boolean"], true, m_showProgressOptionallyInTheBackground_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DemoCanvasProgressUtil


