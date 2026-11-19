-- Generated Code Do Not Modify
-- package org.allbinary.animation.caption
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CaptionAnimationHelperBase

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CaptionAnimationHelperBase" "INSTANCE" (<- JR.new "CaptionAnimationHelperBase" #[])
    pure JV.null


def m_isShowing_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_tick_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_update_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_message : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Animation" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CaptionAnimationHelperBase",
    javaName := "org.allbinary.animation.caption.CaptionAnimationHelperBase",
    super := "Animation",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("INSTANCE", JV.null)],
    methods := #[
        ("isShowing_0", #[], false, m_isShowing_0), 
        ("tick_0", #[], false, m_tick_0), 
        ("update_2", #["String", "BasicColor"], false, m_update_2), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CaptionAnimationHelperBase


