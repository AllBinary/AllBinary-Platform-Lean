-- Generated Code Do Not Modify
-- package org.allbinary.game.physics.velocity
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DragVelocityBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DragVelocityBehavior" "instance" (<- JR.new "DragVelocityBehavior" #[])
    pure JV.null


def m_reduce_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_velocityProperties : JV := (JR.arg jargs 0)
    let mut l_nominator : JV := (JR.asI (JR.arg jargs 1))
    let mut l_denominator : JV := (JR.asI (JR.arg jargs 2))
    if JR.truth (<- JR.ne (<- JR.call (<- JR.call l_velocityProperties "getVelocityXBasicDecimalP_0" #[]) "getUnscaled_0" #[]) (JV.long 0)) then
        let mut l_basicDecimal : JV := (<- JR.call l_velocityProperties "getVelocityXBasicDecimalP_0" #[])
        let _ := (<- JR.call l_basicDecimal "multiplyint_1" #[l_nominator])
        let _ := (<- JR.call l_basicDecimal "divideint_1" #[l_denominator])
        pure ()
    if JR.truth (<- JR.ne (<- JR.call (<- JR.call l_velocityProperties "getVelocityYBasicDecimalP_0" #[]) "getUnscaled_0" #[]) (JV.long 0)) then
        let mut l_basicDecimal : JV := (<- JR.call l_velocityProperties "getVelocityYBasicDecimalP_0" #[])
        let _ := (<- JR.call l_basicDecimal "multiplyint_1" #[l_nominator])
        let _ := (<- JR.call l_basicDecimal "divideint_1" #[l_denominator])
        pure ()
    pure JV.null


def m_reduceX_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_velocityProperties : JV := (JR.arg jargs 0)
    let mut l_nominator : JV := (JR.asI (JR.arg jargs 1))
    let mut l_denominator : JV := (JR.asI (JR.arg jargs 2))
    let mut l_basicDecimal : JV := (<- JR.call l_velocityProperties "getVelocityXBasicDecimalP_0" #[])
    if JR.truth (<- JR.ne (<- JR.call l_basicDecimal "getUnscaled_0" #[]) (JV.long 0)) then
        let _ := (<- JR.call l_basicDecimal "multiplyint_1" #[l_nominator])
        let _ := (<- JR.call l_basicDecimal "divideint_1" #[l_denominator])
        pure ()
    pure JV.null


def m_reduceY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_velocityProperties : JV := (JR.arg jargs 0)
    let mut l_nominator : JV := (JR.asI (JR.arg jargs 1))
    let mut l_denominator : JV := (JR.asI (JR.arg jargs 2))
    if JR.truth (<- JR.ne (<- JR.call (<- JR.call l_velocityProperties "getVelocityYBasicDecimalP_0" #[]) "getUnscaled_0" #[]) (JV.long 0)) then
        let mut l_basicDecimal : JV := (<- JR.call l_velocityProperties "getVelocityYBasicDecimalP_0" #[])
        let _ := (<- JR.call l_basicDecimal "multiplyint_1" #[l_nominator])
        let _ := (<- JR.call l_basicDecimal "divideint_1" #[l_denominator])
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "VelocityBehaviorBase" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DragVelocityBehavior",
    javaName := "org.allbinary.game.physics.velocity.DragVelocityBehavior",
    super := "VelocityBehaviorBase",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("reduce_3", #["BasicVelocityProperties", "int", "int"], false, m_reduce_3), 
        ("reduceX_3", #["BasicVelocityProperties", "int", "int"], false, m_reduceX_3), 
        ("reduceY_3", #["BasicVelocityProperties", "int", "int"], false, m_reduceY_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DragVelocityBehavior


