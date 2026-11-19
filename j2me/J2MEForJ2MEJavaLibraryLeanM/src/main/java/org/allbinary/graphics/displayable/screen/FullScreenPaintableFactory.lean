-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable.screen
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_FullScreenPaintableFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "paintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "FullScreenPaintableFactory" "instance" (<- JR.new "FullScreenPaintableFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "FullScreenPaintableFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "FullScreenPaintableFactory",
    javaName := "org.allbinary.graphics.displayable.screen.FullScreenPaintableFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("paintable", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_FullScreenPaintableFactory


