-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DiveAndDirectionalTrackingAI

def jfields (this : JV) : JM JV := do
    JR.setField this "mathUtil" (<- JR.callStatic "MathUtil" "getInstance_0" #[])
    JR.setField this "directionFactory" (<- JR.callStatic "DirectionFactory" "getInstance_0" #[])
    JR.setField this "gameTickTimeDelayHelper" (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[])
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 500)])
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "directionToKeyMap" (<- JR.arrayOf "I" #[(<- JR.getStatic "Canvas" "LEFT"), (<- JR.getStatic "Canvas" "DOWN"), (<- JR.getStatic "Canvas" "UP"), (<- JR.getStatic "Canvas" "RIGHT")])
    JR.setField this "directionOfTarget" (<- JR.callStatic "Direction" "getInstance_1" #[(JV.int 0)])
    JR.setField this "MIN_DISTANCE" (JR.asI (JV.int 40))
    JR.setField this "lastTrackingLayerInterface" (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER")
    JR.setField this "lastDirection" (<- JR.getField (<- JR.callStatic "DirectionFactory" "getInstance_0" #[]) "NO_DIRECTION")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call this "isBeyondTarget_0" #[]) then
        let _ := (<- JR.call this "init_0" #[])
        let _ := (<- JR.call (<- JR.getField this "velocityInterface") "zero_0" #[])
        pure ()
    if JR.truth (JR.not (<- JR.getField this "diveP")) then
        let _ := (<- JR.call this "target_1" #[l_allBinaryLayerManager])
        pure ()
    else
        let _ := (<- JR.call this "dive_0" #[])
        let _ := (<- JR.call this "attack_0" #[])
        pure ()
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "diveP" (JV.bool false)
    JR.setField this "directionOfTarget" (<- JR.getField (<- JR.callStatic "DirectionFactory" "getInstance_0" #[]) "NOT_BORDERED_WITH")
    let _ := (<- JR.call (<- JR.callStatic "TrackingEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[this])
    pure JV.null


def m_target_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.call (<- JR.getField this "list") "size_0" #[]) (JV.int 0)) then
        return JV.null
    let mut l_lastTrackingEvent : JV := (<- JR.call (<- JR.getField this "list") "removeAt_1" #[(JV.int 0)])
    JR.setField this "lastTrackingLayerInterface" (<- JR.call l_lastTrackingEvent "getLayerInterface_0" #[])
    let mut l_layerInterface : JV := (<- JR.getField this "lastTrackingLayerInterface")
    let mut l_ownerLayerInterface : JV := (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getOwnerLayerInterface_0" #[])
    let mut l_groupArray : JV := (<- JR.call l_layerInterface "getGroupInterface_0" #[])
    let mut l_ownerGroupArray : JV := (<- JR.call l_ownerLayerInterface "getGroupInterface_0" #[])
    if JR.truth (<- JR.eq l_groupArray l_ownerGroupArray) then
        return JV.null
    let mut l_x : JV := (JR.asI (<- JR.call (<- JR.getField this "lastTrackingLayerInterface") "getXP_0" #[]))
    let mut l_y : JV := (JR.asI (<- JR.call (<- JR.getField this "lastTrackingLayerInterface") "getYP_0" #[]))
    let mut l_yDistance : JV := (JR.asI (<- JR.sub (<- JR.sub (<- JR.call l_ownerLayerInterface "getYP_0" #[]) l_y) (<- JR.call l_ownerLayerInterface "getHeight_0" #[])))
    let mut l_xDistance : JV := (JR.asI (<- JR.sub (<- JR.sub (<- JR.call l_ownerLayerInterface "getXP_0" #[]) l_x) (<- JR.call l_ownerLayerInterface "getWidth_0" #[])))
    let mut l_directionFactory : JV := (<- JR.callStatic "DirectionFactory" "getInstance_0" #[])
    if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "mathUtil") "abs_1" #[l_yDistance]) (<- JR.call (<- JR.getField this "mathUtil") "abs_1" #[l_xDistance])) then
        if JR.truth (<- JR.gt l_yDistance (<- JR.getField this "MIN_DISTANCE")) then
            JR.setField this "directionOfTarget" (<- JR.getField l_directionFactory "UP")
            pure ()
        else
            if JR.truth (<- JR.lt l_yDistance (JR.neg (<- JR.getField this "MIN_DISTANCE"))) then
                JR.setField this "directionOfTarget" (<- JR.getField l_directionFactory "DOWN")
                pure ()
        pure ()
    else
        if JR.truth (<- JR.gt l_xDistance (<- JR.getField this "MIN_DISTANCE")) then
            JR.setField this "directionOfTarget" (<- JR.getField l_directionFactory "LEFT")
            pure ()
        else
            if JR.truth (<- JR.lt l_xDistance (JR.neg (<- JR.getField this "MIN_DISTANCE"))) then
                JR.setField this "directionOfTarget" (<- JR.getField l_directionFactory "RIGHT")
                pure ()
        pure ()
    if JR.truth (<- JR.cand (JR.not (<- JR.getField this "initialDropped")) (do pure (<- JR.ne (<- JR.getField this "directionOfTarget") (<- JR.getField l_directionFactory "NOT_BORDERED_WITH")))) then
        let _ := (<- JR.call this "drop_0" #[])
        pure ()
    if JR.truth (<- JR.getField this "initialDropped") then
        if JR.truth (<- JR.cor (<- JR.eq (<- JR.getField this "directionOfTarget") (<- JR.getField l_directionFactory "UP")) (do pure (<- JR.eq (<- JR.getField this "directionOfTarget") (<- JR.getField l_directionFactory "DOWN")))) then
            let _ := (<- JR.call this "verticalTargeting_1" #[l_x])
            pure ()
        else
            if JR.truth (<- JR.cor (<- JR.eq (<- JR.getField this "directionOfTarget") (<- JR.getField l_directionFactory "LEFT")) (do pure (<- JR.eq (<- JR.getField this "directionOfTarget") (<- JR.getField l_directionFactory "RIGHT")))) then
                let _ := (<- JR.call this "horizontalTargeting_1" #[l_y])
                pure ()
            else
                let _ := (<- JR.call (<- JR.getField this "artificialIntelligenceInterface") "processAI_1" #[l_allBinaryLayerManager])
                pure ()
        pure ()
    pure JV.null


def m_verticalTargeting_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_ownerLayerInterface : JV := (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getOwnerLayerInterface_0" #[])
    if JR.truth (<- JR.lt (<- JR.call l_ownerLayerInterface "getXP_0" #[]) l_x) then
        let _ := (<- JR.call this "moveRight_0" #[])
        pure ()
    if JR.truth (<- JR.gt (<- JR.call l_ownerLayerInterface "getXP_0" #[]) l_x) then
        let _ := (<- JR.call this "moveLeft_0" #[])
        pure ()
    if JR.truth (<- JR.cand (<- JR.gt (<- JR.call l_ownerLayerInterface "getXP_0" #[]) (<- JR.sub l_x (JV.int 3))) (do pure (<- JR.lt (<- JR.call l_ownerLayerInterface "getXP_0" #[]) (<- JR.add l_x (JV.int 3))))) then
        let _ := (<- JR.call this "setDive_0" #[])
        pure ()
    pure JV.null


def m_horizontalTargeting_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_y : JV := (JR.asI (JR.arg jargs 0))
    let mut l_ownerLayerInterface : JV := (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getOwnerLayerInterface_0" #[])
    if JR.truth (<- JR.lt (<- JR.call l_ownerLayerInterface "getYP_0" #[]) l_y) then
        let _ := (<- JR.call this "moveDown_0" #[])
        pure ()
    if JR.truth (<- JR.gt (<- JR.call l_ownerLayerInterface "getYP_0" #[]) l_y) then
        let _ := (<- JR.call this "moveUp_0" #[])
        pure ()
    if JR.truth (<- JR.cand (<- JR.gt (<- JR.call l_ownerLayerInterface "getYP_0" #[]) (<- JR.sub l_y (JV.int 3))) (do pure (<- JR.lt (<- JR.call l_ownerLayerInterface "getYP_0" #[]) (<- JR.add l_y (JV.int 3))))) then
        let _ := (<- JR.call this "setDive_0" #[])
        pure ()
    pure JV.null


def m_setDive_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "diveP" (JV.bool true)
    let _ := (<- JR.call (<- JR.getField this "velocityInterface") "zero_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "TrackingEventHandler" "getInstance_0" #[]) "removeListener_1" #[this])
    pure JV.null


def m_moveRight_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setLastDirection_1" #[(<- JR.getField (<- JR.getField this "directionFactory") "RIGHT")])
    let _ := (<- JR.call (<- JR.getField this "directionalInterface") "setFrameByDirection_1" #[(<- JR.getField this "lastDirection")])
    let _ := (<- JR.call (<- JR.getField this "aiVistor") "visit_1" #[this])
    pure JV.null


def m_moveLeft_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setLastDirection_1" #[(<- JR.getField (<- JR.getField this "directionFactory") "LEFT")])
    let _ := (<- JR.call (<- JR.getField this "directionalInterface") "setFrameByDirection_1" #[(<- JR.getField this "lastDirection")])
    let _ := (<- JR.call (<- JR.getField this "aiVistor") "visit_1" #[this])
    pure JV.null


def m_moveDown_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setLastDirection_1" #[(<- JR.getField (<- JR.getField this "directionFactory") "DOWN")])
    let _ := (<- JR.call (<- JR.getField this "directionalInterface") "setFrameByDirection_1" #[(<- JR.getField this "lastDirection")])
    let _ := (<- JR.call (<- JR.getField this "aiVistor") "visit_1" #[this])
    pure JV.null


def m_moveUp_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "setLastDirection_1" #[(<- JR.getField (<- JR.getField this "directionFactory") "UP")])
    let _ := (<- JR.call (<- JR.getField this "directionalInterface") "setFrameByDirection_1" #[(<- JR.getField this "lastDirection")])
    let _ := (<- JR.call (<- JR.getField this "aiVistor") "visit_1" #[this])
    pure JV.null


def m_dive_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "directionalInterface") "setFrameByDirection_1" #[(<- JR.getField this "directionOfTarget")])
    let _ := (<- JR.call (<- JR.getField this "aiVistor") "visit_1" #[this])
    pure JV.null


def m_attack_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_NUM1")])
    pure JV.null


def m_drop_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.getField this "timeDelayHelper") "isTime_1" #[(<- JR.getField (<- JR.getField this "gameTickTimeDelayHelper") "startTime")]) then
        JR.setField this "initialDropped" (JV.bool true)
        let _ := (<- JR.call (<- JR.getField this "aiVistor") "visit_1" #[this])
        pure ()
    pure JV.null


def m_isBeyondTarget_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getField this "directionOfTarget") (<- JR.getField (<- JR.getField this "directionFactory") "DOWN")) then
        if JR.truth (<- JR.gt (<- JR.call (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getOwnerLayerInterface_0" #[]) "getYP_0" #[]) (<- JR.add (<- JR.call (<- JR.getField this "lastTrackingLayerInterface") "getYP_0" #[]) (<- JR.getField this "MIN_DISTANCE"))) then
            return (JV.bool true)
        else
            return (JV.bool false)
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.getField this "directionOfTarget") (<- JR.getField (<- JR.getField this "directionFactory") "UP")) then
            if JR.truth (<- JR.lt (<- JR.call (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getOwnerLayerInterface_0" #[]) "getYP_0" #[]) (<- JR.add (<- JR.call (<- JR.getField this "lastTrackingLayerInterface") "getYP_0" #[]) (<- JR.getField this "MIN_DISTANCE"))) then
                return (JV.bool true)
            else
                return (JV.bool false)
            pure ()
        else
            if JR.truth (<- JR.eq (<- JR.getField this "directionOfTarget") (<- JR.getField (<- JR.getField this "directionFactory") "RIGHT")) then
                if JR.truth (<- JR.gt (<- JR.call (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getOwnerLayerInterface_0" #[]) "getXP_0" #[]) (<- JR.add (<- JR.call (<- JR.getField this "lastTrackingLayerInterface") "getXP_0" #[]) (<- JR.getField this "MIN_DISTANCE"))) then
                    return (JV.bool true)
                else
                    return (JV.bool false)
                pure ()
            else
                if JR.truth (<- JR.eq (<- JR.getField this "directionOfTarget") (<- JR.getField (<- JR.getField this "directionFactory") "LEFT")) then
                    if JR.truth (<- JR.lt (<- JR.call (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getOwnerLayerInterface_0" #[]) "getXP_0" #[]) (<- JR.add (<- JR.call (<- JR.getField this "lastTrackingLayerInterface") "getXP_0" #[]) (<- JR.getField this "MIN_DISTANCE"))) then
                        return (JV.bool true)
                    else
                        return (JV.bool false)
                    pure ()
                else
                    return (JV.bool false)
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onMovement_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_trackingEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_trackingEvent])
    pure JV.null


def m_onDestroyed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_destroyedEvent : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getOwnerLayerInterface_0" #[]) (<- JR.call l_destroyedEvent "getLayerInterface_0" #[])) then
        let _ := (<- JR.call (<- JR.callStatic "TrackingEventHandler" "getInstance_0" #[]) "removeListener_1" #[this])
        let _ := (<- JR.call (<- JR.callStatic "DestroyedEventHandler" "getInstance_0" #[]) "removeListener_1" #[this])
        pure ()
    pure JV.null


def m_setLastDirection_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lastDirection : JV := (JR.arg jargs 0)
    JR.setField this "lastDirection" l_lastDirection
    let mut l_value : JV := (JR.asI (<- JR.call (<- JR.call this "getLastDirection_0" #[]) "getValue_0" #[]))
    if JR.truth (<- JR.lt l_value (JV.int 4)) then
        let _ := (<- JR.callSuper "BasicAI" this "setLastKey_1" #[(<- JR.aget (<- JR.getField this "directionToKeyMap") l_value)])
        pure ()
    pure JV.null


def m_setLastKey_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lastKey : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "BasicAI" this "setLastKey_1" #[l_lastKey])
    if JR.truth (<- JR.eq (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getLastKey_0" #[]) (<- JR.getStatic "Canvas" "LEFT")) then
        JR.setField this "lastDirection" (<- JR.getField (<- JR.callStatic "DirectionFactory" "getInstance_0" #[]) "LEFT")
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getLastKey_0" #[]) (<- JR.getStatic "Canvas" "DOWN")) then
            JR.setField this "lastDirection" (<- JR.getField (<- JR.callStatic "DirectionFactory" "getInstance_0" #[]) "DOWN")
            pure ()
        else
            if JR.truth (<- JR.eq (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getLastKey_0" #[]) (<- JR.getStatic "Canvas" "UP")) then
                JR.setField this "lastDirection" (<- JR.getField (<- JR.callStatic "DirectionFactory" "getInstance_0" #[]) "UP")
                pure ()
            else
                if JR.truth (<- JR.eq (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getLastKey_0" #[]) (<- JR.getStatic "Canvas" "RIGHT")) then
                    JR.setField this "lastDirection" (<- JR.getField (<- JR.callStatic "DirectionFactory" "getInstance_0" #[]) "RIGHT")
                    pure ()
    pure JV.null


def m_getLastDirection_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "lastDirection")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.callSuper "BasicAI" this "toString_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " LastDirection: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.call this "getLastDirection_0" #[])])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    let mut l_artificialIntelligenceInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let mut l_visitor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "aiVistor" l_visitor
    JR.setField this "artificialIntelligenceInterface" l_artificialIntelligenceInterface
    let mut l_directionalCompositeInterface : JV := (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getOwnerLayerInterface_0" #[])
    JR.setField this "directionalInterface" (<- JR.call l_directionalCompositeInterface "getDirectionalInterface_0" #[])
    let mut l_velocityInterfaceCompositeInterface : JV := (<- JR.callInherited this "DiveAndDirectionalTrackingAI" "getOwnerLayerInterface_0" #[])
    JR.setField this "velocityInterface" (<- JR.call l_velocityInterfaceCompositeInterface "getVelocityProperties_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "DestroyedEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[this])
    let _ := (<- JR.call this "init_0" #[])
    pure this

initialize JR.registerClass {
    name := "DiveAndDirectionalTrackingAI",
    javaName := "org.allbinary.game.ag.ai.DiveAndDirectionalTrackingAI",
    super := "BasicAI",
    interfaces := #["TrackingEventListenerInterface", "DestroyedEventListenerInterface"],
    isInterface := false,
    fields := #[("mathUtil", JV.null), ("directionFactory", JV.null), ("gameTickTimeDelayHelper", JV.null), ("timeDelayHelper", JV.null), ("list", JV.null), ("directionalInterface", JV.null), ("velocityInterface", JV.null), ("directionToKeyMap", JV.null), ("initialDropped", (JV.bool false)), ("diveP", (JV.bool false)), ("directionOfTarget", JV.null), ("MIN_DISTANCE", (JV.int 0)), ("lastTrackingLayerInterface", JV.null), ("artificialIntelligenceInterface", JV.null), ("aiVistor", JV.null), ("lastDirection", JV.null)],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("init_0", #[], false, m_init_0), 
        ("target_1", #["AllBinaryLayerManager"], false, m_target_1), 
        ("verticalTargeting_1", #["int"], false, m_verticalTargeting_1), 
        ("horizontalTargeting_1", #["int"], false, m_horizontalTargeting_1), 
        ("setDive_0", #[], false, m_setDive_0), 
        ("moveRight_0", #[], false, m_moveRight_0), 
        ("moveLeft_0", #[], false, m_moveLeft_0), 
        ("moveDown_0", #[], false, m_moveDown_0), 
        ("moveUp_0", #[], false, m_moveUp_0), 
        ("dive_0", #[], false, m_dive_0), 
        ("attack_0", #[], false, m_attack_0), 
        ("drop_0", #[], false, m_drop_0), 
        ("isBeyondTarget_0", #[], false, m_isBeyondTarget_0), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onMovement_1", #["TrackingEvent"], false, m_onMovement_1), 
        ("onDestroyed_1", #["DestroyedEvent"], false, m_onDestroyed_1), 
        ("setLastDirection_1", #["Direction"], false, m_setLastDirection_1), 
        ("setLastKey_1", #["int"], false, m_setLastKey_1), 
        ("getLastDirection_0", #[], false, m_getLastDirection_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_4", #["AllBinaryLayer", "ArtificialIntelligenceInterface", "GameInput", "Visitor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DiveAndDirectionalTrackingAI


