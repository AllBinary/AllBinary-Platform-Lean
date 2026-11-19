-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpecialAnalogLeftTriggerGameInputProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAnalog_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let mut l_yAnalogValue : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "SpecialAnalogLeftTriggerGameInputProcessor" "collidableDestroyableDamageableLayer") "leftTrigger_3" #[l_allbinaryLayerManager, l_gameKeyEvent, l_yAnalogValue])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "SpecialGameInputProcessor" this #[l_collidableDestroyableDamageableLayer]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SpecialAnalogLeftTriggerGameInputProcessor",
    javaName := "org.allbinary.game.layer.special.SpecialAnalogLeftTriggerGameInputProcessor",
    super := "SpecialGameInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("processAnalog_3", #["AllBinaryLayerManager", "GameKeyEvent", "int"], false, m_processAnalog_3), 
        ("jinit_1", #["CollidableDestroyableDamageableLayer"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpecialAnalogLeftTriggerGameInputProcessor


