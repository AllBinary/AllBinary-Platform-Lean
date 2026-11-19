-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.scroller
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RandomPatrolAI

def jfields (this : JV) : JM JV := do
    JR.setField this "changedDirection" (JV.bool true)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_updateRandomDistance_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setInherited this "RandomPatrolAI" "currentDistance" (<- JR.call (<- JR.callStatic "MyRandomFactory" "getInstance_0" #[]) "getAbsoluteNextInt_1" #[(<- JR.call (<- JR.getInherited this "RandomPatrolAI" "maxDistance") "intValue_0" #[])])
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "BasePatrolAI" this "update_0" #[])
    let _ := (<- JR.callSuper "BasePatrolAI" this "processKeyAI_1" #[(<- JR.getInherited this "RandomPatrolAI" "keyDirection")])
    if JR.truth (<- JR.getField this "changedDirection") then
        let _ := (<- JR.callSuper "BasePatrolAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_NUM1")])
        let _ := (<- JR.call this "updateRandomDistance_0" #[])
        JR.setField this "changedDirection" (JV.bool false)
        pure ()
    pure JV.null


def m_nextDirection_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "BasePatrolAI" this "nextDirection_0" #[])
    JR.setField this "changedDirection" (JV.bool true)
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BasePatrolAI" this #[l_hashtable, l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    let _ := (<- JR.call this "updateRandomDistance_0" #[])
    pure this

initialize JR.registerClass {
    name := "RandomPatrolAI",
    javaName := "org.allbinary.game.ag.ai.scroller.RandomPatrolAI",
    super := "BasePatrolAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("changedDirection", (JV.bool false))],
    statics := #[],
    methods := #[
        ("updateRandomDistance_0", #[], false, m_updateRandomDistance_0), 
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("nextDirection_0", #[], false, m_nextDirection_0), 
        ("jinit_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RandomPatrolAI


