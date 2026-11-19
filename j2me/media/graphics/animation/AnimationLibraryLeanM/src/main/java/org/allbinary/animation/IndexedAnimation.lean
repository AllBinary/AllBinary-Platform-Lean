-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_IndexedAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAnimationBehavior_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animationBehaviorP")


def m_reset_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "animationBehaviorP") "reset_0" #[])
    let _ := (<- JR.call this "setFrame_1" #[(JV.int 0)])
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    pure JV.null


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_isLastFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.call this "getFrame_0" #[]) (<- JR.sub (<- JR.call this "getSize_0" #[]) (JV.int 1))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_setState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_indexedAnimation : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "setFrame_1" #[(<- JR.call l_indexedAnimation "getFrame_0" #[])])
    let _ := (<- JR.callInherited this "IndexedAnimation" "setDx_1" #[(<- JR.call l_indexedAnimation "getDx_0" #[])])
    let _ := (<- JR.callInherited this "IndexedAnimation" "setDy_1" #[(<- JR.call l_indexedAnimation "getDy_0" #[])])
    pure JV.null


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int 0))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationBehavior : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Animation" this #[]
    let _ <- jfields this
    JR.setField this "animationBehaviorP" l_animationBehavior
    pure this

initialize JR.registerClass {
    name := "IndexedAnimation",
    javaName := "org.allbinary.animation.IndexedAnimation",
    super := "Animation",
    interfaces := #["IndexedAnimationInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("animationBehaviorP", JV.null)],
    statics := #[],
    methods := #[
        ("getAnimationBehavior_0", #[], false, m_getAnimationBehavior_0), 
        ("reset_0", #[], false, m_reset_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("isLastFrame_0", #[], false, m_isLastFrame_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("setState_1", #["IndexedAnimation"], false, m_setState_1), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("jinit_1", #["AnimationBehavior"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_IndexedAnimation


