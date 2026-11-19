-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_J2MEGameInputMapping

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "J2MEGameInputMapping" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "J2MEGameInputMapping" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "J2MEGameInputMapping" "commonStrings") "INIT")])
    let _ := (<- JR.call (<- JR.callStatic "J2MEKeyFactory" "getInstance_0" #[]) "init_0" #[])
    let _ := (<- JR.callSuper "PersistentInputMapping" this "init_1" #[l_abeClientInformation])
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.callInherited this "J2MEGameInputMapping" "getTotalMapped_0" #[]) (JV.int 0)) (do pure (<- JR.callInherited this "J2MEGameInputMapping" "isDefaultNew_0" #[]))) then
        let _ := (<- JR.call (<- JR.callInherited this "J2MEGameInputMapping" "getInputMapping_0" #[]) "addMapping_1" #[(<- JR.callInherited this "J2MEGameInputMapping" "getDefault_0" #[])])
        let _ := (<- JR.callInherited this "J2MEGameInputMapping" "save_1" #[l_abeClientInformation])
        pure ()
    pure JV.null


def m_isDelete_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_input (<- JR.getField (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[]) "GAME_D")) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_isSystemInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "PersistentInputMapping" this #[(<- JR.getField (<- JR.callStatic "GamePersistanceStrings" "getInstance_0" #[]) "SAVED_INPUT_CONFIGURATION_RECORD_ID")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "J2MEGameInputMapping",
    javaName := "org.allbinary.game.input.J2MEGameInputMapping",
    super := "PersistentInputMapping",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("init_1", #["AbeClientInformationInterface"], false, m_init_1), 
        ("isDelete_1", #["Input"], false, m_isDelete_1), 
        ("isSystemInput_1", #["Input"], false, m_isSystemInput_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_J2MEGameInputMapping


