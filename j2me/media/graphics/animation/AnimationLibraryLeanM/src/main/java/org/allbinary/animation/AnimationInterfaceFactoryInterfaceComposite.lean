-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnimationInterfaceFactoryInterfaceComposite

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.call (<- JR.callStatic "NullAnimationFactory" "getFactoryInstance_0" #[]) "getInstance_1" #[(JV.int 0)])


def m_getAnimationInterfaceFactoryInterfaceArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animationInterfaceFactoryInterfaceArray")


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicAnimationInterfaceFactoryInterfaceArray : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "animationInterfaceFactoryInterfaceArray" l_basicAnimationInterfaceFactoryInterfaceArray
    pure this

initialize JR.registerClass {
    name := "AnimationInterfaceFactoryInterfaceComposite",
    javaName := "org.allbinary.animation.AnimationInterfaceFactoryInterfaceComposite",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("animationInterfaceFactoryInterfaceArray", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("getAnimationInterfaceFactoryInterfaceArray_0", #[], false, m_getAnimationInterfaceFactoryInterfaceArray_0), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_1", #["AnimationInterfaceFactoryInterfaceArr"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnimationInterfaceFactoryInterfaceComposite


