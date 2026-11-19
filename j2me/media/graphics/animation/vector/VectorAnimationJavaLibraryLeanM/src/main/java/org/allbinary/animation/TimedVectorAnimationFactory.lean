-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TimedVectorAnimationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    let mut l_basicColor : JV := (JR.arg jargs 1)
    return (<- JR.new "TimedVectorAnimation" #[l_points, l_basicColor, (<- JR.callStatic "AnimationBehavior" "getInstance_0" #[])])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TimedVectorAnimationFactory",
    javaName := "org.allbinary.animation.TimedVectorAnimationFactory",
    super := "Object",
    interfaces := #["VectorAnimationFactoryInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInstance_2", #["intArrArrArr", "BasicColor"], false, m_getInstance_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TimedVectorAnimationFactory


