-- Generated Code Do Not Modify
-- package org.allbinary.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameGlobalsFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "newCanvas" (JV.bool true)
    JR.setField this "newDisplaybleTime" (JR.asJ (JR.toJ (<- JR.getStatic "Integer" "MIN_VALUE")))
    JR.setField this "point" (<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameGlobalsFactory" "instance" (<- JR.new "GameGlobalsFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameGlobalsFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameGlobalsFactory",
    javaName := "org.allbinary.canvas.GameGlobalsFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("newCanvas", (JV.bool false)), ("newDisplaybleTime", (JV.long 0)), ("point", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameGlobalsFactory


