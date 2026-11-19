-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LockablePaintable

def jfields (this : JV) : JM JV := do
    JR.setField this "animation" (<- JR.call (<- JR.call (<- JR.callStatic "FeaturedAnimationInterfaceFactoryInterfaceFactory" "getInstance_0" #[]) "get_1" #[(<- JR.getField (<- JR.callStatic "LockedResources" "getInstance_0" #[]) "LOCKED_DEMO_GAME_FEATURE_RESOURCE")]) "getInstance_1" #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_paint_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_currentIndex : JV := (JR.asI (JR.arg jargs 1))
    let mut l_x : JV := (JR.asI (JR.arg jargs 2))
    let mut l_y : JV := (JR.asI (JR.arg jargs 3))
    if JR.truth (<- JR.cand (<- JR.call (<- JR.callStatic "LockedUtil" "getInstance_0" #[]) "isLocked_0" #[]) (do pure (<- JR.ge l_currentIndex (<- JR.call this "getLockedIndex_0" #[])))) then
        let _ := (<- JR.call (<- JR.call this "getAnimation_0" #[]) "paintXY_3" #[l_graphics, l_x, l_y])
        pure ()
    pure JV.null


def m_getLockedIndex_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "lockedIndex"))


def m_getAnimation_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animation")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lockedIndex : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "ItemPaintable" this #[]
    let _ <- jfields this
    JR.setField this "lockedIndex" (JR.asI l_lockedIndex)
    pure this

initialize JR.registerClass {
    name := "LockablePaintable",
    javaName := "org.allbinary.graphics.form.LockablePaintable",
    super := "ItemPaintable",
    interfaces := #[],
    isInterface := false,
    fields := #[("animation", JV.null), ("lockedIndex", (JV.int 0))],
    statics := #[],
    methods := #[
        ("paint_4", #["Graphics", "int", "int", "int"], false, m_paint_4), 
        ("getLockedIndex_0", #[], false, m_getLockedIndex_0), 
        ("getAnimation_0", #[], false, m_getAnimation_0), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LockablePaintable


