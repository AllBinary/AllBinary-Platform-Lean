-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicPopupMenuPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "basicSetColorUtil" (<- JR.callStatic "BasicColorSetUtil" "getInstance_0" #[])
    JR.setField this "drawStringUtil" (<- JR.callStatic "DrawVerticalStringUtil" "getInstance_0" #[])
    JR.setField this "myFontProcessor" (<- JR.new "UpdateMyFontProcessor" #[this])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_isOpenGL : JV := (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL")])
    let _ := (<- JR.call (<- JR.getField this "drawStringUtil") "updateMeasurement_2" #[l_graphics, (<- JR.getField this "label")])
    let mut l_BORDER : JV := (JR.asI (JV.int 0))
    if JR.truth (<- JR.cor (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) (do pure l_isOpenGL)) then
        l_BORDER := (JR.asI (<- JR.div (<- JR.callStatic "MyFontProcessor" "defaultCharWidth_1" #[l_font]) (JV.int 2)))
        pure ()
    else
        if JR.truth (<- JR.cor (<- JR.cor (<- JR.callStatic "AndroidUtil" "isAndroid_0" #[]) (do pure (<- JR.callStatic "J2MEUtil" "isJ2SE_0" #[]))) (do pure (<- JR.getStatic "SWTUtil" "isSWT"))) then
            l_BORDER := (JR.asI (<- JR.callStatic "MyFontProcessor" "defaultCharWidth_1" #[l_font]))
            pure ()
        else
            l_BORDER := (JR.asI (<- JR.mul (<- JR.callStatic "MyFontProcessor" "defaultCharWidth_1" #[l_font]) (JV.int 2)))
            pure ()
    JR.setField this "BORDER" (JR.asI l_BORDER)
    JR.setField this "heightOffset" (JR.asI (<- JR.sub (<- JR.call (<- JR.getField this "rectangle") "getHeight_0" #[]) ((<- JR.mul (<- JR.call l_font "getHeight_0" #[]) (<- JR.call (<- JR.getStatic "BasicPopupMenuPaintable" "NAME") "length_0" #[])))))
    if JR.truth (<- JR.call (<- JR.callStatic "OpenGLFeatureUtil" "getInstance_0" #[]) "isAnyThreed_0" #[]) then
        JR.setField this "heightOffset" (JR.castLike (<- JR.getField this "heightOffset") (<- JR.sub (<- JR.getField this "heightOffset") (<- JR.add (<- JR.call l_font "getHeight_0" #[]) (JV.int 2))))
        if JR.truth (<- JR.callStatic "AndroidUtil" "isAndroid_0" #[]) then
            JR.setField this "heightOffset" (JR.asI (<- JR.call l_font "getHeight_0" #[]))
            pure ()
        else
            JR.setField this "heightOffset" (JR.castLike (<- JR.getField this "heightOffset") (<- JR.sub (<- JR.getField this "heightOffset") (<- JR.add (<- JR.call l_font "getHeight_0" #[]) (JV.int 2))))
            pure ()
        pure ()
    JR.setField this "offset" (JR.asI (<- JR.add ((<- JR.shr (<- JR.getField this "heightOffset") (JV.int 1))) ((<- JR.cond (<- JR.call (<- JR.callStatic "SWTJOGLProcessor" "getInstance_0" #[]) "isJOGL_0" #[]) (do pure (JV.int 4)) (do pure (JV.int 0))))))
    JR.setField this "myFontProcessor" (<- JR.callStatic "MyFontProcessor" "getInstance_0" #[])
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    JR.setField this "rectangle" l_rectangle
    let mut l_width : JV := (JR.asI (<- JR.call (<- JR.getField this "rectangle") "getWidth_0" #[]))
    let mut l_height : JV := (JR.asI (<- JR.call (<- JR.getField this "rectangle") "getHeight_0" #[]))
    if JR.truth (<- JR.cor (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[]) (do pure (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]))) then
        pure ()
    else
        let mut l_rectangleFilledAnimation : JV := (<- JR.getField this "animationInterface")
        let _ := (<- JR.call l_rectangleFilledAnimation "setWidth_1" #[l_width])
        let _ := (<- JR.call l_rectangleFilledAnimation "setHeight_1" #[l_height])
        pure ()
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "myFontProcessor") "process_1" #[l_graphics])
    let mut l_point : JV := (<- JR.call (<- JR.getField this "rectangle") "getPoint_0" #[])
    let mut l_x : JV := (JR.asI (<- JR.call l_point "getX_0" #[]))
    let mut l_y : JV := (JR.asI (<- JR.call l_point "getY_0" #[]))
    let mut l_width : JV := (JR.asI (<- JR.call (<- JR.getField this "rectangle") "getWidth_0" #[]))
    let mut l_height : JV := (JR.asI (<- JR.call (<- JR.getField this "rectangle") "getHeight_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, l_x, l_y])
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.getField this "foregroundBasicColor")])
    let _ := (<- JR.call (<- JR.getField this "drawStringUtil") "paintVerticle_5" #[l_graphics, (<- JR.getField this "label"), (<- JR.add l_x (<- JR.getField this "BORDER")), (<- JR.add l_y (<- JR.getField this "offset")), (JV.int 0)])
    let _ := (<- JR.call l_graphics "drawRect_4" #[l_x, l_y, l_width, l_height])
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectangle : JV := (JR.arg jargs 0)
    let mut l_backgroundBasicColor : JV := (JR.arg jargs 1)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "foregroundBasicColor" l_foregroundBasicColor
    JR.setField this "label" (<- JR.getStatic "BasicPopupMenuPaintable" "NAME")
    JR.setField this "rectangle" l_rectangle
    if JR.truth (<- JR.cor (<- JR.callStatic "J2MEUtil" "isJ2ME_0" #[]) (do pure (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]))) then
        JR.setField this "animationInterface" (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])
        pure ()
    else
        JR.setField this "animationInterface" (<- JR.new "RectangleFilledAnimation" #[(<- JR.call (<- JR.getField this "rectangle") "getWidth_0" #[]), (<- JR.call (<- JR.getField this "rectangle") "getHeight_0" #[]), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "TRANSPARENT_GREY")])
        pure ()
    let _ := (<- JR.call this "init_1" #[l_rectangle])
    pure this

initialize JR.registerClass {
    name := "BasicPopupMenuPaintable",
    javaName := "org.allbinary.game.displayable.canvas.BasicPopupMenuPaintable",
    super := "Paintable",
    interfaces := #["UpdateMyFontInterface"],
    isInterface := false,
    fields := #[("basicSetColorUtil", JV.null), ("drawStringUtil", JV.null), ("label", JV.null), ("foregroundBasicColor", JV.null), ("myFontProcessor", JV.null), ("rectangle", JV.null), ("BORDER", (JV.int 0)), ("heightOffset", (JV.int 0)), ("offset", (JV.int 0)), ("animationInterface", JV.null)],
    statics := #[("NAME", (JV.str "MENU"))],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("init_1", #["Rectangle"], false, m_init_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_3", #["Rectangle", "BasicColor", "BasicColor"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicPopupMenuPaintable


