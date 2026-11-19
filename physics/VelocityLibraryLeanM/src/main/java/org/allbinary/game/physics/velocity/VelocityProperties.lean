-- Generated Code Do Not Modify
-- package org.allbinary.game.physics.velocity
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VelocityProperties

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "VelocityProperties" "NULL_VELOCITY_PROPERTIES" (<- JR.new "VelocityProperties" #[(JV.int 0), (JV.int 0)])
    pure JV.null


def m_getMaxForwardVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "maxForwardVelocity"))


def m_setMaxForwardVelocity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxForwardVelocity : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "maxForwardVelocity" (JR.asI l_maxForwardVelocity)
    pure JV.null


def m_getMaxReverseVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "maxReverseVelocity"))


def m_setMaxReverseVelocity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxReverseVelocity : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "maxReverseVelocity" (JR.asI l_maxReverseVelocity)
    pure JV.null


def m_limitMaxXYForwardVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "limitMaxXYVelocity_1" #[(<- JR.call this "getMaxForwardVelocity_0" #[])])
    pure JV.null


def m_limitMaxXYReverseVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "limitMaxXYVelocity_1" #[(<- JR.call this "getMaxReverseVelocity_0" #[])])
    pure JV.null


def m_limitMaxYForwardVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "limitMaxYVelocity_1" #[(<- JR.call this "getMaxForwardVelocity_0" #[])])
    pure JV.null


def m_limitMaxYReverseVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "limitMaxYVelocity_1" #[(<- JR.call this "getMaxReverseVelocity_0" #[])])
    pure JV.null


def m_limitMaxXForwardVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "limitMaxXVelocity_1" #[(<- JR.call this "getMaxForwardVelocity_0" #[])])
    pure JV.null


def m_limitMaxXReverseVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "limitMaxXVelocity_1" #[(<- JR.call this "getMaxReverseVelocity_0" #[])])
    pure JV.null


def m_isOverXYMaxForwardVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call this "isOverXYMaxVelocity_1" #[(<- JR.call this "getMaxForwardVelocity_0" #[])])


def m_isOverXYMaxReverseVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call this "isOverXYMaxVelocity_1" #[(<- JR.call this "getMaxReverseVelocity_0" #[])])


def m_limitXYToForwardAndReverseMaxVelocity_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "limitMaxXYForwardVelocity_0" #[])
    let _ := (<- JR.call this "limitMaxXYReverseVelocity_0" #[])
    pure JV.null


def m_limitMaxXYVelocity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxVelocity : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "limitMaxXVelocity_1" #[l_maxVelocity])
    let _ := (<- JR.call this "limitMaxYVelocity_1" #[l_maxVelocity])
    pure JV.null


def m_limitMaxPositiveYVelocity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxVelocity : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.gt (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityYBasicDecimal") "getUnscaled_0" #[]) (JR.toJ l_maxVelocity)) then
        let _ := (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityYBasicDecimal") "setint_1" #[l_maxVelocity])
        pure ()
    pure JV.null


def m_limitMaxNegativeYVelocity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxVelocity : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.lt (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityYBasicDecimal") "getUnscaled_0" #[]) (JR.toJ (JR.neg l_maxVelocity))) then
        let _ := (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityYBasicDecimal") "setint_1" #[(JR.neg l_maxVelocity)])
        pure ()
    pure JV.null


def m_limitMaxYVelocity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxVelocity : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call this "limitMaxPositiveYVelocity_1" #[l_maxVelocity])
    let _ := (<- JR.call this "limitMaxNegativeYVelocity_1" #[l_maxVelocity])
    pure JV.null


def m_limitMaxXVelocity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxVelocity : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.gt (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityXBasicDecimal") "getUnscaled_0" #[]) (JR.toJ l_maxVelocity)) then
        let _ := (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityXBasicDecimal") "setint_1" #[l_maxVelocity])
        pure ()
    if JR.truth (<- JR.lt (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityXBasicDecimal") "getUnscaled_0" #[]) (JR.toJ (JR.neg l_maxVelocity))) then
        let _ := (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityXBasicDecimal") "setint_1" #[(JR.neg l_maxVelocity)])
        pure ()
    pure JV.null


def m_isOverXYMaxVelocity_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxVelocity : JV := (JR.asI (JR.arg jargs 0))
    if JR.truth (<- JR.gt (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityXBasicDecimal") "getUnscaled_0" #[]) (JR.toJ l_maxVelocity)) then
        return (JV.bool true)
    if JR.truth (<- JR.lt (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityXBasicDecimal") "getUnscaled_0" #[]) (JR.toJ (JR.neg l_maxVelocity))) then
        return (JV.bool true)
    if JR.truth (<- JR.gt (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityYBasicDecimal") "getUnscaled_0" #[]) (JR.toJ l_maxVelocity)) then
        return (JV.bool true)
    if JR.truth (<- JR.lt (<- JR.call (<- JR.getInherited this "VelocityProperties" "velocityYBasicDecimal") "getUnscaled_0" #[]) (JR.toJ (JR.neg l_maxVelocity))) then
        return (JV.bool true)
    return (JV.bool false)


def m_setVelocityi_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "BasicVelocityProperties" this "setVelocityi_3" #[l_magnitude, l_angle, l_otherAngle])
    let _ := (<- JR.call this "limitXYToForwardAndReverseMaxVelocity_0" #[])
    pure JV.null


def m_addVelocityi_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_magnitude : JV := (JR.asJ (JR.arg jargs 0))
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "BasicVelocityProperties" this "addVelocityi_3" #[l_magnitude, l_angle, l_otherAngle])
    let _ := (<- JR.call this "limitXYToForwardAndReverseMaxVelocity_0" #[])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxForwardVelocity : JV := (JR.asI (JR.arg jargs 0))
    let mut l_maxReverseVelocity : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "BasicVelocityProperties" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setMaxForwardVelocity_1" #[l_maxForwardVelocity])
    let _ := (<- JR.call this "setMaxReverseVelocity_1" #[l_maxReverseVelocity])
    pure this

initialize JR.registerClass {
    name := "VelocityProperties",
    javaName := "org.allbinary.game.physics.velocity.VelocityProperties",
    super := "BasicVelocityProperties",
    interfaces := #["VelocityInterface"],
    isInterface := false,
    fields := #[("maxForwardVelocity", (JV.int 0)), ("maxReverseVelocity", (JV.int 0))],
    statics := #[("NULL_VELOCITY_PROPERTIES", JV.null)],
    methods := #[
        ("getMaxForwardVelocity_0", #[], false, m_getMaxForwardVelocity_0), 
        ("setMaxForwardVelocity_1", #["int"], false, m_setMaxForwardVelocity_1), 
        ("getMaxReverseVelocity_0", #[], false, m_getMaxReverseVelocity_0), 
        ("setMaxReverseVelocity_1", #["int"], false, m_setMaxReverseVelocity_1), 
        ("limitMaxXYForwardVelocity_0", #[], false, m_limitMaxXYForwardVelocity_0), 
        ("limitMaxXYReverseVelocity_0", #[], false, m_limitMaxXYReverseVelocity_0), 
        ("limitMaxYForwardVelocity_0", #[], false, m_limitMaxYForwardVelocity_0), 
        ("limitMaxYReverseVelocity_0", #[], false, m_limitMaxYReverseVelocity_0), 
        ("limitMaxXForwardVelocity_0", #[], false, m_limitMaxXForwardVelocity_0), 
        ("limitMaxXReverseVelocity_0", #[], false, m_limitMaxXReverseVelocity_0), 
        ("isOverXYMaxForwardVelocity_0", #[], false, m_isOverXYMaxForwardVelocity_0), 
        ("isOverXYMaxReverseVelocity_0", #[], false, m_isOverXYMaxReverseVelocity_0), 
        ("limitXYToForwardAndReverseMaxVelocity_0", #[], false, m_limitXYToForwardAndReverseMaxVelocity_0), 
        ("limitMaxXYVelocity_1", #["int"], false, m_limitMaxXYVelocity_1), 
        ("limitMaxPositiveYVelocity_1", #["int"], false, m_limitMaxPositiveYVelocity_1), 
        ("limitMaxNegativeYVelocity_1", #["int"], false, m_limitMaxNegativeYVelocity_1), 
        ("limitMaxYVelocity_1", #["int"], false, m_limitMaxYVelocity_1), 
        ("limitMaxXVelocity_1", #["int"], false, m_limitMaxXVelocity_1), 
        ("isOverXYMaxVelocity_1", #["int"], false, m_isOverXYMaxVelocity_1), 
        ("setVelocityi_3", #["long", "int", "int"], false, m_setVelocityi_3), 
        ("addVelocityi_3", #["long", "int", "int"], false, m_addVelocityi_3), 
        ("jinit_2", #["int", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VelocityProperties


