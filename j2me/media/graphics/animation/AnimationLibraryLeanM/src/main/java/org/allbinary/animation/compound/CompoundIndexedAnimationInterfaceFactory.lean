-- Generated Code Do Not Modify
-- package org.allbinary.animation.compound
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CompoundIndexedAnimationInterfaceFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_size : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.newArray "L" 1 #[l_size])


def m_createAnimation_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationArray : JV := (JR.arg jargs 0)
    return (<- JR.new "CompoundIndexedAnimation" #[l_animationArray, (<- JR.call (<- JR.getInherited this "CompoundIndexedAnimationInterfaceFactory" "animationBehaviorFactory") "getOrCreateInstance_0" #[])])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicAnimationInterfaceFactoryInterfaceArray : JV := (JR.arg jargs 0)
    let mut l_animationBehaviorFactory : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "CompoundAnimationInterfaceFactory" this #[l_basicAnimationInterfaceFactoryInterfaceArray, l_animationBehaviorFactory]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CompoundIndexedAnimationInterfaceFactory",
    javaName := "org.allbinary.animation.compound.CompoundIndexedAnimationInterfaceFactory",
    super := "CompoundAnimationInterfaceFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("createArray_1", #["int"], false, m_createArray_1), 
        ("createAnimation_1", #["AnimationArr"], false, m_createAnimation_1), 
        ("jinit_2", #["AnimationInterfaceFactoryInterfaceArr", "AnimationBehaviorFactory"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CompoundIndexedAnimationInterfaceFactory


