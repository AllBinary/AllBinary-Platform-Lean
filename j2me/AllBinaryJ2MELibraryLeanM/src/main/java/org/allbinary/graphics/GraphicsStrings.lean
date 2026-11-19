-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GraphicsStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "ANIMATION" (JV.str "animation")
    JR.setField this "ANGLE" (JV.str "angle")
    JR.setField this "MOVEMENT_ANGLE" (JV.str "movement_angle")
    JR.setField this "ROTATION" (JV.str "rotation")
    JR.setField this "OPACITY" (JV.str "opacity")
    JR.setField this "HTML" (JV.str "HTML")
    JR.setField this "WIDTH" (JV.str "width")
    JR.setField this "HEIGHT" (JV.str "height")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GraphicsStrings" "instance" (<- JR.new "GraphicsStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GraphicsStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GraphicsStrings",
    javaName := "org.allbinary.graphics.GraphicsStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("ANIMATION", JV.null), ("ANGLE", JV.null), ("MOVEMENT_ANGLE", JV.null), ("ROTATION", JV.null), ("OPACITY", JV.null), ("HTML", JV.null), ("WIDTH", JV.null), ("HEIGHT", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GraphicsStrings


