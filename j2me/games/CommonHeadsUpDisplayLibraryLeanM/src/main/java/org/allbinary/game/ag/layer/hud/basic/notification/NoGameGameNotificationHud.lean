-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.notification
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoGameGameNotificationHud

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GameNotificationHud" this #[(<- JR.getField (<- JR.callStatic "BasicHudFactory" "getInstance_0" #[]) "TOPCENTER"), (<- JR.getField (<- JR.callStatic "BasicHudFactory" "getInstance_0" #[]) "HORIZONTAL"), (JV.int 2), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "RED")]
    let _ <- jfields this
    JR.setInherited this "NoGameGameNotificationHud" "updateMaxWidth" (JV.int 40)
    JR.setInherited this "NoGameGameNotificationHud" "updateMaxHeight" (JV.int 14)
    pure this

initialize JR.registerClass {
    name := "NoGameGameNotificationHud",
    javaName := "org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud",
    super := "GameNotificationHud",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoGameGameNotificationHud


