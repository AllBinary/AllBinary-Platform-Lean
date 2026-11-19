-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LurchRotationAI

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_reverse_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callSuper "LurchAI" this "reverse_0" #[])
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getInherited this "LurchRotationAI" "currentRelativeAngle") (JV.int 0)) then
        let mut l_rotationAnimationInterface : JV := (<- JR.getField this "rotationAnimationInterface")
        let mut l_angleIncrementInfo : JV := (<- JR.call (<- JR.call l_rotationAnimationInterface "getAngleInfoP_0" #[]) "getAngleIncrementInfo_0" #[])
        let mut l_rotationAnimationInterfaceCompositeInterface : JV := (<- JR.callInherited this "LurchRotationAI" "getOwnerLayerInterface_0" #[])
        let _ := (<- JR.call l_rotationAnimationInterfaceCompositeInterface "setFrame_1" #[(<- JR.call (<- JR.getField l_angleIncrementInfo "RIGHT_FRAME") "intValue_0" #[])])
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.getInherited this "LurchRotationAI" "currentRelativeAngle") (JV.int 180)) then
            let mut l_rotationAnimationInterface : JV := (<- JR.getField this "rotationAnimationInterface")
            let mut l_angleIncrementInfo : JV := (<- JR.call (<- JR.call l_rotationAnimationInterface "getAngleInfoP_0" #[]) "getAngleIncrementInfo_0" #[])
            let mut l_rotationAnimationInterfaceCompositeInterface : JV := (<- JR.callInherited this "LurchRotationAI" "getOwnerLayerInterface_0" #[])
            let _ := (<- JR.call l_rotationAnimationInterfaceCompositeInterface "setFrame_1" #[(<- JR.call (<- JR.getField l_angleIncrementInfo "LEFT_FRAME") "intValue_0" #[])])
            pure ()
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    let mut l_gameInput : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "LurchAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    let mut l_rotationAnimationInterfaceCompositeInterface : JV := (<- JR.callInherited this "LurchRotationAI" "getOwnerLayerInterface_0" #[])
    JR.setField this "rotationAnimationInterface" (<- JR.call l_rotationAnimationInterfaceCompositeInterface "getRotationAnimationInterface_0" #[])
    let _ := (<- JR.call this "update_0" #[])
    pure this

initialize JR.registerClass {
    name := "LurchRotationAI",
    javaName := "org.allbinary.game.ag.ai.LurchRotationAI",
    super := "LurchAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("rotationAnimationInterface", JV.null)],
    statics := #[],
    methods := #[
        ("reverse_0", #[], false, m_reverse_0), 
        ("update_0", #[], false, m_update_0), 
        ("jinit_2", #["AllBinaryLayer", "GameInput"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LurchRotationAI


