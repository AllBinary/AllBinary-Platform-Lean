-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnalogInputBuilder

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AnalogInputBuilder" "instance" (<- JR.new "AnalogInputBuilder" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AnalogInputBuilder" "instance")


def m_disable_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputProcessorArray : JV := (JR.arg jargs 0)
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 1)
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "UP") (<- JR.new "SpecialUpGameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "DOWN") (<- JR.new "SpecialDownGameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "RIGHT") (<- JR.new "SpecialRightGameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "LEFT") (<- JR.new "SpecialLeftGameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "KEY_NUM0") (<- JR.new "Special1GameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "KEY_NUM5") (<- JR.new "Special3GameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    pure JV.null


def m_enable_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputProcessorArray : JV := (JR.arg jargs 0)
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 1)
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "UP") (<- JR.new "SpecialAnalogUpGameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "DOWN") (<- JR.new "SpecialAnalogDownGameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "RIGHT") (<- JR.new "SpecialAnalogRightGameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "LEFT") (<- JR.new "SpecialAnalogLeftGameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "KEY_NUM0") (<- JR.new "SpecialAnalogLeftTriggerGameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    JR.aset l_inputProcessorArray (<- JR.getStatic "Canvas" "KEY_NUM5") (<- JR.new "SpecialAnalogRightTriggerGameInputProcessor" #[l_collidableDestroyableDamageableLayer])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AnalogInputBuilder",
    javaName := "org.allbinary.game.layer.special.AnalogInputBuilder",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("disable_2", #["GameInputProcessorArr", "CollidableDestroyableDamageableLayer"], false, m_disable_2), 
        ("enable_2", #["GameInputProcessorArr", "CollidableDestroyableDamageableLayer"], false, m_enable_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnalogInputBuilder


