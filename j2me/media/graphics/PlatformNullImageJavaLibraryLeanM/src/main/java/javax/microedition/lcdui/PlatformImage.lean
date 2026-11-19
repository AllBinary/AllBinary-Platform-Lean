-- Generated Code Do Not Modify
-- package javax.microedition.lcdui
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformImage

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getImage_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphicsSurface2 : JV := (JR.arg jargs 0)
    return (<- JR.getStatic "NullImage" "NULL_IMAGE")


def m_getSurfaceWidth_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphicsSurface2 : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI l_width)


def m_getSurfaceHeight_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphicsSurface2 : JV := (JR.arg jargs 0)
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI l_height)


def m_getWidth_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI l_width)


def m_getHeight_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI l_height)


def m_getGraphics_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphicsSurface : JV := (JR.arg jargs 0)
    let mut l_width : JV := (JR.asI (JR.arg jargs 1))
    let mut l_height : JV := (JR.asI (JR.arg jargs 2))
    let mut l_image : JV := (JR.arg jargs 3)
    throw (<- JR.new "RuntimeException" #[])


def m_drawImage_6 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_anchor : JV := (JR.asI (JR.arg jargs 3))
    let mut l_g2 : JV := (JR.arg jargs 4)
    let mut l_g : JV := (JR.arg jargs 5)
    pure JV.null


def m_drawRegion_10 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    let mut l_x_src : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y_src : JV := (JR.asI (JR.arg jargs 2))
    let mut l_width : JV := (JR.asI (JR.arg jargs 3))
    let mut l_height : JV := (JR.asI (JR.arg jargs 4))
    let mut l_transform : JV := (JR.asI (JR.arg jargs 5))
    let mut l_x_dst : JV := (JR.asI (JR.arg jargs 6))
    let mut l_y_dst : JV := (JR.asI (JR.arg jargs 7))
    let mut l_anchor : JV := (JR.asI (JR.arg jargs 8))
    let mut l_g : JV := (JR.arg jargs 9)
    pure JV.null


def m_getRGB_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_argb : JV := (JR.arg jargs 0)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 1))
    let mut l_scanlength : JV := (JR.asI (JR.arg jargs 2))
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let mut l_width : JV := (JR.asI (JR.arg jargs 5))
    let mut l_height : JV := (JR.asI (JR.arg jargs 6))
    let mut l_image : JV := (JR.arg jargs 7)
    pure JV.null


def m_setRGB_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_argb : JV := (JR.arg jargs 0)
    let mut l_offset : JV := (JR.asI (JR.arg jargs 1))
    let mut l_scanlength : JV := (JR.asI (JR.arg jargs 2))
    let mut l_x : JV := (JR.asI (JR.arg jargs 3))
    let mut l_y : JV := (JR.asI (JR.arg jargs 4))
    let mut l_width : JV := (JR.asI (JR.arg jargs 5))
    let mut l_height : JV := (JR.asI (JR.arg jargs 6))
    let mut l_image : JV := (JR.arg jargs 7)
    pure JV.null


def m_getData_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_image : JV := (JR.arg jargs 0)
    return (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlatformImage",
    javaName := "javax.microedition.lcdui.PlatformImage",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getImage_1", #["Any"], false, m_getImage_1), 
        ("getSurfaceWidth_2", #["Any", "int"], false, m_getSurfaceWidth_2), 
        ("getSurfaceHeight_2", #["Any", "int"], false, m_getSurfaceHeight_2), 
        ("getWidth_2", #["Image", "int"], false, m_getWidth_2), 
        ("getHeight_2", #["Image", "int"], false, m_getHeight_2), 
        ("getGraphics_4", #["Any", "int", "int", "Image"], false, m_getGraphics_4), 
        ("drawImage_6", #["Image", "int", "int", "int", "Graphics", "Any"], false, m_drawImage_6), 
        ("drawRegion_10", #["Image", "int", "int", "int", "int", "int", "int", "int", "int", "Graphics"], false, m_drawRegion_10), 
        ("getRGB_8", #["intArr", "int", "int", "int", "int", "int", "int", "Image"], false, m_getRGB_8), 
        ("setRGB_8", #["intArr", "int", "int", "int", "int", "int", "int", "Image"], false, m_setRGB_8), 
        ("getData_1", #["Image"], false, m_getData_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformImage


