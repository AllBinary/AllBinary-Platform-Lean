-- Generated Code Do Not Modify
-- package org.allbinary.game.health
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HealthBar

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onHealthChange_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "onHealthChange_1" #[(<- JR.div (<- JR.mul (<- JR.call (<- JR.getField this "healthInterface") "getHealth_0" #[]) (<- JR.call (<- JR.getField this "allbinaryLayer") "getWidth_0" #[])) (<- JR.call (<- JR.getField this "healthInterface") "getMaxHealth_0" #[]))])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintXY_3" #[l_graphics, (JV.int 0), (JV.int 0)])
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "animationInterface") "paintThreedXYZ_4" #[l_graphics, (JV.int 0), (JV.int 0), (JV.int 0)])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_healthInterface : JV := (JR.arg jargs 1)
    let mut l_animationInterface : JV := (JR.arg jargs 2)
    let mut l_direction : JV := (JR.asI (JR.arg jargs 3))
    let _ <- JR.superInit "Paintable" this #[]
    let _ <- jfields this
    JR.setField this "allbinaryLayer" l_layerInterface
    JR.setField this "animationInterface" l_animationInterface
    JR.setField this "healthInterface" l_healthInterface
    let _ := (<- JR.call (<- JR.getField this "healthInterface") "addListener_1" #[this])
    let _ := (<- JR.call this "onHealthChange_0" #[])
    pure this

initialize JR.registerClass {
    name := "HealthBar",
    javaName := "org.allbinary.game.health.HealthBar",
    super := "Paintable",
    interfaces := #["HealthListenerInterface"],
    isInterface := false,
    fields := #[("animationInterface", JV.null), ("healthInterface", JV.null), ("allbinaryLayer", JV.null)],
    statics := #[],
    methods := #[
        ("onHealthChange_0", #[], false, m_onHealthChange_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_4", #["AllBinaryLayer", "Health", "HealthBarAnimation", "int"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HealthBar


