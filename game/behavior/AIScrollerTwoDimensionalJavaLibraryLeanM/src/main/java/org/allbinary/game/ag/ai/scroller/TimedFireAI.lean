-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.scroller
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TimedFireAI

def jfields (this : JV) : JM JV := do
    JR.setField this "maxFireDelayTimeHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TimedFireAI" "TIME" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 1)])
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_timeFiredInterface : JV := (<- JR.callInherited this "TimedFireAI" "getOwnerLayerInterface_0" #[])
    if JR.truth (<- JR.cand (<- JR.call (<- JR.getField this "maxFireDelayTimeHelper") "isTime_1" #[(<- JR.getField (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[]) "startTime")]) (do pure (<- JR.lt (<- JR.add (<- JR.call l_timeFiredInterface "getLastFireTime_0" #[]) (<- JR.getField (<- JR.getField this "maxFireDelayTimeHelper") "delay")) (<- JR.call (<- JR.getField this "maxFireDelayTimeHelper") "getStartTime_0" #[])))) then
        let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_NUM1")])
        JR.setField (<- JR.getField this "maxFireDelayTimeHelper") "delay" (<- JR.getField this "delay")
        pure ()
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_delay : JV := (JR.asI (JR.arg jargs 0))
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 1)
    let mut l_gameInput : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "delay" (JR.asI l_delay)
    pure this

initialize JR.registerClass {
    name := "TimedFireAI",
    javaName := "org.allbinary.game.ag.ai.scroller.TimedFireAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("maxFireDelayTimeHelper", JV.null), ("delay", (JV.int 0))],
    statics := #[("TIME", JV.null)],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("jinit_3", #["int", "AllBinaryLayer", "GameInput"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TimedFireAI


