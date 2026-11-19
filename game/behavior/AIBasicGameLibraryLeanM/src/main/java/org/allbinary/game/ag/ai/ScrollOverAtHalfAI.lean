-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScrollOverAtHalfAI

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (<- JR.callInherited this "ScrollOverAtHalfAI" "getOwnerLayerInterface_0" #[])
    let mut l_x : JV := (JR.asI (<- JR.call l_ownerLayerInterface "getXP_0" #[]))
    let mut l_y : JV := (JR.asI (<- JR.call l_ownerLayerInterface "getYP_0" #[]))
    let mut l_halfWidth : JV := (JR.asI (<- JR.call l_ownerLayerInterface "getHalfWidth_0" #[]))
    let mut l_halfHeight : JV := (JR.asI (<- JR.call l_ownerLayerInterface "getHalfHeight_0" #[]))
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    if JR.truth (<- JR.gt l_x (<- JR.sub (<- JR.call l_displayInfo "getLastWidth_0" #[]) l_halfWidth)) then
        let _ := (<- JR.call l_ownerLayerInterface "setPosition_3" #[(<- JR.add l_halfWidth (JV.int 1)), l_y, (<- JR.call l_ownerLayerInterface "getZP_0" #[])])
        pure ()
    if JR.truth (<- JR.gt l_y (<- JR.sub (<- JR.call l_displayInfo "getLastHeight_0" #[]) l_halfHeight)) then
        let _ := (<- JR.call l_ownerLayerInterface "setPosition_3" #[l_x, (<- JR.add l_halfHeight (JV.int 1)), (<- JR.call l_ownerLayerInterface "getZP_0" #[])])
        pure ()
    if JR.truth (<- JR.lt l_x (JR.neg l_halfWidth)) then
        let _ := (<- JR.call l_ownerLayerInterface "setPosition_3" #[(<- JR.sub (<- JR.call l_displayInfo "getLastWidth_0" #[]) l_halfWidth), l_y, (<- JR.call l_ownerLayerInterface "getZP_0" #[])])
        pure ()
    if JR.truth (<- JR.lt l_y (JR.neg l_halfHeight)) then
        let _ := (<- JR.call l_ownerLayerInterface "setPosition_3" #[l_x, (<- JR.sub (<- JR.call l_displayInfo "getLastHeight_0" #[]) l_halfHeight), (<- JR.call l_ownerLayerInterface "getZP_0" #[])])
        pure ()
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    let mut l_gameInput : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ScrollOverAtHalfAI",
    javaName := "org.allbinary.game.ag.ai.ScrollOverAtHalfAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("jinit_2", #["AllBinaryLayer", "GameInput"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScrollOverAtHalfAI


