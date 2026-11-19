-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai.tactical
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LurchAI

def jfields (this : JV) : JM JV := do
    JR.setField this "currentRelativeAngle" (JR.asI (JV.int 0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processAI_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.getField this "currentSpeed") (JV.int (-1))) then
        JR.setField this "currentSpeed" (JR.asI (JV.int 5))
        pure ()
    else
        JR.setField this "currentSpeed" (JR.asI (JV.int (-1)))
        pure ()
    let mut l_ownerLayerInterface : JV := (<- JR.callInherited this "LurchAI" "getOwnerLayerInterface_0" #[])
    let mut l_x : JV := (JR.asI (<- JR.call l_ownerLayerInterface "getXP_0" #[]))
    if JR.truth (<- JR.le (<- JR.sub (<- JR.call l_ownerLayerInterface "getXP_0" #[]) (<- JR.getField this "currentSpeed")) (JV.int 0)) then
        let _ := (<- JR.call this "reverse_0" #[])
        let _ := (<- JR.call this "drop_0" #[])
        pure ()
    if JR.truth (<- JR.gt (<- JR.add (<- JR.call l_ownerLayerInterface "getX2_0" #[]) (<- JR.getField this "currentSpeed")) (<- JR.call (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[]) "getLastWidth_0" #[])) then
        let _ := (<- JR.call this "reverse_0" #[])
        let _ := (<- JR.call this "accelerate_0" #[])
        let _ := (<- JR.call this "drop_0" #[])
        pure ()
    if JR.truth (<- JR.eq (<- JR.getField this "currentRelativeAngle") (JV.int 0)) then
        l_x := (JR.castLike l_x (<- JR.add l_x (<- JR.getField this "currentSpeed")))
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.getField this "currentRelativeAngle") (JV.int 180)) then
            l_x := (JR.castLike l_x (<- JR.sub l_x (<- JR.getField this "currentSpeed")))
            pure ()
    let _ := (<- JR.call l_ownerLayerInterface "setPosition_3" #[l_x, (<- JR.call l_ownerLayerInterface "getYP_0" #[]), (<- JR.call l_ownerLayerInterface "getZP_0" #[])])
    if JR.truth (<- JR.eq (<- JR.getField this "currentRelativeAngle") (JV.int 0)) then
        let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_NUM0")])
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.getField this "currentRelativeAngle") (JV.int 180)) then
            let _ := (<- JR.callSuper "BasicAI" this "processKeyAI_1" #[(<- JR.getStatic "Canvas" "KEY_POUND")])
            pure ()
    pure JV.null


def m_reverse_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getField this "currentRelativeAngle") (JV.int 180)) then
        JR.setField this "currentRelativeAngle" (JR.asI (JV.int 0))
        pure ()
    else
        if JR.truth (<- JR.eq (<- JR.getField this "currentRelativeAngle") (JV.int 0)) then
            JR.setField this "currentRelativeAngle" (JR.asI (JV.int 180))
            pure ()
    pure JV.null


def m_accelerate_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.lt (<- JR.getField this "currentSpeed") (JV.int 20)) then
        JR.setField this "currentSpeed" (JR.inc (<- JR.getField this "currentSpeed"))
        pure ()
    pure JV.null


def m_drop_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (<- JR.callInherited this "LurchAI" "getOwnerLayerInterface_0" #[])
    let mut l_y : JV := (JR.asI (<- JR.call l_ownerLayerInterface "getYP_0" #[]))
    if JR.truth (<- JR.gt (<- JR.add (<- JR.call l_ownerLayerInterface "getY2_0" #[]) (<- JR.call l_ownerLayerInterface "getHeight_0" #[])) (<- JR.call (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[]) "getLastHeight_0" #[])) then
        l_y := (JR.asI (JV.int 0))
        pure ()
    else
        l_y := (JR.castLike l_y (<- JR.add l_y (<- JR.add (<- JR.call l_ownerLayerInterface "getHeight_0" #[]) (JV.int 1))))
        pure ()
    let _ := (<- JR.call l_ownerLayerInterface "setPosition_3" #[(<- JR.call l_ownerLayerInterface "getXP_0" #[]), l_y, (<- JR.call l_ownerLayerInterface "getZP_0" #[])])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayerInterface : JV := (JR.arg jargs 0)
    let mut l_gameInput : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "BasicAI" this #[l_ownerLayerInterface, l_gameInput]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LurchAI",
    javaName := "org.allbinary.game.ag.ai.tactical.LurchAI",
    super := "BasicAI",
    interfaces := #[],
    isInterface := false,
    fields := #[("currentRelativeAngle", (JV.int 0)), ("currentSpeed", (JV.int 0))],
    statics := #[],
    methods := #[
        ("processAI_1", #["AllBinaryLayerManager"], false, m_processAI_1), 
        ("reverse_0", #[], false, m_reverse_0), 
        ("accelerate_0", #[], false, m_accelerate_0), 
        ("drop_0", #[], false, m_drop_0), 
        ("jinit_2", #["AllBinaryLayer", "GameInput"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LurchAI


