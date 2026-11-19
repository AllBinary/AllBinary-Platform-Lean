-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic.notification
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameNotification

def jfields (this : JV) : JM JV := do
    JR.setField this "stringList" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "timeList" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "colorList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameNotification" "NULL_GAME_NOTIFICATION_EVENT" (<- JR.new "GameNotificationEvent" #[(<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.new "Integer" #[(JV.int 0)]), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "RED"), (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "FALSE")])
    pure JV.null


def m_add_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    let mut l_seconds : JV := (JR.arg jargs 1)
    let mut l_basicColor : JV := (JR.arg jargs 2)
    if JR.truth (JR.not (<- JR.call (<- JR.getField this "stringList") "contains_1" #[l_string])) then
        let _ := (<- JR.call (<- JR.getField this "stringList") "add_1" #[l_string])
        let _ := (<- JR.call (<- JR.getField this "timeList") "add_1" #[l_seconds])
        let _ := (<- JR.call (<- JR.getField this "colorList") "add_1" #[l_basicColor])
        pure ()
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "stringList") "clear_0" #[])
    let _ := (<- JR.call (<- JR.getField this "timeList") "clear_0" #[])
    let _ := (<- JR.call (<- JR.getField this "colorList") "clear_0" #[])
    pure JV.null


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getField this "stringList") "size_0" #[]))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameNotification",
    javaName := "org.allbinary.game.ag.layer.hud.basic.notification.GameNotification",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("stringList", JV.null), ("timeList", JV.null), ("colorList", JV.null)],
    statics := #[("NULL_GAME_NOTIFICATION_EVENT", JV.null)],
    methods := #[
        ("add_3", #["String", "Integer", "BasicColor"], false, m_add_3), 
        ("clear_0", #[], false, m_clear_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameNotification


