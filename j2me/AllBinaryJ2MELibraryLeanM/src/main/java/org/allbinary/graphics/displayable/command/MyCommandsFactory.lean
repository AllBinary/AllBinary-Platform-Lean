-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable.command
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MyCommandsFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NO_COMMAND" (<- JR.new "Command" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (JV.int (-1)), (JV.int (-1))])
    JR.setField this "GAUGE_CHANGE" (<- JR.new "Command" #[(JV.str "GAUGE_CHANGE"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "ITEM"), (JV.int 1)])
    JR.setField this "SET_DISPLAYABLE" (<- JR.new "Command" #[(JV.str "Display"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 2)])
    JR.setField this "PAUSE_COMMAND" (<- JR.new "Command" #[(JV.str "Pause"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 0)])
    JR.setField this "RESUME_COMMAND" (<- JR.new "Command" #[(JV.str "Resume"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MyCommandsFactory" "instance" (<- JR.new "MyCommandsFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MyCommandsFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MyCommandsFactory",
    javaName := "org.allbinary.graphics.displayable.command.MyCommandsFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NO_COMMAND", JV.null), ("GAUGE_CHANGE", JV.null), ("SET_DISPLAYABLE", JV.null), ("PAUSE_COMMAND", JV.null), ("RESUME_COMMAND", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MyCommandsFactory


