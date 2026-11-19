-- Generated Code Do Not Modify
-- package org.allbinary.game.graphics.hud
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicHudFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "DIRECTION_EXCEPTION" (JV.str "Only Horizontal Direction is Allowed Currently")
    JR.setField this "VERTICAL" (JR.asI (JV.int 0))
    JR.setField this "HORIZONTAL" (JR.asI (JV.int 1))
    JR.setField this "BOTTOMLEFT" (JR.asI (JV.int 0))
    JR.setField this "BOTTOMRIGHT" (JR.asI (JV.int 1))
    JR.setField this "TOPLEFT" (JR.asI (JV.int 2))
    JR.setField this "TOPRIGHT" (JR.asI (JV.int 3))
    JR.setField this "BOTTOMCENTER" (JR.asI (JV.int 4))
    JR.setField this "TOPCENTER" (JR.asI (JV.int 5))
    JR.setField this "ABSOLUTE" (JR.asI (JV.int 6))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "BasicHudFactory" "instance" (<- JR.new "BasicHudFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "BasicHudFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BasicHudFactory",
    javaName := "org.allbinary.game.graphics.hud.BasicHudFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("DIRECTION_EXCEPTION", JV.null), ("VERTICAL", (JV.int 0)), ("HORIZONTAL", (JV.int 0)), ("BOTTOMLEFT", (JV.int 0)), ("BOTTOMRIGHT", (JV.int 0)), ("TOPLEFT", (JV.int 0)), ("TOPRIGHT", (JV.int 0)), ("BOTTOMCENTER", (JV.int 0)), ("TOPCENTER", (JV.int 0)), ("ABSOLUTE", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicHudFactory


