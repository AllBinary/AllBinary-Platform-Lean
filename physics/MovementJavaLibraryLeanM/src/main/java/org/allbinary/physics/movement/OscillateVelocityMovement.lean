-- Generated Code Do Not Modify
-- package org.allbinary.physics.movement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OscillateVelocityMovement

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "BasicConstantVelocityMovement" this "process_1" #[l_layer])
    if JR.truth (<- JR.lt (<- JR.getField this "oscillate") (<- JR.getField this "oscillateMin")) then
        JR.setField this "oscillatePositive" (JV.bool true)
        pure ()
    else
        if JR.truth (<- JR.gt (<- JR.getField this "oscillate") (<- JR.getField this "oscillateMax")) then
            JR.setField this "oscillatePositive" (JV.bool false)
            pure ()
    if JR.truth (<- JR.getField this "oscillatePositive") then
        JR.setField this "oscillate" (JR.inc (<- JR.getField this "oscillate"))
        let _ := (<- JR.call (<- JR.call (<- JR.callInherited this "OscillateVelocityMovement" "getVelocityProperties_0" #[]) "getVelocityXBasicDecimalP_0" #[]) "addint_1" #[(JV.int 2000)])
        pure ()
    else
        JR.setField this "oscillate" (JR.dec (<- JR.getField this "oscillate"))
        let _ := (<- JR.call (<- JR.call (<- JR.callInherited this "OscillateVelocityMovement" "getVelocityProperties_0" #[]) "getVelocityXBasicDecimalP_0" #[]) "subtractint_1" #[(JV.int 2000)])
        pure ()
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_speedBasicDecimal : JV := (JR.arg jargs 0)
    let mut l_oscillateMin : JV := (JR.asI (JR.arg jargs 1))
    let mut l_oscillateMax : JV := (JR.asI (JR.arg jargs 2))
    let _ <- JR.superInit "BasicConstantVelocityMovement" this #[l_speedBasicDecimal, (<- JR.new "VelocityProperties" #[(JR.toI (<- JR.call l_speedBasicDecimal "getUnscaled_0" #[])), (JR.toI (<- JR.call l_speedBasicDecimal "getUnscaled_0" #[]))])]
    let _ <- jfields this
    JR.setField this "oscillateMin" (JR.asI l_oscillateMin)
    JR.setField this "oscillateMax" (JR.asI l_oscillateMax)
    pure this

initialize JR.registerClass {
    name := "OscillateVelocityMovement",
    javaName := "org.allbinary.physics.movement.OscillateVelocityMovement",
    super := "BasicConstantVelocityMovement",
    interfaces := #[],
    isInterface := false,
    fields := #[("oscillateMin", (JV.int 0)), ("oscillateMax", (JV.int 0)), ("oscillate", (JV.int 0)), ("oscillatePositive", (JV.bool false))],
    statics := #[],
    methods := #[
        ("process_1", #["AllBinaryGameLayer"], false, m_process_1), 
        ("jinit_3", #["BasicDecimal", "int", "int"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OscillateVelocityMovement


