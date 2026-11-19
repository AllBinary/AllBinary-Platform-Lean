-- Generated Code Do Not Modify
-- package org.allbinary.animation.caption
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CaptionAnimationHelper

def jfields (this : JV) : JM JV := do
    JR.setField this "timeHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 620)])
    JR.setField this "textAnimation" (<- JR.new "TextAnimation" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.callStatic "AnimationBehavior" "getInstance_0" #[])])
    JR.setField this "animation" (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isShowing_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getField this "animation") (<- JR.getField this "captionAnimation")) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_tick_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.getField this "timeHelper") "isTime_1" #[(<- JR.getField (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[]) "startTime")]) then
        JR.setField this "animation" (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])
        pure ()
    pure JV.null


def m_update_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_message : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "textAnimation") "setBasicColorP_1" #[l_basicColor])
    let _ := (<- JR.call (<- JR.getField this "textAnimation") "setText_1" #[l_message])
    JR.setField this "animation" (<- JR.getField this "captionAnimation")
    let _ := (<- JR.call (<- JR.getField this "timeHelper") "setStartTimeTNT_0" #[])
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getField this "animation") "paintXY_3" #[l_graphics, l_x, l_y])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_captionAnimation : JV := (JR.arg jargs 0)
    let mut l_captionDx : JV := (JR.asI (JR.arg jargs 1))
    let mut l_captionDy : JV := (JR.asI (JR.arg jargs 2))
    let mut l_dx : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 4))
    let _ <- JR.superInit "CaptionAnimationHelperBase" this #[]
    let _ <- jfields this
    JR.setField this "captionAnimation" (<- JR.new "CaptionAnimation" #[l_captionAnimation, (<- JR.getField this "textAnimation"), l_captionDx, l_captionDy, l_dx, l_dy])
    pure this

initialize JR.registerClass {
    name := "CaptionAnimationHelper",
    javaName := "org.allbinary.animation.caption.CaptionAnimationHelper",
    super := "CaptionAnimationHelperBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("timeHelper", JV.null), ("textAnimation", JV.null), ("captionAnimation", JV.null), ("animation", JV.null)],
    statics := #[],
    methods := #[
        ("isShowing_0", #[], false, m_isShowing_0), 
        ("tick_0", #[], false, m_tick_0), 
        ("update_2", #["String", "BasicColor"], false, m_update_2), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_5", #["Animation", "int", "int", "int", "int"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CaptionAnimationHelper


