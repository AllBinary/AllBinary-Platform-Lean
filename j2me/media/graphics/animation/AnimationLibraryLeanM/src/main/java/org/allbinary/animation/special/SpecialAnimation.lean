-- Generated Code Do Not Modify
-- package org.allbinary.animation.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpecialAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "SpecialAnimation" "NULL_SPECIAL_ANIMATION" (<- JR.new "SpecialAnimation" #[(<- JR.new "IndexedAnimationBehavior" #[(JV.int 1), (JV.int 250)])])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "SpecialAnimation" "NULL_SPECIAL_ANIMATION")


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_indexedAnimationBehavior : JV := ((<- JR.getInherited this "SpecialAnimation" "animationBehaviorP"))
    JR.setField l_indexedAnimationBehavior "loopIndex" (JR.inc (<- JR.getField l_indexedAnimationBehavior "loopIndex"))
    pure JV.null


def m_setLastFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_isComplete_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_open_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_close_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationBehavior : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SpecialAnimation",
    javaName := "org.allbinary.animation.special.SpecialAnimation",
    super := "IndexedAnimation",
    interfaces := #["SpecialAnimationInterface"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_SPECIAL_ANIMATION", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("setLastFrame_0", #[], false, m_setLastFrame_0), 
        ("isComplete_0", #[], false, m_isComplete_0), 
        ("open_0", #[], false, m_open_0), 
        ("close_0", #[], false, m_close_0), 
        ("process_0", #[], false, m_process_0), 
        ("jinit_1", #["AnimationBehavior"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpecialAnimation


