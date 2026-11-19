-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpecialDownGameInputProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getInherited this "SpecialDownGameInputProcessor" "collidableDestroyableDamageableLayer") "down_0" #[])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "SpecialGameInputProcessor" this #[l_collidableDestroyableDamageableLayer]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SpecialDownGameInputProcessor",
    javaName := "org.allbinary.game.layer.special.SpecialDownGameInputProcessor",
    super := "SpecialGameInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("processEvent_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_processEvent_2), 
        ("jinit_1", #["CollidableDestroyableDamageableLayer"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpecialDownGameInputProcessor


