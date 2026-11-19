-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PositionStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "X" (JV.str "x")
    JR.setField this "Y" (JV.str "y")
    JR.setField this "X_LABEL" (JV.str "x: ")
    JR.setField this "Y_LABEL" (JV.str "y: ")
    JR.setField this "Z_LABEL" (JV.str "z: ")
    JR.setField this "DX_LABEL" (JV.str "dx: ")
    JR.setField this "DY_LABEL" (JV.str "dy: ")
    JR.setField this "DZ_LABEL" (JV.str "dz: ")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PositionStrings" "instance" (<- JR.new "PositionStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PositionStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PositionStrings",
    javaName := "org.allbinary.math.PositionStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("X", JV.null), ("Y", JV.null), ("X_LABEL", JV.null), ("Y_LABEL", JV.null), ("Z_LABEL", JV.null), ("DX_LABEL", JV.null), ("DY_LABEL", JV.null), ("DZ_LABEL", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PositionStrings


