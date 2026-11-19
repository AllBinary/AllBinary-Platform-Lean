-- Generated Code Do Not Modify
-- package org.allbinary.game.graphics.hud
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_HudGraphicsPosition

def jfields (this : JV) : JM JV := do
    JR.setField this "point" (<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "HudGraphicsPosition" "NULL_HUD_GRAPHICS_POSITION" (<- JR.new "HudGraphicsPosition" #[(<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO"), (JV.int 9)])
    pure JV.null


def m_getAnchor_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "anchor"))


def m_setAnchor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anchor : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "anchor" (JR.asI l_anchor)
    pure JV.null


def m_getPoint_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "point")


def m_setPoint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    JR.setField this "point" l_point
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_point : JV := (JR.arg jargs 0)
    let mut l_anchor : JV := (JR.asI (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "setAnchor_1" #[l_anchor])
    let _ := (<- JR.call this "setPoint_1" #[l_point])
    pure this

initialize JR.registerClass {
    name := "HudGraphicsPosition",
    javaName := "org.allbinary.game.graphics.hud.HudGraphicsPosition",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("anchor", (JV.int 0)), ("point", JV.null)],
    statics := #[("NULL_HUD_GRAPHICS_POSITION", JV.null)],
    methods := #[
        ("getAnchor_0", #[], false, m_getAnchor_0), 
        ("setAnchor_1", #["int"], false, m_setAnchor_1), 
        ("getPoint_0", #[], false, m_getPoint_0), 
        ("setPoint_1", #["GPoint"], false, m_setPoint_1), 
        ("jinit_2", #["GPoint", "int"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_HudGraphicsPosition


