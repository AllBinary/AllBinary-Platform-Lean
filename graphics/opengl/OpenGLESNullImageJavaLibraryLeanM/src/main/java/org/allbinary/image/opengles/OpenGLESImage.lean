-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLESImage

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "openGLESImageProperties" (<- JR.new "OpenGLESImageProperties" #[])
    JR.setField this "imageProcessor" (<- JR.callStatic "OpenGLESImageProcessor" "getInstance_0" #[])
    JR.setField this "openGLESImageTranslate" (<- JR.callStatic "OpenGLESImageTranslate" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "OpenGLESImage" "NULL_OPENGL_IMAGE" (<- JR.new "OpenGLESImage" #[(<- JR.getStatic "NullImage" "NULL_IMAGE"), (<- JR.getStatic "PlatformBitmapBaseFactory" "NULL_PLATFORM_BITMAP_BASE_FACTORY"), (<- JR.getStatic "PlatformTextureBaseFactory" "NULL_PLATFORM_TEXTURE_BASE_FACTORY")])
    JR.setStatic "OpenGLESImage" "texture2dList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_initTexture_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    return (JV.bool false)


def m_drawRegion_9 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_viewHeight : JV := (JR.asI (JR.arg jargs 1))
    let mut l_x_src : JV := (JR.asF (JR.arg jargs 2))
    let mut l_y_src : JV := (JR.asF (JR.arg jargs 3))
    let mut l_width : JV := (JR.asF (JR.arg jargs 4))
    let mut l_height : JV := (JR.asF (JR.arg jargs 5))
    let mut l_x : JV := (JR.asI (JR.arg jargs 6))
    let mut l_y : JV := (JR.asI (JR.arg jargs 7))
    let mut l_z : JV := (JR.asI (JR.arg jargs 8))
    pure JV.null


def m_draw_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    pure JV.null


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getStatic "OpenGLESImage" "TYPE"))


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_bitmapFactory : JV := (JR.arg jargs 1)
    let mut l_textureFactory : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Image" this #[]
    let _ <- jfields this
    JR.setField this "openGLBitmap" (<- JR.call l_bitmapFactory "createBitmap_1" #[l_image])
    JR.setField this "textureFactory" l_textureFactory
    pure this

initialize JR.registerClass {
    name := "OpenGLESImage",
    javaName := "org.allbinary.image.opengles.OpenGLESImage",
    super := "Image",
    interfaces := #["OpenGLSurfaceChangedInterface"],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("textureFactory", JV.null), ("openGLBitmap", JV.null), ("openGLESImageProperties", JV.null), ("imageProcessor", JV.null), ("openGLESImageTranslate", JV.null)],
    statics := #[("NULL_OPENGL_IMAGE", JV.null), ("texture2dList", JV.null), ("TYPE", (JR.asI (JV.int 4)))],
    methods := #[
        ("set_1", #["GL"], false, m_set_1), 
        ("initTexture_1", #["GL10"], false, m_initTexture_1), 
        ("drawRegion_9", #["GL10", "int", "float", "float", "float", "float", "int", "int", "int"], false, m_drawRegion_9), 
        ("draw_4", #["GL10", "int", "int", "int"], false, m_draw_4), 
        ("getType_0", #[], false, m_getType_0), 
        ("jinit_3", #["Image", "PlatformBitmapBaseFactory", "PlatformTextureBaseFactory"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLESImage


