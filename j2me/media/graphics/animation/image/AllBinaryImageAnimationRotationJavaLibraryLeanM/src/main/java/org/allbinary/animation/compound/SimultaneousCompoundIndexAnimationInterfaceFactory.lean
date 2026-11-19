-- Generated Code Do Not Modify
-- package org.allbinary.animation.compound
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SimultaneousCompoundIndexAnimationInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "basicAnimationInterfaceFactoryInterfaceArray")))
    let mut l_animationInterfaceArray : JV := (<- JR.newArray "L" 1 #[l_size])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset l_animationInterfaceArray l_index (<- JR.call (<- JR.aget (<- JR.getField this "basicAnimationInterfaceFactoryInterfaceArray") l_index) "getInstance_1" #[l_instanceId])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call this "getOrCreate_1" #[l_animationInterfaceArray])


def m_getOrCreate_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterfaceArray : JV := (JR.arg jargs 0)
    return (<- JR.new "SimultaneousCompoundIndexAnimation" #[l_animationInterfaceArray, (<- JR.call (<- JR.getField this "animationBehaviorFactory") "getOrCreateInstance_0" #[])])


def m_getBasicAnimationInterfaceFactoryInterfaceArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicAnimationInterfaceFactoryInterfaceArray")


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicAnimationInterfaceFactoryInterfaceArray : JV := (JR.arg jargs 0)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "basicAnimationInterfaceFactoryInterfaceArray" l_basicAnimationInterfaceFactoryInterfaceArray
    JR.setField this "animationBehaviorFactory" l_animationBehaviorFactory
    pure this

initialize JR.registerClass {
    name := "SimultaneousCompoundIndexAnimationInterfaceFactory",
    javaName := "org.allbinary.animation.compound.SimultaneousCompoundIndexAnimationInterfaceFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("basicAnimationInterfaceFactoryInterfaceArray", JV.null), ("animationBehaviorFactory", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getOrCreate_1", #["IndexedAnimationArr"], false, m_getOrCreate_1), 
        ("getBasicAnimationInterfaceFactoryInterfaceArray_0", #[], false, m_getBasicAnimationInterfaceFactoryInterfaceArray_0), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_2", #["AnimationInterfaceFactoryInterfaceArr", "AnimationBehaviorFactory"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SimultaneousCompoundIndexAnimationInterfaceFactory


