-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_UpDownVectorAI

def jfields (this : JV) : JM JV := do
    JR.setField this "index" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_y : JV := (JR.asI (<- JR.mul (<- JR.call (<- JR.callInherited this "UpDownVectorAI" "getOwnerLayerInterface_0" #[]) "getHeight_0" #[]) (JV.int 270)))
    if JR.truth (<- JR.lt (<- JR.getField this "index") (JV.int 5)) then
        let mut l_basicDecimal : JV := (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityYBasicDecimalP_0" #[])
        let _ := (<- JR.call l_basicDecimal "setint_1" #[(JV.int 0)])
        let _ := (<- JR.call l_basicDecimal "addint_1" #[l_y])
        JR.setField this "index" (JR.inc (<- JR.getField this "index"))
        pure ()
    else
        if JR.truth (<- JR.lt (<- JR.getField this "index") (JV.int 10)) then
            let mut l_basicDecimal : JV := (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityYBasicDecimalP_0" #[])
            let _ := (<- JR.call l_basicDecimal "setint_1" #[(JV.int 0)])
            let _ := (<- JR.call l_basicDecimal "subtractint_1" #[l_y])
            JR.setField this "index" (JR.inc (<- JR.getField this "index"))
            pure ()
        else
            JR.setField this "index" (JR.asI (JV.int 0))
            let _ := (<- JR.call this "processAI_1" #[l_allBinaryLayerManager])
            pure ()
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    let mut l_gameInput : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    let mut l_velocityInterfaceCompositeInterface : JV := (<- JR.callInherited this "UpDownVectorAI" "getOwnerLayerInterface_0" #[])
    JR.setField this "velocityInterface" (<- JR.call l_velocityInterfaceCompositeInterface "getVelocityProperties_0" #[])
    let _ := (<- JR.call (<- JR.call (<- JR.getField this "velocityInterface") "getVelocityYBasicDecimalP_0" #[]) "setint_1" #[(JV.int 0)])
    pure this

initialize JR.registerClass {
    name := "UpDownVectorAI",
    javaName := "org.allbinary.game.ag.ai.UpDownVectorAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("velocityInterface", JV.null), ("index", (JV.int 0))],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("jinit_2", #["AllBinaryLayer", "GameInput"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_UpDownVectorAI


