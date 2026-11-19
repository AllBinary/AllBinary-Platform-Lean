-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicProbabilityAIDataFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_likelyhoodIntegerArray : JV := (<- JR.newArray "L" 2 #[(<- JR.add (<- JR.getStatic "Canvas" "KEY_NUM9") (JV.int 1)), (JV.int 2)])
    let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "UP")) (JV.int 0) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "UP")) (JV.int 1) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "DOWN")) (JV.int 0) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "DOWN")) (JV.int 1) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 14)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "LEFT")) (JV.int 0) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 14)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "LEFT")) (JV.int 1) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 18)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "RIGHT")) (JV.int 0) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 18)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "RIGHT")) (JV.int 1) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 22)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "KEY_NUM7")) (JV.int 0) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 22)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "KEY_NUM7")) (JV.int 1) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 26)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "KEY_NUM9")) (JV.int 0) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 26)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "KEY_NUM9")) (JV.int 1) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 30)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "KEY_NUM1")) (JV.int 0) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 30)])
    JR.aset (<- JR.aget l_likelyhoodIntegerArray (<- JR.getStatic "Canvas" "KEY_NUM1")) (JV.int 1) (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 40)])
    let mut l_repeatLikelyhoodIntegerArray : JV := (<- JR.newArray "L" 1 #[(<- JR.add (<- JR.getStatic "Canvas" "KEY_NUM9") (JV.int 1))])
    JR.aset l_repeatLikelyhoodIntegerArray (<- JR.getStatic "Canvas" "UP") (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)])
    JR.aset l_repeatLikelyhoodIntegerArray (<- JR.getStatic "Canvas" "DOWN") (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)])
    JR.aset l_repeatLikelyhoodIntegerArray (<- JR.getStatic "Canvas" "LEFT") (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)])
    JR.aset l_repeatLikelyhoodIntegerArray (<- JR.getStatic "Canvas" "RIGHT") (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)])
    JR.aset l_repeatLikelyhoodIntegerArray (<- JR.getStatic "Canvas" "KEY_NUM7") (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)])
    JR.aset l_repeatLikelyhoodIntegerArray (<- JR.getStatic "Canvas" "KEY_NUM9") (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 0)])
    JR.aset l_repeatLikelyhoodIntegerArray (<- JR.getStatic "Canvas" "KEY_NUM1") (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 10)])
    let mut l_inputProbability : JV := (<- JR.new "InputProbability" #[l_likelyhoodIntegerArray, l_repeatLikelyhoodIntegerArray, (JV.int 42), (<- JR.getStatic "NoTimeDelayHelper" "SINGLETON")])
    return (<- JR.call l_inputProbability "toHashtable_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicProbabilityAIDataFactory",
    javaName := "org.allbinary.game.ag.ai.BasicProbabilityAIDataFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_0", #[], false, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicProbabilityAIDataFactory


