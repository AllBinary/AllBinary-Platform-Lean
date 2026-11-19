-- Generated Code Do Not Modify
-- package org.allbinary
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PostGameCommandFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PostGameCommandFactory" "instance" (<- JR.new "PostGameCommandFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PostGameCommandFactory" "instance")


def m_addCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.callStatic "MultiPlayerGameFeatureFactory" "getInstance_0" #[]) "addCommands_1" #[l_canvas])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PostGameCommandFactory",
    javaName := "org.allbinary.PostGameCommandFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("addCommands_1", #["MyCanvas"], false, m_addCommands_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PostGameCommandFactory


