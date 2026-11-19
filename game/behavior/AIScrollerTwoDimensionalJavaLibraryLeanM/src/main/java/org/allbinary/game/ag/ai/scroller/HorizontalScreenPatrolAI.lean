-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.scroller
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HorizontalScreenPatrolAI

def jfields (this : JV) : JM JV := do
    JR.setField this "keyDirection" (JR.asI (<- JR.getStatic "Canvas" "LEFT"))
    JR.setField this "displayInfoSingleton" (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "firingX" (JR.asI (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHalfWidth_0" #[]))
    JR.setField this "firedIndex" (JR.asI (JV.int 0))
    JR.setField this "MAX_FIRE" (JR.asI (JV.int 28))
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 240)])
    JR.setField this "secondaryPlayerQueue" (<- JR.callStatic "SecondaryPlayerQueueFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HorizontalScreenPatrolAI" "SOUND" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 433)])
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.getField this "keyDirection")])
    if JR.truth (<- JR.call (<- JR.getField this "timeDelayHelper") "isTimeTNT_0" #[]) then
        let mut l_layerInterface : JV := (<- JR.callInherited this "HorizontalScreenPatrolAI" "getOwnerLayerInterface_0" #[])
        let mut l_currentOwnerLayerX : JV := (JR.asI (<- JR.call l_layerInterface "getXP_0" #[]))
        if JR.truth (<- JR.lt l_currentOwnerLayerX (JR.neg (<- JR.call l_layerInterface "getWidth_0" #[]))) then
            let mut l_y : JV := (JR.asI (<- JR.call (<- JR.callStatic "MyRandomFactory" "getInstance_0" #[]) "getAbsoluteNextIntAllowZero_1" #[(JV.int 50)]))
            let _ := (<- JR.call l_layerInterface "setPosition_3" #[(<- JR.add (<- JR.add (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastWidth_0" #[]) (<- JR.call l_layerInterface "getWidth_0" #[])) (JV.int 50)), l_y, (<- JR.call l_layerInterface "getZP_0" #[])])
            JR.setField this "firedIndex" (JR.asI (JV.int 0))
            JR.setField this "firingX" (JR.asI (<- JR.add (<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHalfWidth_0" #[]) (<- JR.call (<- JR.callStatic "MyRandomFactory" "getInstance_0" #[]) "getNextInt_1" #[(<- JR.call (<- JR.getField this "displayInfoSingleton") "getLastHalfWidth_0" #[])])))
            let _ := (<- JR.call (<- JR.getField this "secondaryPlayerQueue") "add_1" #[(<- JR.getField this "sound")])
            pure ()
        if JR.truth (<- JR.cand (<- JR.lt l_currentOwnerLayerX (<- JR.getField this "firingX")) (do pure (<- JR.gt l_currentOwnerLayerX (JR.neg (<- JR.call l_layerInterface "getWidth_0" #[]))))) then
            let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_NUM1")])
            let mut l_gameLayerManager : JV := l_allBinaryLayerManager
            let mut l_FIRE : JV := (JR.asI (<- JR.shr ((<- JR.add (<- JR.call (<- JR.call l_gameLayerManager "getGameInfo_0" #[]) "getCurrentLevel_0" #[]) (JV.int 12))) (JV.int 2)))
            if JR.truth (<- JR.gt l_FIRE (<- JR.getField this "MAX_FIRE")) then
                l_FIRE := (JR.asI (<- JR.getField this "MAX_FIRE"))
                pure ()
            if JR.truth (<- JR.gt (<- JR.getField this "firedIndex") l_FIRE) then
                JR.setField this "firedIndex" (JR.asI (JV.int 0))
                JR.setField this "firingX" (JR.asI (<- JR.getStatic "Integer" "MIN_VALUE"))
                pure ()
            JR.setField this "firedIndex" (JR.inc (<- JR.getField this "firedIndex"))
            pure ()
        pure ()
    pure JV.null


def m_nextDirection_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "sound" (<- JR.call l_hashtable "get_1" #[(<- JR.getStatic "HorizontalScreenPatrolAI" "SOUND")])
    if JR.truth (<- JR.eq (<- JR.getField this "sound") JV.null) then
        throw (<- JR.new "Exception" #[(JV.str "No Sound Provided!!")])
    pure this

initialize JR.registerClass {
    name := "HorizontalScreenPatrolAI",
    javaName := "org.allbinary.game.ag.ai.scroller.HorizontalScreenPatrolAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("keyDirection", (JV.int 0)), ("displayInfoSingleton", JV.null), ("firingX", (JV.int 0)), ("firedIndex", (JV.int 0)), ("MAX_FIRE", (JV.int 0)), ("timeDelayHelper", JV.null), ("secondaryPlayerQueue", JV.null), ("sound", JV.null)],
    statics := #[("SOUND", JV.null)],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("nextDirection_0", #[], false, m_nextDirection_0), 
        ("jinit_3", #["ABHashtable", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HorizontalScreenPatrolAI


