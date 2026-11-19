-- Generated Code Do Not Modify
-- package org.allbinary.android.input.motion
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnalogControllerHelper

def jfields (this : JV) : JM JV := do
    JR.setField this "SCALE_VALUE" (JR.asI (<- JR.getField (<- JR.callStatic "AnalogControllerConfigurationFactory" "getInstance_0" #[]) "SCALE_VALUE"))
    JR.setField this "rightTimeElapsedHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 0)])
    JR.setField this "leftTimeElapsedHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 0)])
    JR.setField this "downTimeElapsedHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 0)])
    JR.setField this "upTimeElapsedHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_right_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 0)
    let mut l_xAnalogValue : JV := (JR.asI (JR.arg jargs 1))
    JR.setField (<- JR.getField this "rightTimeElapsedHelper") "delay" (JR.asI ((<- JR.shr ((<- JR.sub (<- JR.getField this "SCALE_VALUE") l_xAnalogValue)) (<- JR.getField this "reduceTimeFactor"))))
    if JR.truth (<- JR.call (<- JR.getField this "rightTimeElapsedHelper") "isTimeTNT_0" #[]) then
        let _ := (<- JR.call l_collidableDestroyableDamageableLayer "right_0" #[])
        pure ()
    pure JV.null


def m_left_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 0)
    let mut l_xAnalogValue : JV := (JR.asI (JR.arg jargs 1))
    JR.setField (<- JR.getField this "leftTimeElapsedHelper") "delay" (JR.asI ((<- JR.shr ((<- JR.add (<- JR.getField this "SCALE_VALUE") l_xAnalogValue)) (<- JR.getField this "reduceTimeFactor"))))
    if JR.truth (<- JR.call (<- JR.getField this "leftTimeElapsedHelper") "isTimeTNT_0" #[]) then
        let _ := (<- JR.call l_collidableDestroyableDamageableLayer "left_0" #[])
        pure ()
    pure JV.null


def m_up_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 0)
    let mut l_xAnalogValue : JV := (JR.asI (JR.arg jargs 1))
    JR.setField (<- JR.getField this "upTimeElapsedHelper") "delay" (JR.asI ((<- JR.shr ((<- JR.sub (<- JR.getField this "SCALE_VALUE") l_xAnalogValue)) (<- JR.getField this "reduceTimeFactor"))))
    if JR.truth (<- JR.call (<- JR.getField this "upTimeElapsedHelper") "isTimeTNT_0" #[]) then
        let _ := (<- JR.call l_collidableDestroyableDamageableLayer "up_0" #[])
        pure ()
    pure JV.null


def m_down_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 0)
    let mut l_xAnalogValue : JV := (JR.asI (JR.arg jargs 1))
    JR.setField (<- JR.getField this "downTimeElapsedHelper") "delay" (JR.asI ((<- JR.shr ((<- JR.add (<- JR.getField this "SCALE_VALUE") l_xAnalogValue)) (<- JR.getField this "reduceTimeFactor"))))
    if JR.truth (<- JR.call (<- JR.getField this "downTimeElapsedHelper") "isTimeTNT_0" #[]) then
        let _ := (<- JR.call l_collidableDestroyableDamageableLayer "down_0" #[])
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_reduceTimeFactor : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "reduceTimeFactor" (JR.asI l_reduceTimeFactor)
    pure this

initialize JR.registerClass {
    name := "AnalogControllerHelper",
    javaName := "org.allbinary.android.input.motion.AnalogControllerHelper",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("reduceTimeFactor", (JV.int 0)), ("SCALE_VALUE", (JV.int 0)), ("rightTimeElapsedHelper", JV.null), ("leftTimeElapsedHelper", JV.null), ("downTimeElapsedHelper", JV.null), ("upTimeElapsedHelper", JV.null)],
    statics := #[],
    methods := #[
        ("right_2", #["CollidableDestroyableDamageableLayer", "int"], false, m_right_2), 
        ("left_2", #["CollidableDestroyableDamageableLayer", "int"], false, m_left_2), 
        ("up_2", #["CollidableDestroyableDamageableLayer", "int"], false, m_up_2), 
        ("down_2", #["CollidableDestroyableDamageableLayer", "int"], false, m_down_2), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnalogControllerHelper


