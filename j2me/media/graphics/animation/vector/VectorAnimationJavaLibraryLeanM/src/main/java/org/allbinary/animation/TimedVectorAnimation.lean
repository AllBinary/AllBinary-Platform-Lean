-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TimedVectorAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "timeElapsedHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 200)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.call (<- JR.getField this "timeElapsedHelper") "isTime_1" #[(<- JR.getField (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[]) "startTime")]) then
        let _ := (<- JR.callSuper "VectorAnimation" this "nextFrame_0" #[])
        pure ()
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentPoints : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    let mut l_animationBehavior : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "VectorAnimation" this #[l_currentPoints, l_basicColor, l_animationBehavior]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TimedVectorAnimation",
    javaName := "org.allbinary.animation.TimedVectorAnimation",
    super := "VectorAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("timeElapsedHelper", JV.null)],
    statics := #[],
    methods := #[
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("jinit_3", #["intArrArrArr", "BasicColor", "AnimationBehavior"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TimedVectorAnimation


