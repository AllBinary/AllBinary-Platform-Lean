-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputProbability

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "InputProbability" "INPUT_PROBABILITY" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 0)])
    pure JV.null


def m_getLikelyhoodIntegerArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "likelyhoodIntegerArray")


def m_getRepeatLikelyhoodIntegerArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "repeatLikelyhoodIntegerArray")


def m_getMax_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "max"))


def m_getTimeDelayHelper_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "timeDelayHelper")


def m_toHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    let _ := (<- JR.call l_hashtable "put_2" #[(<- JR.getStatic "InputProbability" "INPUT_PROBABILITY"), this])
    return l_hashtable


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_likelyhoodIntegerArray : JV := (JR.arg jargs 0)
    let mut l_repeatLikelyhoodIntegerArray : JV := (JR.arg jargs 1)
    let mut l_max : JV := (JR.asI (JR.arg jargs 2))
    let mut l_timeDelayHelper : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "likelyhoodIntegerArray" l_likelyhoodIntegerArray
    JR.setField this "repeatLikelyhoodIntegerArray" l_repeatLikelyhoodIntegerArray
    JR.setField this "max" (JR.asI l_max)
    JR.setField this "timeDelayHelper" l_timeDelayHelper
    pure this

initialize JR.registerClass {
    name := "InputProbability",
    javaName := "org.allbinary.game.ag.ai.InputProbability",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("likelyhoodIntegerArray", JV.null), ("repeatLikelyhoodIntegerArray", JV.null), ("max", (JV.int 0)), ("timeDelayHelper", JV.null)],
    statics := #[("INPUT_PROBABILITY", JV.null)],
    methods := #[
        ("getLikelyhoodIntegerArray_0", #[], false, m_getLikelyhoodIntegerArray_0), 
        ("getRepeatLikelyhoodIntegerArray_0", #[], false, m_getRepeatLikelyhoodIntegerArray_0), 
        ("getMax_0", #[], false, m_getMax_0), 
        ("getTimeDelayHelper_0", #[], false, m_getTimeDelayHelper_0), 
        ("toHashtable_0", #[], false, m_toHashtable_0), 
        ("jinit_4", #["IntegerArrArr", "IntegerArr", "int", "TimeDelayHelper"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputProbability


