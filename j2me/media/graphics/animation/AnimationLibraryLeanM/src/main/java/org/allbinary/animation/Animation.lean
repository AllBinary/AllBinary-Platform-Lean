-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Animation

def jfields (this : JV) : JM JV := do
    JR.setField this "basicSetColorUtil" (<- JR.callStatic "BasicColorSetUtil" "getInstance_0" #[])
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")
    JR.setField this "changeBasicColorP" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "NULL_COLOR")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setAlpha_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_alpha : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "alphaP" (JR.asI l_alpha)
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP3_3" #[l_graphics, (<- JR.call this "getBasicColorP_0" #[]), (<- JR.call this "getColor_0" #[])])
    pure JV.null


def m_paintThreedXYZ_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_isThreed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColor")


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "basicColor" l_basicColor
    JR.setField this "colorP" (JR.asI (<- JR.call (<- JR.getField this "basicColor") "intValue_0" #[]))
    pure JV.null


def m_setBackgroundBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    pure JV.null


def m_getChangeBasicColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "changeBasicColorP")


def m_changeBasicColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "changeBasicColorP" l_basicColor
    JR.setField this "changeColorP" (JR.asI (<- JR.call (<- JR.getField this "changeBasicColorP") "intValue_0" #[]))
    pure JV.null


def m_getChangeColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "changeColorP"))


def m_getColor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "colorP"))


def m_setScale_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleX : JV := (JR.asF (JR.arg jargs 0))
    let mut l_scaleY : JV := (JR.asF (JR.arg jargs 1))
    pure JV.null


def m_setMaxScale_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxScaleX : JV := (JR.asF (JR.arg jargs 0))
    let mut l_maxScaleY : JV := (JR.asF (JR.arg jargs 1))
    pure JV.null


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    pure JV.null


def m_setDx_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_getDx_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_setDy_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dy : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_getDy_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Animation",
    javaName := "org.allbinary.animation.Animation",
    super := "Object",
    interfaces := #["AnimationInterface", "OpenGLSurfaceChangedInterface"],
    isInterface := false,
    fields := #[("basicSetColorUtil", JV.null), ("basicColor", JV.null), ("colorP", (JV.int 0)), ("changeBasicColorP", JV.null), ("changeColorP", (JV.int 0)), ("alphaP", (JV.int 0))],
    statics := #[],
    methods := #[
        ("setAlpha_1", #["int"], false, m_setAlpha_1), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paintThreedXYZ_4", #["Graphics", "int", "int", "int"], false, m_paintThreedXYZ_4), 
        ("isThreed_0", #[], false, m_isThreed_0), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("setBackgroundBasicColorP_1", #["BasicColor"], false, m_setBackgroundBasicColorP_1), 
        ("getChangeBasicColor_0", #[], false, m_getChangeBasicColor_0), 
        ("changeBasicColor_1", #["BasicColor"], false, m_changeBasicColor_1), 
        ("getChangeColor_0", #[], false, m_getChangeColor_0), 
        ("getColor_0", #[], false, m_getColor_0), 
        ("setScale_2", #["float", "float"], false, m_setScale_2), 
        ("setMaxScale_2", #["float", "float"], false, m_setMaxScale_2), 
        ("set_1", #["GL"], false, m_set_1), 
        ("setDx_1", #["int"], false, m_setDx_1), 
        ("getDx_0", #[], false, m_getDx_0), 
        ("setDy_1", #["int"], false, m_setDy_1), 
        ("getDy_0", #[], false, m_getDy_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Animation


