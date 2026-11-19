-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MyFormUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "popupMenuRectangle" (<- JR.getStatic "RectangleFactory" "SINGLETON")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MyFormUtil" "instance" (<- JR.new "MyFormUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MyFormUtil" "instance")


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_font : JV := (<- JR.call l_graphics "getFont_0" #[])
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_isOpenGL : JV := (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL")])
    let mut l_TOTAL_CHAR_WIDTH : JV := (JR.asI (<- JR.cond (<- JR.cand (<- JR.call (<- JR.callStatic "SWTJOGLProcessor" "getInstance_0" #[]) "isJOGL_0" #[]) (do pure l_isOpenGL)) (do pure (JV.int 2)) (do pure (JV.int 3))))
    let mut l_width : JV := (JR.asI (<- JR.callStatic "MyFontProcessor" "defaultStringWidth_2" #[l_font, l_TOTAL_CHAR_WIDTH]))
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    if JR.truth (<- JR.lt (<- JR.call l_displayInfo "getLastHeight_0" #[]) (JV.int 320)) then
        JR.setField this "popupMenuRectangle" (<- JR.new "Rectangle" #[(<- JR.call l_pointFactory "createXY_2" #[(JV.int 0), (JV.int 25)]), l_width, (<- JR.add ((<- JR.mul (<- JR.call l_font "getHeight_0" #[]) (JV.int 4))) (JV.int 2))])
        pure ()
    else
        JR.setField this "popupMenuRectangle" (<- JR.new "Rectangle" #[(<- JR.call l_pointFactory "createXY_2" #[(JV.int 0), (<- JR.sub (<- JR.call l_displayInfo "getLastHalfHeight_0" #[]) (JV.int 70))]), l_width, ((<- JR.mul (<- JR.call l_font "getHeight_0" #[]) (JV.int 5)))])
        pure ()
    pure JV.null


def m_getPopupMenuRectangle_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "popupMenuRectangle")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MyFormUtil",
    javaName := "org.allbinary.game.displayable.canvas.MyFormUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("popupMenuRectangle", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("getPopupMenuRectangle_0", #[], false, m_getPopupMenuRectangle_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MyFormUtil


