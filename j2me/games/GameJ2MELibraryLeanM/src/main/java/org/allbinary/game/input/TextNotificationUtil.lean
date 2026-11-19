-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TextNotificationUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "TWO" (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 2)])
    JR.setField this "FALSE" (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "FALSE")
    JR.setField this "gameNotificationEventHandler" (<- JR.callStatic "GameNotificationEventHandler" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TextNotificationUtil" "instance" (<- JR.new "TextNotificationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TextNotificationUtil" "instance")


def m_fireError_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_message : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.callStatic "PrimaryPlayerQueueFactory" "getInstance_0" #[]) "add_1" #[(<- JR.callStatic "ErrorSound" "getInstance_0" #[])])
    let _ := (<- JR.call this "fire_1" #[l_message])
    pure JV.null


def m_fireNew_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_message : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.callStatic "PrimaryPlayerQueueFactory" "getInstance_0" #[]) "add_1" #[(<- JR.callStatic "SelectSound" "getInstance_0" #[])])
    let _ := (<- JR.call this "fire_1" #[l_message])
    pure JV.null


def m_fireSuccess_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_message : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.callStatic "PrimaryPlayerQueueFactory" "getInstance_0" #[]) "add_1" #[(<- JR.callStatic "SelectSound" "getInstance_0" #[])])
    let _ := (<- JR.call this "fire_1" #[l_message])
    pure JV.null


def m_fire_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_message : JV := (JR.arg jargs 0)
    let mut l_gameNotificationEvent : JV := (<- JR.new "GameNotificationEvent" #[this, l_message, (<- JR.getField this "TWO"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "RED"), (<- JR.getField this "FALSE")])
    let _ := (<- JR.call (<- JR.getField this "gameNotificationEventHandler") "fireEvent_1" #[l_gameNotificationEvent])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TextNotificationUtil",
    javaName := "org.allbinary.game.input.TextNotificationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("TWO", JV.null), ("FALSE", JV.null), ("gameNotificationEventHandler", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("fireError_1", #["String"], false, m_fireError_1), 
        ("fireNew_1", #["String"], false, m_fireNew_1), 
        ("fireSuccess_1", #["String"], false, m_fireSuccess_1), 
        ("fire_1", #["String"], false, m_fire_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TextNotificationUtil


