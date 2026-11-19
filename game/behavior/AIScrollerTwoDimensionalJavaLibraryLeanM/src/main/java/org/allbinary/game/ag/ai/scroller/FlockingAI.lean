-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.scroller
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FlockingAI

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_maxDistance : JV := (JR.asI (JV.int 0))
    let mut l_farAllbinaryLayer : JV := (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER")
    let mut l_groupLayerManagerListener : JV := (<- JR.callStatic "GroupLayerManagerListener" "getInstance_0" #[])
    let mut l_list : JV := (<- JR.call l_groupLayerManagerListener "getList_1" #[(<- JR.getField (<- JR.callStatic "BasicGroupFactory" "getInstance_0" #[]) "ENEMY")])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_allBinaryLayer : JV := JV.null
    let mut l_ownerLayerInterface : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_allBinaryLayer := (<- JR.call l_list "get_1" #[l_index])
            if JR.truth (<- JR.ne (<- JR.call l_allBinaryLayer "getType_0" #[]) (<- JR.callStatic "WeaponLayer" "getStaticType_0" #[])) then
                let mut l_distance : JV := (JR.asI (<- JR.call this "getXYDistance_1" #[l_allBinaryLayer]))
                if JR.truth (<- JR.gt l_distance l_maxDistance) then
                    l_maxDistance := (JR.asI l_distance)
                    l_farAllbinaryLayer := l_allBinaryLayer
                    if JR.truth (<- JR.gt l_distance (<- JR.getField this "allowedDistance")) then
                        break
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    if JR.truth (<- JR.gt l_maxDistance (<- JR.getField this "allowedDistance")) then
        if JR.truth (<- JR.ne l_farAllbinaryLayer (<- JR.getStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER")) then
            l_ownerLayerInterface := (<- JR.callInherited this "FlockingAI" "getOwnerLayerInterface_0" #[])
            if JR.truth (<- JR.lt (<- JR.call l_farAllbinaryLayer "getXP_0" #[]) (<- JR.call l_ownerLayerInterface "getXP_0" #[])) then
                let _ := (<- JR.callInherited this "FlockingAI" "processKeyAI_1" #[(<- JR.getStatic "Canvas" "LEFT")])
                pure ()
            else
                if JR.truth (<- JR.gt (<- JR.call l_farAllbinaryLayer "getXP_0" #[]) (<- JR.call l_ownerLayerInterface "getXP_0" #[])) then
                    let _ := (<- JR.callInherited this "FlockingAI" "processKeyAI_1" #[(<- JR.getStatic "Canvas" "RIGHT")])
                    pure ()
                else
                    if JR.truth (<- JR.gt (<- JR.call l_farAllbinaryLayer "getYP_0" #[]) (<- JR.call l_ownerLayerInterface "getYP_0" #[])) then
                        let _ := (<- JR.callInherited this "FlockingAI" "processKeyAI_1" #[(<- JR.getStatic "Canvas" "UP")])
                        pure ()
                    else
                        if JR.truth (<- JR.lt (<- JR.call l_farAllbinaryLayer "getYP_0" #[]) (<- JR.call l_ownerLayerInterface "getYP_0" #[])) then
                            let _ := (<- JR.callInherited this "FlockingAI" "processKeyAI_1" #[(<- JR.getStatic "Canvas" "DOWN")])
                            pure ()
            pure ()
        pure ()
    pure JV.null


def m_getXYDistance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayer : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (<- JR.callInherited this "FlockingAI" "getOwnerLayerInterface_0" #[])
    let mut l_xTotalDistance : JV := (JR.asI (<- JR.sub ((<- JR.add (<- JR.call l_allBinaryLayer "getXP_0" #[]) (<- JR.call l_allBinaryLayer "getHalfWidth_0" #[]))) ((<- JR.add (<- JR.call l_ownerLayerInterface "getXP_0" #[]) (<- JR.call l_ownerLayerInterface "getHalfWidth_0" #[])))))
    let mut l_yTotalDistance : JV := (JR.asI (<- JR.sub ((<- JR.add (<- JR.call l_allBinaryLayer "getYP_0" #[]) (<- JR.call l_allBinaryLayer "getHalfHeight_0" #[]))) ((<- JR.add (<- JR.call l_ownerLayerInterface "getYP_0" #[]) (<- JR.call l_ownerLayerInterface "getHalfHeight_0" #[])))))
    let mut l_mathUtil : JV := (<- JR.callStatic "MathUtil" "getInstance_0" #[])
    let mut l_totalDistance : JV := (JR.asI (<- JR.add (<- JR.call l_mathUtil "abs_1" #[l_xTotalDistance]) (<- JR.call l_mathUtil "abs_1" #[l_yTotalDistance])))
    return (JR.asI l_totalDistance)


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    let mut l_allowedDistance : JV := (<- JR.call l_hashtable "get_1" #[(<- JR.getStatic "BasePatrolAI" "MAX_DISTANCE")])
    JR.setField this "allowedDistance" (JR.asI (<- JR.call l_allowedDistance "intValue_0" #[]))
    pure this

initialize JR.registerClass {
    name := "FlockingAI",
    javaName := "org.allbinary.game.ag.ai.scroller.FlockingAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("allowedDistance", (JV.int 0))],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("getXYDistance_1", #["AllBinaryLayer"], false, m_getXYDistance_1), 
        ("jinit_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FlockingAI


