-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.weapon
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DamageWeaponLayer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_11 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_remoteInfo : JV := (JR.arg jargs 1)
    let mut l_movement : JV := (JR.arg jargs 2)
    let mut l_animationInterface : JV := (JR.arg jargs 3)
    let mut l_destroyedAnimationInterface : JV := (JR.arg jargs 4)
    let mut l_rectangle : JV := (JR.arg jargs 5)
    let mut l_viewPosition : JV := (JR.arg jargs 6)
    let mut l_username : JV := (JR.arg jargs 7)
    let mut l_actorSessionId : JV := (JR.asI (JR.arg jargs 8))
    let mut l_id : JV := (JR.asI (JR.arg jargs 9))
    let mut l_multiPlayerType : JV := (JR.asI (JR.arg jargs 10))
    let _ <- JR.superInit "WeaponLayer" this #[l_name, l_remoteInfo, l_multiPlayerType, l_movement, l_animationInterface, l_destroyedAnimationInterface, l_rectangle, l_viewPosition]
    let _ <- jfields this
    let _ := (<- JR.callInherited this "DamageWeaponLayer" "setCollidableInferface_1" #[(<- JR.new "CollidableDamageWeaponBehavior" #[(JV.bool true)])])
    pure this

initialize JR.registerClass {
    name := "DamageWeaponLayer",
    javaName := "org.allbinary.game.layer.weapon.DamageWeaponLayer",
    super := "WeaponLayer",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_11", #["String", "RemoteInfo", "Movement", "Animation", "Animation", "Rectangle", "ViewPositionBase", "String", "int", "int", "int"], false, jinit_11)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DamageWeaponLayer


