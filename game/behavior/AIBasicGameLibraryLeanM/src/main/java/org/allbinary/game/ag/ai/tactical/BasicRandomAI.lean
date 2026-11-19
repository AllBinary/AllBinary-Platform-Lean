-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.tactical
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicRandomAI

def jfields (this : JV) : JM JV := do
    JR.setField this "i_random" (JR.asI (JV.int 0))
    JR.setField this "keyArray" (<- JR.arrayOf "I" #[(<- JR.getStatic "Canvas" "UP"), (<- JR.getStatic "Canvas" "DOWN"), (<- JR.getStatic "Canvas" "LEFT"), (<- JR.getStatic "Canvas" "RIGHT"), (<- JR.getStatic "Canvas" "KEY_NUM1"), (<- JR.getStatic "Canvas" "KEY_NUM7"), (<- JR.getStatic "Canvas" "KEY_NUM9")])
    JR.setField this "myRandomFactory" (<- JR.callStatic "MyRandomFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.call (<- JR.getField this "inputProbability") "getTimeDelayHelper_0" #[]) "isTime_1" #[(<- JR.getField (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[]) "startTime")]) then
        JR.setField this "i_random" (JR.asI (<- JR.call (<- JR.getField this "myRandomFactory") "getAbsoluteNextInt_1" #[(<- JR.call (<- JR.getField this "inputProbability") "getMax_0" #[])]))
        let mut l_repeat : JV := (JV.bool false)
        let mut l_repeatLikelyhoodIntegerArray : JV := (<- JR.call (<- JR.getField this "inputProbability") "getRepeatLikelyhoodIntegerArray_0" #[])
        if JR.truth (<- JR.cand (<- JR.ne (<- JR.callInherited this "BasicRandomAI" "getLastKey_0" #[]) (JV.int (-1))) (do pure (<- JR.ge (<- JR.call (<- JR.aget l_repeatLikelyhoodIntegerArray (<- JR.callInherited this "BasicRandomAI" "getLastKey_0" #[])) "intValue_0" #[]) (<- JR.getField this "i_random")))) then
            l_repeat := (JV.bool true)
            pure ()
        if JR.truth (JR.not l_repeat) then
            let mut l_likelyhoodIntegerArray : JV := (<- JR.call (<- JR.getField this "inputProbability") "getLikelyhoodIntegerArray_0" #[])
            JR.setField this "i_random" (JR.asI (<- JR.call (<- JR.getField this "myRandomFactory") "getAbsoluteNextInt_1" #[(<- JR.call (<- JR.getField this "inputProbability") "getMax_0" #[])]))
            let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "keyArray")))
            let mut l_likelyhoodIntegerKeyArray : JV := JV.null
            if true then
                let mut l_index : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_index l_size)) then break
                    let mut l_key : JV := (JR.asI (<- JR.aget (<- JR.getField this "keyArray") l_index))
                    l_likelyhoodIntegerKeyArray := (<- JR.aget l_likelyhoodIntegerArray l_key)
                    if JR.truth (<- JR.cand (<- JR.ge (<- JR.alen l_likelyhoodIntegerArray) l_key) (do pure (<- JR.ne (<- JR.aget l_likelyhoodIntegerKeyArray (JV.int 0)) JV.null))) then
                        if JR.truth (<- JR.cand (<- JR.ge (<- JR.getField this "i_random") (<- JR.call (<- JR.aget l_likelyhoodIntegerKeyArray (JV.int 0)) "intValue_0" #[])) (do pure (<- JR.lt (<- JR.getField this "i_random") (<- JR.call (<- JR.aget l_likelyhoodIntegerKeyArray (JV.int 1)) "intValue_0" #[])))) then
                            let _ := (<- JR.callInherited this "BasicRandomAI" "setLastKey_1" #[l_key])
                            break
                        pure ()
                    l_index := (JR.inc l_index)
                    pure ()
                pure ()
            pure ()
        let _ := (<- JR.call (<- JR.getField this "visitor") "visit_1" #[this])
        pure ()
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    let mut l_gameInput : JV := (JR.arg jargs 1)
    let mut l_inputProbability : JV := (JR.arg jargs 2)
    let mut l_visitor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    JR.setField this "inputProbability" l_inputProbability
    JR.setField this "visitor" l_visitor
    pure this

initialize JR.registerClass {
    name := "BasicRandomAI",
    javaName := "org.allbinary.game.ag.ai.tactical.BasicRandomAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("i_random", (JV.int 0)), ("inputProbability", JV.null), ("visitor", JV.null), ("keyArray", JV.null), ("myRandomFactory", JV.null)],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("jinit_4", #["AllBinaryLayer", "GameInput", "InputProbability", "Visitor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicRandomAI


