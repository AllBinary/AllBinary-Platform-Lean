-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DemoLimitedCommandTextItemArrayFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "commandTextItemArrayFactory" (<- JR.new "CommandTextItemArrayFactory" #[(<- JR.new "LimitCommandsVisitor" #[])])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DemoLimitedCommandTextItemArrayFactory" "instance" (<- JR.new "DemoLimitedCommandTextItemArrayFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DemoLimitedCommandTextItemArrayFactory" "instance")


def m_getCommandTextItemArrayFactory_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "commandTextItemArrayFactory")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DemoLimitedCommandTextItemArrayFactory",
    javaName := "org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("commandTextItemArrayFactory", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getCommandTextItemArrayFactory_0", #[], false, m_getCommandTextItemArrayFactory_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DemoLimitedCommandTextItemArrayFactory


