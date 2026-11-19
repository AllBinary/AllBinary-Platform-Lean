-- Generated Code Do Not Modify
-- package org.allbinary.physics.movement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DelayedConstantVelocityMovement

def jfields (this : JV) : JM JV := do
    JR.setField this "timeDelayHelper" (<- JR.new "TimeDelayHelper" #[(JV.int 60)])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_speedBasicDecimal : JV := (JR.arg jargs 0)
    let mut l_angle : JV := (JR.asI (JR.arg jargs 1))
    let mut l_otherAngle : JV := (JR.asI (JR.arg jargs 2))
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.call (<- JR.getField this "timeDelayHelper") "isTime_1" #[(<- JR.getField (<- JR.callStatic "GameTickTimeDelayHelperFactory" "getInstance_0" #[]) "startTime")]) then
        let _ := (<- JR.callSuper "BasicConstantVelocityMovement" this "process_1" #[l_layer])
        pure ()
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicDecimal : JV := (JR.arg jargs 0)
    let mut l_velocityProperties : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "BasicConstantVelocityMovement" this #[l_basicDecimal, l_velocityProperties]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DelayedConstantVelocityMovement",
    javaName := "org.allbinary.physics.movement.DelayedConstantVelocityMovement",
    super := "BasicConstantVelocityMovement",
    interfaces := #[],
    isInterface := false,
    fields := #[("timeDelayHelper", JV.null)],
    statics := #[],
    methods := #[
        ("init_3", #["BasicDecimal", "int", "int"], false, m_init_3), 
        ("process_1", #["AllBinaryGameLayer"], false, m_process_1), 
        ("jinit_2", #["BasicDecimal", "BasicVelocityProperties"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DelayedConstantVelocityMovement


