-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Special5GameInputInterfaceProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getInherited this "Special5GameInputInterfaceProcessor" "specialGameInputInterface") "special5_2" #[l_allbinaryLayerManager, l_gameKeyEvent])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_collidableDestroyableDamageableLayer : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "SpecialGameInputInterfaceProcessor" this #[l_collidableDestroyableDamageableLayer]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Special5GameInputInterfaceProcessor",
    javaName := "org.allbinary.game.layer.special.Special5GameInputInterfaceProcessor",
    super := "SpecialGameInputInterfaceProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("processEvent_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_processEvent_2), 
        ("jinit_1", #["SpecialGameInputInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Special5GameInputInterfaceProcessor


