-- Generated Code Do Not Modify
-- package org.allbinary.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DirectionalAnalogLocationInputProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "gameKeyFactory" (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[])
    JR.setField this "leftGameKeyEvent" (<- JR.getStatic "GameKeyEvent" "NONE")
    JR.setField this "rightGameKeyEvent" (<- JR.getStatic "GameKeyEvent" "NONE")
    JR.setField this "upGameKeyEvent" (<- JR.getStatic "GameKeyEvent" "NONE")
    JR.setField this "downGameKeyEvent" (<- JR.getStatic "GameKeyEvent" "NONE")
    JR.setField this "leftTriggerGameKeyEvent" (<- JR.getStatic "GameKeyEvent" "NONE")
    JR.setField this "rightTriggerGameKeyEvent" (<- JR.getStatic "GameKeyEvent" "NONE")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_analogLocationInput : JV := (JR.arg jargs 1)
    try
        let mut l_customGPoint : JV := JV.null
        l_customGPoint := (<- JR.call l_analogLocationInput "getCustomGPoint_0" #[])
        let mut l_x : JV := (JR.asI (<- JR.call l_customGPoint "getX_0" #[]))
        let mut l_y : JV := (JR.asI (<- JR.call l_customGPoint "getY_0" #[]))
        let mut l_leftTrigger : JV := (JR.asI (<- JR.call l_analogLocationInput "getLeftTrigger_0" #[]))
        let mut l_rightTrigger : JV := (JR.asI (<- JR.call l_analogLocationInput "getRightTrigger_0" #[]))
        if JR.truth (<- JR.lt l_x (JV.int 0)) then
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "inputProcessorArray") (<- JR.call (<- JR.getField this "leftGameKeyEvent") "getKey_0" #[])) "processAnalog_3" #[l_allbinaryLayerManager, (<- JR.getField this "leftGameKeyEvent"), l_x])
            pure ()
        else
            if JR.truth (<- JR.gt l_x (JV.int 0)) then
                let _ := (<- JR.call (<- JR.aget (<- JR.getField this "inputProcessorArray") (<- JR.call (<- JR.getField this "rightGameKeyEvent") "getKey_0" #[])) "processAnalog_3" #[l_allbinaryLayerManager, (<- JR.getField this "rightGameKeyEvent"), l_x])
                pure ()
        if JR.truth (<- JR.lt l_y (JV.int 0)) then
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "inputProcessorArray") (<- JR.call (<- JR.getField this "downGameKeyEvent") "getKey_0" #[])) "processAnalog_3" #[l_allbinaryLayerManager, (<- JR.getField this "downGameKeyEvent"), l_y])
            pure ()
        else
            if JR.truth (<- JR.gt l_y (JV.int 0)) then
                let _ := (<- JR.call (<- JR.aget (<- JR.getField this "inputProcessorArray") (<- JR.call (<- JR.getField this "upGameKeyEvent") "getKey_0" #[])) "processAnalog_3" #[l_allbinaryLayerManager, (<- JR.getField this "upGameKeyEvent"), l_y])
                pure ()
        if JR.truth (<- JR.gt l_leftTrigger (JV.int 0)) then
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "inputProcessorArray") (<- JR.call (<- JR.getField this "leftTriggerGameKeyEvent") "getKey_0" #[])) "processAnalog_3" #[l_allbinaryLayerManager, (<- JR.getField this "leftTriggerGameKeyEvent"), l_leftTrigger])
            pure ()
        if JR.truth (<- JR.gt l_rightTrigger (JV.int 0)) then
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "inputProcessorArray") (<- JR.call (<- JR.getField this "rightTriggerGameKeyEvent") "getKey_0" #[])) "processAnalog_3" #[l_allbinaryLayerManager, (<- JR.getField this "rightTriggerGameKeyEvent"), l_rightTrigger])
            pure ()
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(JV.str "Unable to process analog input"), this, (<- JR.getField l_commonStrings "PROCESS"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def m_getSourceId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputProcessorArray : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AnalogLocationInputProcessor" this #[]
    let _ <- jfields this
    JR.setField this "inputProcessorArray" l_inputProcessorArray
    try
        JR.setField this "leftGameKeyEvent" (<- JR.call (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[]) "getInstanceForInput_2" #[this, (<- JR.getField (<- JR.getField this "gameKeyFactory") "LEFT")])
        JR.setField this "rightGameKeyEvent" (<- JR.call (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[]) "getInstanceForInput_2" #[this, (<- JR.getField (<- JR.getField this "gameKeyFactory") "RIGHT")])
        JR.setField this "upGameKeyEvent" (<- JR.call (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[]) "getInstanceForInput_2" #[this, (<- JR.getField (<- JR.getField this "gameKeyFactory") "UP")])
        JR.setField this "downGameKeyEvent" (<- JR.call (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[]) "getInstanceForInput_2" #[this, (<- JR.getField (<- JR.getField this "gameKeyFactory") "DOWN")])
        JR.setField this "leftTriggerGameKeyEvent" (<- JR.call (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[]) "getInstanceForInput_2" #[this, (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM0")])
        JR.setField this "rightTriggerGameKeyEvent" (<- JR.call (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[]) "getInstanceForInput_2" #[this, (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM5")])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "CONSTRUCTOR"), l_e])
            pure ()
        else
            throw jex0
    pure this

initialize JR.registerClass {
    name := "DirectionalAnalogLocationInputProcessor",
    javaName := "org.allbinary.input.DirectionalAnalogLocationInputProcessor",
    super := "AnalogLocationInputProcessor",
    interfaces := #["GameKeyEventSourceInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("inputProcessorArray", JV.null), ("gameKeyFactory", JV.null), ("leftGameKeyEvent", JV.null), ("rightGameKeyEvent", JV.null), ("upGameKeyEvent", JV.null), ("downGameKeyEvent", JV.null), ("leftTriggerGameKeyEvent", JV.null), ("rightTriggerGameKeyEvent", JV.null)],
    statics := #[],
    methods := #[
        ("process_2", #["AllBinaryLayerManager", "AnalogLocationInput"], false, m_process_2), 
        ("getSourceId_0", #[], false, m_getSourceId_0), 
        ("jinit_1", #["GameInputProcessorArr"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DirectionalAnalogLocationInputProcessor


