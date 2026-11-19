-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.life
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LivesHudWidget

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateMeasurement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "BasicHud" this "updateMeasurement_1" #[l_graphics])
    let mut l_maxLives : JV := (JR.asI (JR.toI (<- JR.call (<- JR.call this "getLifeInterface_0" #[]) "getMaxlives_0" #[])))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_maxLives)) then break
            JR.aset (<- JR.getField this "xArray") l_index (JR.asI (<- JR.add (<- JR.callInherited this "LivesHudWidget" "getX_0" #[]) ((<- JR.mul l_index (JV.int 16)))))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_onDisplayChangeEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayChangeEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "BasicHud" this "onDisplayChangeEvent_1" #[l_displayChangeEvent])
    JR.setInherited this "LivesHudWidget" "myFontProcessor" (<- JR.getInherited this "LivesHudWidget" "updateMyFontProcessor")
    pure JV.null


def m_setX_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "BasicHud" this "setX_1" #[l_x])
    JR.setInherited this "LivesHudWidget" "myFontProcessor" (<- JR.getInherited this "LivesHudWidget" "updateMyFontProcessor")
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "LivesHudWidget" "myFontProcessor") "process_1" #[l_graphics])
    if true then
        let mut l_index : JV := (JR.asI (JR.toI (<- JR.call (<- JR.call this "getLifeInterface_0" #[]) "get_0" #[])))
        repeat
            let jtemp4 : JV := (JR.dec l_index)
            l_index := jtemp4
            
            if !(JR.truth (<- JR.ge jtemp4 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, (<- JR.aget (<- JR.getField this "xArray") l_index), (<- JR.callInherited this "LivesHudWidget" "getY_0" #[])])
            pure ()
        pure ()
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_getLifeInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "lifeInterface")


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterface : JV := (JR.arg jargs 0)
    let mut l_lifeInterface : JV := (JR.arg jargs 1)
    let mut l_location : JV := (JR.asI (JR.arg jargs 2))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 3))
    let _ <- JR.superInit "BasicHud" this #[l_location, l_direction, (JV.int 2), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")]
    let _ <- jfields this
    JR.setField this "lifeInterface" l_lifeInterface
    let mut l_size : JV := (JR.asI (JR.toI (<- JR.call (<- JR.call this "getLifeInterface_0" #[]) "getMaxlives_0" #[])))
    JR.setField this "xArray" (<- JR.newArray "I" 1 #[l_size])
    JR.setField this "animationInterface" l_animationInterface
    JR.setInherited this "LivesHudWidget" "updateMaxWidth" (<- JR.mul (JR.toI (<- JR.call (<- JR.getField this "lifeInterface") "getMaxlives_0" #[])) (JV.int 16))
    JR.setInherited this "LivesHudWidget" "updateMaxHeight" (JV.int 16)
    pure this

initialize JR.registerClass {
    name := "LivesHudWidget",
    javaName := "org.allbinary.game.ag.layer.hud.basic.life.LivesHudWidget",
    super := "BasicHud",
    interfaces := #["PaintableInterface"],
    isInterface := false,
    fields := #[("lifeInterface", JV.null), ("xArray", JV.null), ("animationInterface", JV.null)],
    statics := #[],
    methods := #[
        ("updateMeasurement_1", #["Graphics"], false, m_updateMeasurement_1), 
        ("onDisplayChangeEvent_1", #["DisplayChangeEvent"], false, m_onDisplayChangeEvent_1), 
        ("setX_1", #["int"], false, m_setX_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("getLifeInterface_0", #[], false, m_getLifeInterface_0), 
        ("jinit_4", #["Animation", "Life", "int", "int"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LivesHudWidget


