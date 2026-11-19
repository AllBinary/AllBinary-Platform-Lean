-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable.screen
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AboutCommandProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AboutCommandProcessor" "instance" (<- JR.new "AboutCommandProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AboutCommandProcessor" "instance")


def m_process_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_midletCommandListener : JV := (JR.arg jargs 0)
    let mut l_command : JV := (JR.arg jargs 1)
    let mut l_canvas : JV := (JR.arg jargs 2)
    let _ := (<- JR.call l_midletCommandListener "commandAction_2" #[l_command, l_canvas])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AboutCommandProcessor",
    javaName := "org.allbinary.graphics.displayable.screen.AboutCommandProcessor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_3", #["CommandListener", "Command", "Canvas"], false, m_process_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AboutCommandProcessor


