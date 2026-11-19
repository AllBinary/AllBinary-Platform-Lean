-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.notification
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoGameNotificationHudSingleton

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "gameNotificationHud" (<- JR.getStatic "GameNotificationHud" "NULL_GAME_NOTIFICATION")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NoGameNotificationHudSingleton" "instance" (<- JR.new "NoGameNotificationHudSingleton" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NoGameNotificationHudSingleton" "instance")


def m_getGameNotificationHud_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameNotificationHud")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    try
        let mut l_basicHudFactory : JV := (<- JR.callStatic "BasicHudFactory" "getInstance_0" #[])
        JR.setField this "gameNotificationHud" (<- JR.new "NoGameGameNotificationHud" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "CONSTRUCTOR"), l_e])
            pure ()
        else
            throw jex0
    pure this

initialize JR.registerClass {
    name := "NoGameNotificationHudSingleton",
    javaName := "org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("gameNotificationHud", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getGameNotificationHud_0", #[], false, m_getGameNotificationHud_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoGameNotificationHudSingleton


