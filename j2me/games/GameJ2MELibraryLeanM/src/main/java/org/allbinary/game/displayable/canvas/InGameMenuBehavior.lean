-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InGameMenuBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "InGameMenuBehavior" "instanceC" (<- JR.new "InGameMenuBehavior" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "InGameMenuBehavior" "instanceC")


def m_onDisplayChangeEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let mut l_displayChangeEvent : JV := (JR.arg jargs 1)
    let _ := (<- JR.call l_allBinaryGameCanvas "updateMenuFromEvent_1" #[l_displayChangeEvent])
    pure JV.null


def m_initSpecialPaint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "setNonBotPaintableP_1" #[(<- JR.new "GameCanvasNonBotPaintable" #[l_allBinaryGameCanvas])])
    pure JV.null


def m_initMenu_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "initMenu2_0" #[])
    pure JV.null


def m_updateMenu_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "initMenu2_0" #[])
    pure JV.null


def m_popupMenu_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "popupMenu2_0" #[])
    pure JV.null


def m_closeMenu_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryGameCanvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_allBinaryGameCanvas "closeMenu2_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BaseMenuBehavior" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InGameMenuBehavior",
    javaName := "org.allbinary.game.displayable.canvas.InGameMenuBehavior",
    super := "BaseMenuBehavior",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instanceC", JV.null)],
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

end jclass_InGameMenuBehavior


