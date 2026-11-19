-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles.renderer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RendererStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "ON_SURFACE_CREATED" (JV.str "onSurfaceCreated")
    JR.setField this "ON_SURFACE_CHANGED" (JV.str "onSurfaceChanged")
    JR.setField this "ON_DRAW_FRAME" (JV.str "onDrawFrame")
    JR.setField this "ON_DRAW_FRAME_THREED" (JV.str "onDrawFrameThreed")
    JR.setField this "ON_DRAW_FRAME_2D" (JV.str "onDrawFrame2d")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "RendererStrings" "instance" (<- JR.new "RendererStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "RendererStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RendererStrings",
    javaName := "org.allbinary.graphics.opengles.renderer.RendererStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("ON_SURFACE_CREATED", JV.null), ("ON_SURFACE_CHANGED", JV.null), ("ON_DRAW_FRAME", JV.null), ("ON_DRAW_FRAME_THREED", JV.null), ("ON_DRAW_FRAME_2D", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RendererStrings


