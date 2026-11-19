-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.hud.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameNotificationEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "string" (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    JR.setField this "basicColor" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "string")


def m_getSeconds_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "seconds")


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColor")


def m_getPermanent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "removeable")


def m_setString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    JR.setField this "string" l_string
    pure JV.null


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    JR.setField this "basicColor" l_basicColor
    pure JV.null


def jinit_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let mut l_string : JV := (JR.arg jargs 1)
    let mut l_seconds : JV := (JR.arg jargs 2)
    let mut l_basicColor : JV := (JR.arg jargs 3)
    let mut l_permanent : JV := (JR.arg jargs 4)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_anyType]
    let _ <- jfields this
    let _ := (<- JR.call this "setString_1" #[l_string])
    JR.setField this "seconds" l_seconds
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    JR.setField this "removeable" l_permanent
    pure this

initialize JR.registerClass {
    name := "GameNotificationEvent",
    javaName := "org.allbinary.game.layer.hud.event.GameNotificationEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("string", JV.null), ("seconds", JV.null), ("basicColor", JV.null), ("removeable", JV.null)],
    statics := #[],
    methods := #[
        ("getString_0", #[], false, m_getString_0), 
        ("getSeconds_0", #[], false, m_getSeconds_0), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("getPermanent_0", #[], false, m_getPermanent_0), 
        ("setString_1", #["String"], false, m_setString_1), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("jinit_5", #["Any", "String", "Integer", "BasicColor", "Boolean"], false, jinit_5)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameNotificationEvent


