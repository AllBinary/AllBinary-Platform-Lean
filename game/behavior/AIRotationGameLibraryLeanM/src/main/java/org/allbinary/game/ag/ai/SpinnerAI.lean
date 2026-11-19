-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpinnerAI

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.getField this "isEven") then
        let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.aget (<- JR.getField this "direction") (JV.int 0))])
        JR.setField this "isEven" (JV.bool false)
        pure ()
    else
        let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_NUM1")])
        JR.setField this "isEven" (JV.bool true)
        pure ()
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_direction : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "direction" l_direction
    pure this

initialize JR.registerClass {
    name := "SpinnerAI",
    javaName := "org.allbinary.game.ag.ai.SpinnerAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("isEven", (JV.bool false)), ("direction", JV.null)],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("jinit_3", #["intArr", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpinnerAI


