-- Generated Code Do Not Modify
-- package org.allbinary.game.physics.velocity
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoDragVelocityBehavior

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoDragVelocityBehavior" "instance" (<- JR.new "NoDragVelocityBehavior" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "VelocityBehaviorBase" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoDragVelocityBehavior",
    javaName := "org.allbinary.game.physics.velocity.NoDragVelocityBehavior",
    super := "VelocityBehaviorBase",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoDragVelocityBehavior


