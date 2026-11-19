-- Generated Code Do Not Modify
-- package org.allbinary.animation.text
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CustomTextAnimationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK")
    JR.setField this "dx" (JR.asI (JV.int 0))
    JR.setField this "dy" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createDXY_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    let mut l_fontSize : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 3))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 4)
    let mut l_customTextAnimationFactory : JV := (<- JR.new "CustomTextAnimationFactory" #[l_text, l_fontSize, l_animationBehaviorFactory])
    JR.setField l_customTextAnimationFactory "dx" l_dx
    JR.setField l_customTextAnimationFactory "dy" l_dy
    return l_customTextAnimationFactory


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_customTextAnimation : JV := JV.null
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.getField this "dx") (JV.int 0)) (do pure (<- JR.ne (<- JR.getField this "dy") (JV.int 0)))) then
        l_customTextAnimation := (<- JR.new "AdjustCustomTextAnimation" #[(<- JR.getField this "text"), (<- JR.getField (<- JR.getField this "scaleProperties") "scaleHeight"), (<- JR.getField this "dx"), (<- JR.getField this "dy"), (<- JR.call (<- JR.getField this "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
        pure ()
    else
        l_customTextAnimation := (<- JR.new "CustomTextAnimation" #[(<- JR.getField this "text"), (<- JR.getField (<- JR.getField this "scaleProperties") "scaleHeight"), (<- JR.call (<- JR.getField this "animationBehaviorFactory") "getOrCreateInstance_0" #[])])
        pure ()
    let _ := (<- JR.call l_customTextAnimation "setBasicColorP_1" #[(<- JR.getField this "basicColor")])
    return l_customTextAnimation


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "font") "stringWidth_1" #[(<- JR.getField this "text")]))


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "font") "getHeight_0" #[]))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_text : JV := (JR.arg jargs 0)
    let mut l_fontSize : JV := (JR.asI (JR.arg jargs 1))
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "scaleProperties" (<- JR.new "ScaleProperties" #[])
    JR.setField this "text" l_text
    JR.setField (<- JR.getField this "scaleProperties") "scaleHeight" (JR.asI (<- JR.sub l_fontSize ((<- JR.div l_fontSize (JV.int 4)))))
    JR.setField this "initScaleHeight" (JR.asI (<- JR.getField (<- JR.getField this "scaleProperties") "scaleHeight"))
    JR.setField this "animationBehaviorFactory" l_animationBehaviorFactory
    JR.setField this "font" (<- JR.callStatic "Font" "getFont_3" #[(<- JR.getStatic "Font" "FACE_SYSTEM"), (<- JR.getStatic "Font" "STYLE_PLAIN"), (<- JR.getField this "initScaleHeight")])
    pure this

initialize JR.registerClass {
    name := "CustomTextAnimationFactory",
    javaName := "org.allbinary.animation.text.CustomTextAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("animationBehaviorFactory", JV.null), ("basicColor", JV.null), ("text", JV.null), ("initScaleHeight", (JV.int 0)), ("dx", (JV.int 0)), ("dy", (JV.int 0)), ("font", JV.null), ("scaleProperties", JV.null)],
    statics := #[],
    methods := #[
        ("createDXY_5", #["String", "int", "int", "int", "AnimationBehaviorFactory"], true, m_createDXY_5), 
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("jinit_3", #["String", "int", "AnimationBehaviorFactory"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CustomTextAnimationFactory


