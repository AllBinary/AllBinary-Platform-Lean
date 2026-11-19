-- Generated Code Do Not Modify
-- package org.allbinary.game.combat.destroy
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DestroyableSimpleBehavior

def jfields (this : JV) : JM JV := do
    JR.setField this "destroyed" (JV.bool false)
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isDestroyed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "destroyed")


def m_setDestroyed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_destroyed : JV := (JR.arg jargs 0)
    JR.setField this "destroyed" l_destroyed
    if JR.truth (<- JR.call this "isDestroyed_0" #[]) then
        let _ := (<- JR.call (<- JR.callStatic "DestroyedLayerProcessor" "getInstance_0" #[]) "add_1" #[(<- JR.getField this "ownerLayer")])
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_ownerLayer : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "DestroyableBaseBehavior" this #[]
    let _ <- jfields this
    JR.setField this "ownerLayer" l_ownerLayer
    pure this

initialize JR.registerClass {
    name := "DestroyableSimpleBehavior",
    javaName := "org.allbinary.game.combat.destroy.DestroyableSimpleBehavior",
    super := "DestroyableBaseBehavior",
    interfaces := #[],
    isInterface := false,
    fields := #[("ownerLayer", JV.null), ("destroyed", (JV.bool false))],
    statics := #[],
    methods := #[
        ("isDestroyed_0", #[], false, m_isDestroyed_0), 
        ("setDestroyed_1", #["boolean"], false, m_setDestroyed_1), 
        ("jinit_1", #["CollidableCompositeLayer"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DestroyableSimpleBehavior


