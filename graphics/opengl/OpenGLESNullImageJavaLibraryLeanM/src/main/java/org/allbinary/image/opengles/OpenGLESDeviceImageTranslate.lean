-- Generated Code Do Not Modify
-- package org.allbinary.image.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLESDeviceImageTranslate

def jfields (this : JV) : JM JV := do
    JR.setField this "translateX" (JR.asF (JV.float 0.0))
    JR.setField this "translateY" (JR.asF (JV.float 0.0))
    JR.setField this "translateX2" (JR.asF (JV.float 0.0))
    JR.setField this "translateY2" (JR.asF (JV.float 0.0))
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_translate_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_openGLESImage : JV := (JR.arg jargs 1)
    let mut l_x : JV := (JR.asF (JR.arg jargs 2))
    let mut l_y : JV := (JR.asF (JR.arg jargs 3))
    let _ := (<- JR.call (<- JR.getField l_openGLESImage "imageProcessor") "translate_3" #[l_gl, (<- JR.add (<- JR.getField this "translateX") ((<- JR.mul (<- JR.getField (<- JR.getField l_openGLESImage "openGLESImageProperties") "scaleX") l_x))), (<- JR.add (<- JR.getField this "translateY") ((<- JR.mul (<- JR.getField (<- JR.getField l_openGLESImage "openGLESImageProperties") "scaleY") l_y)))])
    pure JV.null


def m_translate2_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    let mut l_openGLESImage : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField l_openGLESImage "imageProcessor") "translate_3" #[l_gl, (<- JR.getField this "translateX2"), (<- JR.getField this "translateY2")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "OpenGLESImageTranslate" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLESDeviceImageTranslate",
    javaName := "org.allbinary.image.opengles.OpenGLESDeviceImageTranslate",
    super := "OpenGLESImageTranslate",
    interfaces := #[],
    isInterface := false,
    fields := #[("translateX", (JV.float 0.0)), ("translateY", (JV.float 0.0)), ("translateX2", (JV.float 0.0)), ("translateY2", (JV.float 0.0))],
    statics := #[],
    methods := #[
        ("translate_4", #["GL10", "OpenGLESImage", "float", "float"], false, m_translate_4), 
        ("translate2_2", #["GL10", "OpenGLESImage"], false, m_translate2_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLESDeviceImageTranslate


