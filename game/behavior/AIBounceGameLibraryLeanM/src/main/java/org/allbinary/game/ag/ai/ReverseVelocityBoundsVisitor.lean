-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ReverseVelocityBoundsVisitor

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "layerInterface") "getXP_0" #[]))


def m_getY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "layerInterface") "getYP_0" #[]))


def m_minX_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.lt (<- JR.call (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityXBasicDecimalP_0" #[]) "getUnscaled_0" #[]) (JV.long 0)) then
        let _ := (<- JR.call (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityXBasicDecimalP_0" #[]) "multiplyint_1" #[(JV.int (-1))])
        pure ()
    pure JV.null


def m_maxX_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.gt (<- JR.call (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityXBasicDecimalP_0" #[]) "getUnscaled_0" #[]) (JV.long 0)) then
        let _ := (<- JR.call (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityXBasicDecimalP_0" #[]) "multiplyint_1" #[(JV.int (-1))])
        pure ()
    pure JV.null


def m_minY_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.lt (<- JR.call (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityYBasicDecimalP_0" #[]) "getUnscaled_0" #[]) (JV.long 0)) then
        let _ := (<- JR.call (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityYBasicDecimalP_0" #[]) "multiplyint_1" #[(JV.int (-1))])
        pure ()
    pure JV.null


def m_maxY_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.gt (<- JR.call (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityYBasicDecimalP_0" #[]) "getUnscaled_0" #[]) (JV.long 0)) then
        let _ := (<- JR.call (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityYBasicDecimalP_0" #[]) "multiplyint_1" #[(JV.int (-1))])
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "layerInterface" l_layerInterface
    let mut l_velocityInterfaceCompositeInterface : JV := l_layerInterface
    JR.setField this "velocityInterface" (<- JR.call l_velocityInterfaceCompositeInterface "getVelocityProperties_0" #[])
    pure this

initialize JR.registerClass {
    name := "ReverseVelocityBoundsVisitor",
    javaName := "org.allbinary.game.ag.ai.ReverseVelocityBoundsVisitor",
    super := "Object",
    interfaces := #["BoundsVisitorInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("velocityInterface", JV.null), ("layerInterface", JV.null)],
    statics := #[],
    methods := #[
        ("getX_0", #[], false, m_getX_0), 
        ("getY_0", #[], false, m_getY_0), 
        ("minX_0", #[], false, m_minX_0), 
        ("maxX_0", #[], false, m_maxX_0), 
        ("minY_0", #[], false, m_minY_0), 
        ("maxY_0", #[], false, m_maxY_0), 
        ("jinit_1", #["LayerInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ReverseVelocityBoundsVisitor


