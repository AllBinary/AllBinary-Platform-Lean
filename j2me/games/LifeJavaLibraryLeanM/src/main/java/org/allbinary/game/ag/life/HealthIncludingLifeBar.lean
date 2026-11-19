-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.life
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HealthIncludingLifeBar

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createHealthIncludingLifeBar_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_life : JV := (JR.arg jargs 1)
    let mut l_healthInterface : JV := (JR.arg jargs 2)
    let mut l_location : JV := (JR.asI (JR.arg jargs 3))
    let mut l_direction : JV := (JR.asI (JR.arg jargs 4))
    return (<- JR.new "HealthIncludingLifeBar" #[l_layerInterface, l_life, l_healthInterface, (<- JR.new "HealthBarTwodAnimation" #[l_layerInterface, l_location]), l_direction])


def m_onHealthChange_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "onHealthChange_1" #[(<- JR.div ((<- JR.mul ((<- JR.add (<- JR.call (<- JR.getField this "healthInterface") "getHealth_0" #[]) ((<- JR.mul (<- JR.call (<- JR.getField this "healthInterface") "getMaxHealth_0" #[]) (JR.toI (<- JR.call (<- JR.getField this "life") "get_0" #[])))))) (<- JR.call (<- JR.getField this "allbinaryLayer") "getWidth_0" #[]))) ((<- JR.add (<- JR.call (<- JR.getField this "healthInterface") "getMaxHealth_0" #[]) ((<- JR.mul (<- JR.call (<- JR.getField this "healthInterface") "getMaxHealth_0" #[]) (JR.toI (<- JR.call (<- JR.getField this "life") "getStartLives_0" #[])))))))])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, (JV.int 0), (JV.int 0)])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintThreedXYZ_4" #[l_graphics, (JV.int 0), (JV.int 0), (JV.int 0)])
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_life : JV := (JR.arg jargs 1)
    let mut l_healthInterface : JV := (JR.arg jargs 2)
    let mut l_animationInterface : JV := (JR.arg jargs 3)
    let mut l_direction : JV := (JR.asI (JR.arg jargs 4))
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "allbinaryLayer" l_layerInterface
    JR.setField this "animationInterface" l_animationInterface
    JR.setField this "life" l_life
    JR.setField this "healthInterface" l_healthInterface
    let _ := (<- JR.call (<- JR.getField this "healthInterface") "addListener_1" #[this])
    let _ := (<- JR.call this "onHealthChange_0" #[])
    pure this

initialize JR.registerClass {
    name := "HealthIncludingLifeBar",
    javaName := "org.allbinary.game.ag.life.HealthIncludingLifeBar",
    super := "Paintable",
    interfaces := #["HealthListenerInterface"],
    isInterface := false,
    fields := #[("animationInterface", JV.null), ("life", JV.null), ("healthInterface", JV.null), ("allbinaryLayer", JV.null)],
    statics := #[],
    methods := #[
        ("createHealthIncludingLifeBar_5", #["AllBinaryLayer", "Life", "Health", "int", "int"], true, m_createHealthIncludingLifeBar_5), 
        ("onHealthChange_0", #[], false, m_onHealthChange_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_5", #["AllBinaryLayer", "Life", "Health", "HealthBarAnimation", "int"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HealthIncludingLifeBar


