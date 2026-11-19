-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NumberInSameGroupSequence

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.new "NumberInSameGroupSequence" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 100)])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE_ONE" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 101)])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE_TWO" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 102)])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE_THREE" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 103)])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 104)])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 105)])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE_SIX" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 106)])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 107)])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 108)])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE_NINE" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JV.int 109)])
    JR.setField this "NUMBER_ON_SAME_TEAM_SEQUENCE" (<- JR.arrayOf "L" #[(<- JR.getField this "NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO"), (<- JR.getField this "NUMBER_ON_SAME_TEAM_SEQUENCE_ONE"), (<- JR.getField this "NUMBER_ON_SAME_TEAM_SEQUENCE_THREE"), (<- JR.getField this "NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR"), (<- JR.getField this "NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE"), (<- JR.getField this "NUMBER_ON_SAME_TEAM_SEQUENCE_SIX"), (<- JR.getField this "NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN"), (<- JR.getField this "NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT"), (<- JR.getField this "NUMBER_ON_SAME_TEAM_SEQUENCE_NINE")])
    pure this

initialize JR.registerClass {
    name := "NumberInSameGroupSequence",
    javaName := "org.allbinary.game.ag.ai.NumberInSameGroupSequence",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NUMBER_ON_SAME_TEAM_SEQUENCE_ZERO", JV.null), ("NUMBER_ON_SAME_TEAM_SEQUENCE_ONE", JV.null), ("NUMBER_ON_SAME_TEAM_SEQUENCE_TWO", JV.null), ("NUMBER_ON_SAME_TEAM_SEQUENCE_THREE", JV.null), ("NUMBER_ON_SAME_TEAM_SEQUENCE_FOUR", JV.null), ("NUMBER_ON_SAME_TEAM_SEQUENCE_FIVE", JV.null), ("NUMBER_ON_SAME_TEAM_SEQUENCE_SIX", JV.null), ("NUMBER_ON_SAME_TEAM_SEQUENCE_SEVEN", JV.null), ("NUMBER_ON_SAME_TEAM_SEQUENCE_EIGHT", JV.null), ("NUMBER_ON_SAME_TEAM_SEQUENCE_NINE", JV.null), ("NUMBER_ON_SAME_TEAM_SEQUENCE", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NumberInSameGroupSequence


