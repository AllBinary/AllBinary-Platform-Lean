-- Generated Code Do Not Modify
-- package org.allbinary.content
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NotificationUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NotificationUtil" "SINGLETON" (<- JR.new "NotificationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "NotificationUtil" "SINGLETON")


def m_notify_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    let mut l_resource : JV := (JR.arg jargs 1)
    let mut l_message : JV := (JR.arg jargs 2)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NotificationUtil",
    javaName := "org.allbinary.content.NotificationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("notify_3", #["Command", "String", "String"], false, m_notify_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NotificationUtil


