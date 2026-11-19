-- Generated Code Do Not Modify
-- package org.allbinary.game.multiplayer.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MultiPlayerGameLayer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getMultiplayerBehavior_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MultiplayerBehavior" "NULL_MULTIPLAYER_BEHAVIOR")


def m_setPingInfo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_show : JV := (JR.arg jargs 0)
    pure JV.null


def m_setFiring_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_firing : JV := (JR.asS (JR.arg jargs 0))
    pure JV.null


def m_getFiring_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asS (JV.int 0))


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_remoteInfo : JV := (JR.arg jargs 0)
    let mut l_groupInterface : JV := (JR.arg jargs 1)
    let mut l_name : JV := (JR.arg jargs 2)
    let mut l_layerInfo : JV := (JR.arg jargs 3)
    let mut l_viewPosition : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "CollidableDestroyableDamageableLayer" this #[l_groupInterface, l_name, l_layerInfo, l_viewPosition]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MultiPlayerGameLayer",
    javaName := "org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer",
    super := "CollidableDestroyableDamageableLayer",
    interfaces := #["MultiPlayerGameLayerInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getMultiplayerBehavior_0", #[], false, m_getMultiplayerBehavior_0), 
        ("setPingInfo_1", #["boolean"], false, m_setPingInfo_1), 
        ("setFiring_1", #["short"], false, m_setFiring_1), 
        ("getFiring_0", #[], false, m_getFiring_0), 
        ("jinit_5", #["RemoteInfo", "GroupArr", "String", "Rectangle", "ViewPositionBase"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MultiPlayerGameLayer


