-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.scroller
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasePatrolAI

def jfields (this : JV) : JM JV := do
    JR.setField this "lastKeyDirection" (JR.asI (<- JR.getStatic "Canvas" "RIGHT"))
    JR.setField this "keyDirection" (JR.asI (<- JR.getStatic "Canvas" "RIGHT"))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasePatrolAI" "MAX_DISTANCE" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 2)])
    JR.setStatic "BasePatrolAI" "DIRECTION_ARRAY" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 3)])
    JR.setStatic "BasePatrolAI" "FIRING_DISTANCE" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 4)])
    JR.setStatic "BasePatrolAI" "SPEED" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 5)])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "updateTotalDistance_0" #[])
    let _ := (<- JR.call this "changeDirectionIfReachedPacingAreaMax_0" #[])
    pure JV.null


def m_updateTotalDistance_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_velocityInterfaceCompositeInterface : JV := (<- JR.callInherited this "BasePatrolAI" "getOwnerLayerInterface_0" #[])
    let mut l_velocityProperties : JV := (<- JR.call l_velocityInterfaceCompositeInterface "getVelocityProperties_0" #[])
    JR.setField this "xTotalDistance" (JR.castLike (<- JR.getField this "xTotalDistance") (<- JR.add (<- JR.getField this "xTotalDistance") (<- JR.call (<- JR.call l_velocityProperties "getVelocityXBasicDecimalP_0" #[]) "getScaled_0" #[])))
    pure JV.null


def m_changeDirectionIfReachedPacingAreaMax_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mathUtil : JV := (<- JR.callStatic "MathUtil" "getInstance_0" #[])
    let mut l_totalDistance : JV := (JR.asI (<- JR.call l_mathUtil "abs_1" #[(<- JR.getField this "xTotalDistance")]))
    if JR.truth (<- JR.gt l_totalDistance (<- JR.getField this "currentDistance")) then
        let _ := (<- JR.call this "nextDirection_0" #[])
        pure ()
    pure JV.null


def m_nextDirection_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getField this "lastKeyDirection") (<- JR.getStatic "Canvas" "LEFT")) then
        JR.setField this "keyDirection" (JR.asI (<- JR.getStatic "Canvas" "RIGHT"))
        JR.setField this "lastKeyDirection" (JR.asI (<- JR.getField this "keyDirection"))
        JR.setField this "xTotalDistance" (JR.asI (JV.int 0))
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.getField this "lastKeyDirection") (<- JR.getStatic "Canvas" "RIGHT")) then
            JR.setField this "keyDirection" (JR.asI (<- JR.getStatic "Canvas" "LEFT"))
            JR.setField this "lastKeyDirection" (JR.asI (<- JR.getField this "keyDirection"))
            JR.setField this "xTotalDistance" (JR.asI (JV.int 0))
            pure ()
    pure JV.null


def m_disable_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "maxDistance" (<- JR.call l_hashtable "get_1" #[(<- JR.getStatic "BasePatrolAI" "MAX_DISTANCE")])
    JR.setField this "currentDistance" (JR.asI (<- JR.call (<- JR.getField this "maxDistance") "intValue_0" #[]))
    pure this

initialize JR.registerClass {
    name := "BasePatrolAI",
    javaName := "org.allbinary.game.ag.ai.scroller.BasePatrolAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("maxDistance", JV.null), ("currentDistance", (JV.int 0)), ("xTotalDistance", (JV.int 0)), ("lastKeyDirection", (JV.int 0)), ("keyDirection", (JV.int 0))],
    statics := #[("MAX_DISTANCE", JV.null), ("DIRECTION_ARRAY", JV.null), ("FIRING_DISTANCE", JV.null), ("SPEED", JV.null)],
    methods := #[
        ("update_0", #[], false, m_update_0), 
        ("updateTotalDistance_0", #[], false, m_updateTotalDistance_0), 
        ("changeDirectionIfReachedPacingAreaMax_0", #[], false, m_changeDirectionIfReachedPacingAreaMax_0), 
        ("nextDirection_0", #[], false, m_nextDirection_0), 
        ("disable_0", #[], false, m_disable_0), 
        ("jinit_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasePatrolAI


