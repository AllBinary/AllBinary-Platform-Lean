-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameSpeed

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameSpeed" "instance" (<- JR.new "GameSpeed" #[])
    pure JV.null


def m_getSpeed_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_speedGameConfiguration : JV := (<- JR.getField (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "SPEED")
    return (JR.asI ((<- JR.add (<- JR.sub (<- JR.call (<- JR.call l_speedGameConfiguration "getMaxValue_0" #[]) "intValue_0" #[]) (<- JR.call (<- JR.call l_speedGameConfiguration "getValue_0" #[]) "intValue_0" #[])) (JV.int 1))))


def m_getDelay_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_speedGameConfiguration : JV := (<- JR.getField (<- JR.callStatic "GameConfigurationCentral" "getInstance_0" #[]) "SPEED")
    return (JR.asI (<- JR.mul (JV.int 19) ((<- JR.sub (<- JR.call (<- JR.call l_speedGameConfiguration "getMaxValue_0" #[]) "intValue_0" #[]) (<- JR.call (<- JR.call l_speedGameConfiguration "getValue_0" #[]) "intValue_0" #[])))))


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameSpeed" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameSpeed",
    javaName := "org.allbinary.game.configuration.GameSpeed",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getSpeed_0", #[], false, m_getSpeed_0), 
        ("getDelay_0", #[], false, m_getDelay_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameSpeed


