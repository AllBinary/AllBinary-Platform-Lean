-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_OpenGLOptions

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_openGLFeatureFactory : JV := (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call (<- JR.callStatic "Features" "getInstance_0" #[]) "isFeature_1" #[(<- JR.getField l_openGLFeatureFactory "OPENGL_OPTIONS")]) then
        let mut l_openGLMultipleList : JV := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_openGLMultipleList "add_1" #[(<- JR.getField l_openGLFeatureFactory "OPENGL")])
        let _ := (<- JR.call (<- JR.callStatic "GameFeatureChoiceGroups" "getMultipleInstance_0" #[]) "add_2" #[(JV.str "OpenGL (Complete Restart)"), l_openGLMultipleList])
        let mut l_openGLVersionSelectorMultipleList : JV := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_openGLVersionSelectorMultipleList "add_1" #[(<- JR.getField l_openGLFeatureFactory "OPENGL_AUTO_SELECT")])
        let _ := (<- JR.call l_openGLVersionSelectorMultipleList "add_1" #[(<- JR.getField l_openGLFeatureFactory "OPENGL_MINIMUM")])
        let _ := (<- JR.call (<- JR.callStatic "GameFeatureChoiceGroups" "getExclusiveInstance_0" #[]) "add_2" #[(JV.str "OpenGL Version Selector"), l_openGLVersionSelectorMultipleList])
        let mut l_openGLImageColorMultipleList : JV := (<- JR.new "BasicArrayListD" #[])
        let _ := (<- JR.call l_openGLImageColorMultipleList "add_1" #[(<- JR.getField l_openGLFeatureFactory "IMAGE_COLOR_DEPTH_4444")])
        let _ := (<- JR.call l_openGLImageColorMultipleList "add_1" #[(<- JR.getField l_openGLFeatureFactory "IMAGE_COLOR_DEPTH_8888")])
        let _ := (<- JR.call (<- JR.callStatic "GameFeatureChoiceGroups" "getExclusiveInstance_0" #[]) "add_2" #[(JV.str "OpenGL Image Color RGBA"), l_openGLImageColorMultipleList])
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "OpenGLOptions",
    javaName := "org.allbinary.graphics.opengles.OpenGLOptions",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_OpenGLOptions


