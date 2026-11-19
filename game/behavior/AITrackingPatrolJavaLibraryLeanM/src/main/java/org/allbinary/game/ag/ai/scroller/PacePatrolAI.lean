-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.scroller
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PacePatrolAI

def jfields (this : JV) : JM JV := do
    JR.setField this "isFollowLimitedByTerrain" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "PacePatrolAI" "update_0" #[])
    let mut l_direction : JV := (<- JR.call this "setFiringDirectionForTargetIfInRange_0" #[])
    let mut l_directionFactory : JV := (<- JR.callStatic "DirectionFactory" "getInstance_0" #[])
    if JR.truth (<- JR.eq l_direction (<- JR.getField l_directionFactory "LEFT")) then
        if JR.truth (<- JR.cor (<- JR.ne (<- JR.getInherited this "PacePatrolAI" "lastKeyDirection") (<- JR.getInherited this "PacePatrolAI" "keyDirection")) (do pure (JR.not (<- JR.getField this "isFollowLimitedByTerrain")))) then
            let _ := (<- JR.callSuper "BasePatrolAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "LEFT")])
            pure ()
        JR.setInherited this "PacePatrolAI" "keyDirection" (<- JR.getStatic "Canvas" "LEFT")
        JR.setInherited this "PacePatrolAI" "lastKeyDirection" (<- JR.getInherited this "PacePatrolAI" "keyDirection")
        JR.setInherited this "PacePatrolAI" "xTotalDistance" (JV.int 0)
        let _ := (<- JR.callSuper "BasePatrolAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_NUM1")])
        pure ()
    else
        if JR.truth (<- JR.eq l_direction (<- JR.getField l_directionFactory "RIGHT")) then
            if JR.truth (<- JR.cor (<- JR.ne (<- JR.getInherited this "PacePatrolAI" "lastKeyDirection") (<- JR.getInherited this "PacePatrolAI" "keyDirection")) (do pure (JR.not (<- JR.getField this "isFollowLimitedByTerrain")))) then
                let _ := (<- JR.callSuper "BasePatrolAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "RIGHT")])
                pure ()
            JR.setInherited this "PacePatrolAI" "keyDirection" (<- JR.getStatic "Canvas" "RIGHT")
            JR.setInherited this "PacePatrolAI" "lastKeyDirection" (<- JR.getInherited this "PacePatrolAI" "keyDirection")
            JR.setInherited this "PacePatrolAI" "xTotalDistance" (JV.int 0)
            let _ := (<- JR.callSuper "BasePatrolAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_NUM1")])
            pure ()
        else
            let _ := (<- JR.callSuper "BasePatrolAI" this "processKeyAI_1" #[(<- JR.getInherited this "PacePatrolAI" "keyDirection")])
            pure ()
    pure JV.null


def m_setFiringDirectionForTargetIfInRange_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_directionFactory : JV := (<- JR.callStatic "DirectionFactory" "getInstance_0" #[])
    let mut l_ownerLayerInterface : JV := (<- JR.callInherited this "PacePatrolAI" "getOwnerLayerInterface_0" #[])
    let mut l_direction : JV := (<- JR.getField l_directionFactory "NOT_BORDERED_WITH")
    let mut l_lastTrackingEvent : JV := JV.null
    let mut l_lastTrackingLayerInterface : JV := JV.null
    let mut l_directionCompositeInterface : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "trackingList") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_lastTrackingEvent := (<- JR.call (<- JR.getField this "trackingList") "get_1" #[(JV.int 0)])
            l_lastTrackingLayerInterface := (<- JR.call l_lastTrackingEvent "getLayerInterface_0" #[])
            let mut l_x : JV := (JR.asI (<- JR.call l_lastTrackingLayerInterface "getXP_0" #[]))
            let mut l_y : JV := (JR.asI (<- JR.call l_lastTrackingLayerInterface "getYP_0" #[]))
            let mut l_yDistance : JV := (JR.asI (<- JR.sub (<- JR.sub (<- JR.call l_ownerLayerInterface "getYP_0" #[]) l_y) (<- JR.call l_ownerLayerInterface "getHeight_0" #[])))
            let mut l_xDistance : JV := (JR.asI (<- JR.sub (<- JR.sub (<- JR.call l_ownerLayerInterface "getXP_0" #[]) l_x) (<- JR.call l_ownerLayerInterface "getWidth_0" #[])))
            let mut l_absXDistance : JV := (JR.asI (<- JR.callStatic "Math" "abs_1" #[l_xDistance]))
            let mut l_absYDistance : JV := (JR.asI (<- JR.callStatic "Math" "abs_1" #[l_yDistance]))
            if JR.truth (<- JR.le l_absYDistance (JV.int 100)) then
                if JR.truth (<- JR.lt l_absXDistance (<- JR.div (<- JR.call this "getFiringDistance_0" #[]) (JV.int 2))) then
                    l_directionCompositeInterface := (<- JR.callInherited this "PacePatrolAI" "getOwnerLayerInterface_0" #[])
                    if JR.truth (<- JR.cand (<- JR.lt l_xDistance (JV.int 0)) (do pure (<- JR.eq (<- JR.call l_directionCompositeInterface "getDirection_0" #[]) (<- JR.getField l_directionFactory "RIGHT")))) then
                        l_direction := (<- JR.getField l_directionFactory "RIGHT")
                        pure ()
                    else
                        if JR.truth (<- JR.cand (<- JR.gt l_xDistance (JV.int 0)) (do pure (<- JR.eq (<- JR.call l_directionCompositeInterface "getDirection_0" #[]) (<- JR.getField l_directionFactory "LEFT")))) then
                            l_direction := (<- JR.getField l_directionFactory "LEFT")
                            pure ()
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_direction


def m_disable_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onMovement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_trackingEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "trackingList") "clear_0" #[])
    let _ := (<- JR.call (<- JR.getField this "trackingList") "add_1" #[l_trackingEvent])
    pure JV.null


def m_getFiringDistance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "firingDistance"))


def m_setFiringDistance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_firingDistance : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "firingDistance" (JR.asI l_firingDistance)
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BasePatrolAI" this #[l_hashtable, l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.callStatic "TrackingEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[this])
    JR.setField this "trackingList" (<- JR.new "BasicArrayListD" #[])
    pure this

initialize JR.registerClass {
    name := "PacePatrolAI",
    javaName := "org.allbinary.game.ag.ai.scroller.PacePatrolAI",
    super := "BasePatrolAI",
    interfaces := #["TrackingEventListenerInterface"],
    isInterface := false,
    fields := #[("trackingList", JV.null), ("firingDistance", (JV.int 0)), ("isFollowLimitedByTerrain", (JV.bool false))],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("setFiringDirectionForTargetIfInRange_0", #[], false, m_setFiringDirectionForTargetIfInRange_0), 
        ("disable_0", #[], false, m_disable_0), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onMovement_1", #["TrackingEvent"], false, m_onMovement_1), 
        ("getFiringDistance_0", #[], false, m_getFiringDistance_0), 
        ("setFiringDistance_1", #["int"], false, m_setFiringDistance_1), 
        ("jinit_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PacePatrolAI


