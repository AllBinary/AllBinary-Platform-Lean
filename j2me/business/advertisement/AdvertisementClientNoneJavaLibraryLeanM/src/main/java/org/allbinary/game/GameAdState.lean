-- Generated Code Do Not Modify
-- package org.allbinary.game
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameAdState

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onVirtualKeyboardEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_virtualKeyboardEvent : JV := (JR.arg jargs 0)
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "GameAdStateBase" this "onEvent_1" #[l_eventObject])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_adConfiguration : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "GameAdStateBase" this #[l_adConfiguration]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.callStatic "VirtualKeyboardEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[this])
    pure this

initialize JR.registerClass {
    name := "GameAdState",
    javaName := "org.allbinary.game.GameAdState",
    super := "GameAdStateBase",
    interfaces := #["VirtualKeyboardEventListenerInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("onVirtualKeyboardEvent_1", #["VirtualKeyboardEvent"], false, m_onVirtualKeyboardEvent_1), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("jinit_1", #["AdConfiguration"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameAdState


