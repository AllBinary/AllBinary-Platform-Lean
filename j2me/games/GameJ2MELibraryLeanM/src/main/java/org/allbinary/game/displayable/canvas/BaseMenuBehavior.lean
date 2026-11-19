-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseMenuBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BaseMenuBehavior" "instance" (<- JR.new "BaseMenuBehavior" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BaseMenuBehavior" "instance")


def m_onDisplayChangeEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let mut l_displayChangeEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_initSpecialPaint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "setNonBotPaintableP_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
    pure JV.null


def m_initMenu_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def m_updateMenu_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def m_popupMenu_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def m_closeMenu_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BaseMenuBehavior",
    javaName := "org.allbinary.game.displayable.canvas.BaseMenuBehavior",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("onDisplayChangeEvent_2", #["AllBinaryGameCanvas", "DisplayChangeEvent"], false, m_onDisplayChangeEvent_2), 
        ("initSpecialPaint_1", #["AllBinaryGameCanvas"], false, m_initSpecialPaint_1), 
        ("initMenu_1", #["AllBinaryGameCanvas"], false, m_initMenu_1), 
        ("updateMenu_1", #["AllBinaryGameCanvas"], false, m_updateMenu_1), 
        ("popupMenu_1", #["AllBinaryGameCanvas"], false, m_popupMenu_1), 
        ("closeMenu_1", #["AllBinaryGameCanvas"], false, m_closeMenu_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseMenuBehavior


