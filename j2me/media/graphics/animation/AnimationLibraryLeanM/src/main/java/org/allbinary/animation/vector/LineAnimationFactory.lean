-- Generated Code Do Not Modify
-- package org.allbinary.animation.vector
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LineAnimationFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInstance_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_instanceId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.new "LineAnimation" #[(<- JR.getField this "basicColor")])


def m_setInitialScale_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleProperties : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "basicColor" l_basicColor
    pure this

initialize JR.registerClass {
    name := "LineAnimationFactory",
    javaName := "org.allbinary.animation.vector.LineAnimationFactory",
    super := "Object",
    interfaces := #["AnimationInterfaceFactoryInterface"],
    isInterface := false,
    fields := #[("basicColor", JV.null)],
    statics := #[],
    methods := #[
        ("getInstance_1", #["int"], false, m_getInstance_1), 
        ("setInitialScale_1", #["ScaleProperties"], false, m_setInitialScale_1), 
        ("jinit_1", #["BasicColor"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LineAnimationFactory


