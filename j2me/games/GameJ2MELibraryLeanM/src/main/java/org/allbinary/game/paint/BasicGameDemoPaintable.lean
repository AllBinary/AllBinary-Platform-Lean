-- Generated Code Do Not Modify
-- package org.allbinary.game.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicGameDemoPaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "currentStatePaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_state : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.eq l_state (JV.int 0)) then
        let _ := (<- JR.call this "setCurrentStatePaintable_1" #[(<- JR.call this "getMainDemoStatePaintable_0" #[])])
        pure ()
    else
        if JR.truth (<- JR.eq l_state (JV.int 1)) then
            let _ := (<- JR.call this "setCurrentStatePaintable_1" #[(<- JR.getField this "helpPaintableInterface")])
            pure ()
        else
            let _ := (<- JR.call this "setCurrentStatePaintable_1" #[(<- JR.getField this "ownershipPaintable")])
            pure ()
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.call this "getCurrentStatePaintable_0" #[]) "paint_1" #[l_graphics])
    pure JV.null


def m_getHelpPaintableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "helpPaintableInterface")


def m_setCurrentStatePaintable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentStatePaintable : JV := (JR.arg jargs 0)
    JR.setField this "currentStatePaintable" l_currentStatePaintable
    pure JV.null


def m_getCurrentStatePaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "currentStatePaintable")


def m_getMainDemoStatePaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "mainDemoStatePaintable")


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mainDemoStatePaintable : JV := (JR.arg jargs 0)
    let mut l_ownershipPaintable : JV := (JR.arg jargs 1)
    let mut l_helpPaintableInterface : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "StatePaintable" this #[]
    let _ <- jfields this
    JR.setField this "mainDemoStatePaintable" l_mainDemoStatePaintable
    let _ := (<- JR.call this "setCurrentStatePaintable_1" #[(<- JR.callStatic "NullPaintable" "getInstance_0" #[])])
    JR.setField this "ownershipPaintable" l_ownershipPaintable
    JR.setField this "helpPaintableInterface" l_helpPaintableInterface
    pure this

initialize JR.registerClass {
    name := "BasicGameDemoPaintable",
    javaName := "org.allbinary.game.paint.BasicGameDemoPaintable",
    super := "StatePaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("mainDemoStatePaintable", JV.null), ("ownershipPaintable", JV.null), ("helpPaintableInterface", JV.null), ("currentStatePaintable", JV.null)],
    statics := #[],
    methods := #[
        ("setState_1", #["int"], false, m_setState_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("getHelpPaintableInterface_0", #[], false, m_getHelpPaintableInterface_0), 
        ("setCurrentStatePaintable_1", #["Paintable"], false, m_setCurrentStatePaintable_1), 
        ("getCurrentStatePaintable_0", #[], false, m_getCurrentStatePaintable_0), 
        ("getMainDemoStatePaintable_0", #[], false, m_getMainDemoStatePaintable_0), 
        ("jinit_3", #["Paintable", "Paintable", "Paintable"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicGameDemoPaintable


