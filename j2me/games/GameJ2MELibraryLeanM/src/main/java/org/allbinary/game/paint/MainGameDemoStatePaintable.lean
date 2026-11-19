-- Generated Code Do Not Modify
-- package org.allbinary.game.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MainGameDemoStatePaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "menuPaintableInterface") "paint_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "ownershipPaintableInterface") "paint_1" #[l_graphics])
    pure JV.null


def m_getOwnershipPaintableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "ownershipPaintableInterface")


def m_getMenuPaintableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "menuPaintableInterface")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownershipPaintableInterface : JV := (JR.arg jargs 0)
    let mut l_menuPaintableInterface : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "ownershipPaintableInterface" l_ownershipPaintableInterface
    JR.setField this "menuPaintableInterface" l_menuPaintableInterface
    pure this

initialize JR.registerClass {
    name := "MainGameDemoStatePaintable",
    javaName := "org.allbinary.game.paint.MainGameDemoStatePaintable",
    super := "Paintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("ownershipPaintableInterface", JV.null), ("menuPaintableInterface", JV.null)],
    statics := #[],
    methods := #[
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("getOwnershipPaintableInterface_0", #[], false, m_getOwnershipPaintableInterface_0), 
        ("getMenuPaintableInterface_0", #[], false, m_getMenuPaintableInterface_0), 
        ("jinit_2", #["Paintable", "Paintable"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MainGameDemoStatePaintable


