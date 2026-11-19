-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PCGameInputMapping

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_abeClientInformation : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "PCGameInputMapping" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "PCGameInputMapping" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "PCGameInputMapping" "commonStrings") "INIT")])
    let _ := (<- JR.callStatic "PCKeyFactory" "getInstance_0" #[])
    let _ := (<- JR.callSuper "PersistentInputMapping" this "init_1" #[l_abeClientInformation])
    if JR.truth (<- JR.cor (<- JR.eq (<- JR.callInherited this "PCGameInputMapping" "getTotalMapped_0" #[]) (JV.int 0)) (do pure (<- JR.callInherited this "PCGameInputMapping" "isDefaultNew_0" #[]))) then
        let _ := (<- JR.call (<- JR.callInherited this "PCGameInputMapping" "getInputMapping_0" #[]) "addMapping_1" #[(<- JR.callInherited this "PCGameInputMapping" "getDefault_0" #[])])
        let _ := (<- JR.callInherited this "PCGameInputMapping" "save_1" #[l_abeClientInformation])
        pure ()
    pure JV.null


def m_isDelete_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_input (<- JR.getField (<- JR.callStatic "PCKeyFactory" "getInstance_0" #[]) "DEL")) then
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
    name := "PCGameInputMapping",
    javaName := "org.allbinary.game.input.PCGameInputMapping",
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

end jclass_PCGameInputMapping


