-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLFeatureFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "OPENGL_OPTIONS" (<- JR.new "OpenGLFeature" #[(JV.str "OpenGL Options")])
    JR.setField this "OPENGL" (<- JR.new "OpenGLFeature" #[(JV.str "OpenGL")])
    JR.setField this "OPENGL_SURFACE_VIEW" (<- JR.new "OpenGLFeature" #[(JV.str "GLSurfaceView")])
    JR.setField this "OPENGL_2D" (<- JR.new "OpenGLFeature" #[(JV.str "OpenGL 2D")])
    JR.setField this "OPENGL_3D" (<- JR.new "OpenGLFeature" #[(JV.str "OpenGL 3D")])
    JR.setField this "OPENGL_2D_AND_3D" (<- JR.new "OpenGLFeature" #[(JV.str "OpenGL 2D/3D")])
    JR.setField this "OPENGL_AUTO_SELECT" (<- JR.new "OpenGLFeature" #[(JV.str "Auto Select")])
    JR.setField this "OPENGL_MINIMUM" (<- JR.new "OpenGLFeature" #[(JV.str "Minimum")])
    JR.setField this "OPENGL_AS_GAME_THREAD" (<- JR.new "OpenGLFeature" #[(JV.str "As game thread")])
    JR.setField this "OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS" (<- JR.new "OpenGLFeature" #[(JV.str "As different threads")])
    JR.setField this "IMAGE_COLOR_DEPTH_4444" (<- JR.new "OpenGLFeature" #[(JV.str "4444")])
    JR.setField this "IMAGE_COLOR_DEPTH_8888" (<- JR.new "OpenGLFeature" #[(JV.str "8888")])
    JR.setField this "IMAGE_COLOR_DEPTH_565" (<- JR.new "OpenGLFeature" #[(JV.str "565")])
    JR.setField this "OPENGL_COLOR_DEPTH_4444" (<- JR.new "OpenGLFeature" #[(JV.str "4444")])
    JR.setField this "OPENGL_COLOR_DEPTH_8888" (<- JR.new "OpenGLFeature" #[(JV.str "8888")])
    JR.setField this "OPENGL_COLOR_DEPTH_565" (<- JR.new "OpenGLFeature" #[(JV.str "565")])
    JR.setField this "OPENGL_DRAW_TEXTURE" (<- JR.new "OpenGLFeature" #[(JV.str "GL_OES_draw_texture")])
    JR.setField this "OPENGL_VERTEX_BUFFER_OBJECT" (<- JR.new "OpenGLFeature" #[(JV.str "vertex_buffer_object")])
    JR.setField this "OPENGL_SIMPLE_OBJECT3D_PROCESSOR" (<- JR.new "OpenGLFeature" #[(JV.str "Simple Object3d Processor")])
    JR.setField this "OPENGL_COMPLEX_OBJECT3D_PROCESSOR" (<- JR.new "OpenGLFeature" #[(JV.str "Complex Object3d Processor")])
    JR.setField this "OPENGL_SIMPLE_TEXTURE_PROCESSOR" (<- JR.new "OpenGLFeature" #[(JV.str "Simple Texture Processor")])
    JR.setField this "OPENGL_COMPLEX_TEXTURE_PROCESSOR" (<- JR.new "OpenGLFeature" #[(JV.str "Complex Texture Processor")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLFeatureFactory" "instance" (<- JR.new "OpenGLFeatureFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "OpenGLFeatureFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLFeatureFactory",
    javaName := "org.allbinary.graphics.opengles.OpenGLFeatureFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("OPENGL_OPTIONS", JV.null), ("OPENGL", JV.null), ("OPENGL_SURFACE_VIEW", JV.null), ("OPENGL_2D", JV.null), ("OPENGL_3D", JV.null), ("OPENGL_2D_AND_3D", JV.null), ("OPENGL_AUTO_SELECT", JV.null), ("OPENGL_MINIMUM", JV.null), ("OPENGL_AS_GAME_THREAD", JV.null), ("OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS", JV.null), ("IMAGE_COLOR_DEPTH_4444", JV.null), ("IMAGE_COLOR_DEPTH_8888", JV.null), ("IMAGE_COLOR_DEPTH_565", JV.null), ("OPENGL_COLOR_DEPTH_4444", JV.null), ("OPENGL_COLOR_DEPTH_8888", JV.null), ("OPENGL_COLOR_DEPTH_565", JV.null), ("OPENGL_DRAW_TEXTURE", JV.null), ("OPENGL_VERTEX_BUFFER_OBJECT", JV.null), ("OPENGL_SIMPLE_OBJECT3D_PROCESSOR", JV.null), ("OPENGL_COMPLEX_OBJECT3D_PROCESSOR", JV.null), ("OPENGL_SIMPLE_TEXTURE_PROCESSOR", JV.null), ("OPENGL_COMPLEX_TEXTURE_PROCESSOR", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLFeatureFactory


