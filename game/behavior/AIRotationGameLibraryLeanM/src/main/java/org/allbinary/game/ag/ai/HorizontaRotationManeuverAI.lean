-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HorizontaRotationManeuverAI

def jfields (this : JV) : JM JV := do
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstanceAt_2" #[(JV.int 10), (<- JR.getStatic "Integer" "MAX_VALUE")])
    JR.setField this "currentSpeedDivisor" (JR.asI (JV.int 5))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_transition_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rotationAnimationInterface : JV := (<- JR.getField this "rotationAnimationInterface")
    let mut l_angleIncrementInfo : JV := (<- JR.call (<- JR.call l_rotationAnimationInterface "getAngleInfoP_0" #[]) "getAngleIncrementInfo_0" #[])
    let mut l_rotationAnimationInterfaceCompositeInterface : JV := (<- JR.callInherited this "HorizontaRotationManeuverAI" "getOwnerLayerInterface_0" #[])
    let _ := (<- JR.call l_rotationAnimationInterfaceCompositeInterface "setFrame_1" #[(<- JR.call (<- JR.getField l_angleIncrementInfo "RIGHT_FRAME") "intValue_0" #[])])
    let mut l_allbinaryLayer : JV := (<- JR.callInherited this "HorizontaRotationManeuverAI" "getOwnerLayerInterface_0" #[])
    let _ := (<- JR.call l_allbinaryLayer "setPosition_3" #[(<- JR.call l_allbinaryLayer "getXP_0" #[]), (JV.int 1), (<- JR.call l_allbinaryLayer "getZP_0" #[])])
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_rotationAnimationInterface : JV := ((<- JR.getField this "rotationAnimationInterface"))
    let mut l_angleIncrementInfo : JV := (<- JR.call (<- JR.call l_rotationAnimationInterface "getAngleInfoP_0" #[]) "getAngleIncrementInfo_0" #[])
    let mut l_frame : JV := (JR.asI (<- JR.call (<- JR.getField this "rotationAnimationInterface") "getFrame_0" #[]))
    let mut l_ownerLayerInterface : JV := (<- JR.callInherited this "HorizontaRotationManeuverAI" "getOwnerLayerInterface_0" #[])
    if JR.truth (<- JR.cand (<- JR.le (<- JR.sub (<- JR.call l_ownerLayerInterface "getXP_0" #[]) (<- JR.call l_ownerLayerInterface "getWidth_0" #[])) (JV.int 0)) (do pure (<- JR.eq l_frame (<- JR.call (<- JR.getField l_angleIncrementInfo "LEFT_FRAME") "intValue_0" #[])))) then
        let _ := (<- JR.call this "reverse_0" #[])
        let _ := (<- JR.call this "drop_0" #[])
        pure ()
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    if JR.truth (<- JR.cand (<- JR.gt (<- JR.add (<- JR.call l_ownerLayerInterface "getX2_0" #[]) (<- JR.call l_ownerLayerInterface "getWidth_0" #[])) (<- JR.call l_displayInfo "getLastWidth_0" #[])) (do pure (<- JR.eq l_frame (<- JR.call (<- JR.getField l_angleIncrementInfo "RIGHT_FRAME") "intValue_0" #[])))) then
        let _ := (<- JR.call this "reverse_0" #[])
        let _ := (<- JR.call this "accelerate_0" #[])
        let _ := (<- JR.call this "drop_0" #[])
        pure ()
    let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))
    if JR.truth (<- JR.cand (<- JR.eq (<- JR.rem l_index (<- JR.getField this "currentSpeedDivisor")) (JV.int 0)) (do pure (<- JR.eq (<- JR.rem l_index (JV.int 2)) (JV.int 0)))) then
        let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "UP")])
        let _ := (<- JR.call (<- JR.getField this "velocityInterface") "limitMaxXYVelocity_1" #[(<- JR.div (<- JR.call (<- JR.getField this "velocityInterface") "getMaxForwardVelocity_0" #[]) (<- JR.getField this "currentSpeedDivisor"))])
        pure ()
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    if JR.truth (<- JR.eq l_frame (<- JR.call (<- JR.getField l_angleIncrementInfo "LEFT_FRAME") "intValue_0" #[])) then
        let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_NUM0")])
        pure ()
    else
        if JR.truth (<- JR.eq l_frame (<- JR.call (<- JR.getField l_angleIncrementInfo "RIGHT_FRAME") "intValue_0" #[])) then
            let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_POUND")])
            pure ()
    pure JV.null


def m_reverse_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rotationAnimationInterface : JV := (<- JR.getField this "rotationAnimationInterface")
    let mut l_angleIncrementInfo : JV := (<- JR.call (<- JR.call l_rotationAnimationInterface "getAngleInfoP_0" #[]) "getAngleIncrementInfo_0" #[])
    let mut l_frame : JV := (JR.asI (<- JR.call (<- JR.getField this "rotationAnimationInterface") "getFrame_0" #[]))
    if JR.truth (<- JR.eq l_frame (<- JR.call (<- JR.getField l_angleIncrementInfo "LEFT_FRAME") "intValue_0" #[])) then
        let mut l_rotationAnimationInterfaceCompositeInterface : JV := (<- JR.callInherited this "HorizontaRotationManeuverAI" "getOwnerLayerInterface_0" #[])
        let _ := (<- JR.call l_rotationAnimationInterfaceCompositeInterface "setFrame_1" #[(<- JR.call (<- JR.getField l_angleIncrementInfo "RIGHT_FRAME") "intValue_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "baseVelocityInterface") "zero_0" #[])
        pure ()
    else
        if JR.truth (<- JR.eq l_frame (<- JR.call (<- JR.getField l_angleIncrementInfo "RIGHT_FRAME") "intValue_0" #[])) then
            let mut l_rotationAnimationInterfaceCompositeInterface : JV := (<- JR.callInherited this "HorizontaRotationManeuverAI" "getOwnerLayerInterface_0" #[])
            let _ := (<- JR.call l_rotationAnimationInterfaceCompositeInterface "setFrame_1" #[(<- JR.call (<- JR.getField l_angleIncrementInfo "LEFT_FRAME") "intValue_0" #[])])
            let _ := (<- JR.call (<- JR.getField this "baseVelocityInterface") "zero_0" #[])
            pure ()
    pure JV.null


def m_accelerate_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.gt (<- JR.getField this "currentSpeedDivisor") (JV.int 1)) then
        JR.setField this "currentSpeedDivisor" (JR.dec (<- JR.getField this "currentSpeedDivisor"))
        pure ()
    pure JV.null


def m_drop_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let mut l_ownerLayerInterface : JV := (<- JR.callInherited this "HorizontaRotationManeuverAI" "getOwnerLayerInterface_0" #[])
    let mut l_y : JV := (JR.asI (<- JR.call l_ownerLayerInterface "getYP_0" #[]))
    if JR.truth (<- JR.gt (<- JR.add (<- JR.call l_ownerLayerInterface "getY2_0" #[]) (<- JR.call l_ownerLayerInterface "getHeight_0" #[])) (<- JR.call l_displayInfo "getLastHeight_0" #[])) then
        l_y := (JR.asI (JV.int 0))
        pure ()
    else
        l_y := (JR.castLike l_y (<- JR.add l_y (<- JR.add (<- JR.call l_ownerLayerInterface "getHeight_0" #[]) (JV.int 1))))
        pure ()
    let _ := (<- JR.call l_ownerLayerInterface "setPosition_3" #[(<- JR.call l_ownerLayerInterface "getXP_0" #[]), l_y, (<- JR.call l_ownerLayerInterface "getZP_0" #[])])
    pure JV.null


def m_getId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getStatic "ArtificialIntelligence" "AI_ID"))


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    let mut l_gameInput : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    let mut l_rotationAnimationInterfaceCompositeInterface : JV := (<- JR.callInherited this "HorizontaRotationManeuverAI" "getOwnerLayerInterface_0" #[])
    JR.setField this "rotationAnimationInterface" (<- JR.call l_rotationAnimationInterfaceCompositeInterface "getRotationAnimationInterface_0" #[])
    let mut l_velocityInterfaceCompositeInterface : JV := (<- JR.callInherited this "HorizontaRotationManeuverAI" "getOwnerLayerInterface_0" #[])
    JR.setField this "baseVelocityInterface" (<- JR.call l_velocityInterfaceCompositeInterface "getVelocityProperties_0" #[])
    JR.setField this "velocityInterface" (<- JR.getField this "baseVelocityInterface")
    let mut l_rotationAnimationInterface : JV := (<- JR.getField this "rotationAnimationInterface")
    let mut l_angleIncrementInfo : JV := (<- JR.call (<- JR.call l_rotationAnimationInterface "getAngleInfoP_0" #[]) "getAngleIncrementInfo_0" #[])
    let _ := (<- JR.call l_rotationAnimationInterfaceCompositeInterface "setFrame_1" #[(<- JR.call (<- JR.getField l_angleIncrementInfo "RIGHT_FRAME") "intValue_0" #[])])
    pure this

initialize JR.registerClass {
    name := "HorizontaRotationManeuverAI",
    javaName := "org.allbinary.game.ag.ai.HorizontaRotationManeuverAI",
    super := "BasicAI",
    interfaces := #["ArtificialIntelligenceTransitionInterface"],
    isInterface := false,
    fields := #[("circularIndexUtil", JV.null), ("currentSpeedDivisor", (JV.int 0)), ("rotationAnimationInterface", JV.null), ("baseVelocityInterface", JV.null), ("velocityInterface", JV.null)],
    statics := #[],
    methods := #[
        ("transition_0", #[], false, m_transition_0), 
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("reverse_0", #[], false, m_reverse_0), 
        ("accelerate_0", #[], false, m_accelerate_0), 
        ("drop_0", #[], false, m_drop_0), 
        ("getId_0", #[], false, m_getId_0), 
        ("jinit_2", #["AllBinaryLayer", "GameInput"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HorizontaRotationManeuverAI


