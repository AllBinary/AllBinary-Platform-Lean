-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AlwaysRepaintBehavior

def jfields (this : JV) : JM JV := do
    JR.setField this "NAME_AlwaysRepaintBehavior" (JV.str "AlwaysRepaintBehavior")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AlwaysRepaintBehavior" "instanceC" (<- JR.new "AlwaysRepaintBehavior" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AlwaysRepaintBehavior" "instanceC")


def m_repaint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
    let mut l_openGLFeatureFactory : JV := (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[])
    if JR.truth (<- JR.call l_features "isFeature_1" #[(<- JR.getField l_openGLFeatureFactory "OPENGL")]) then
        let _ := (<- JR.call (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[]) "process_0" #[])
        pure ()
    else
        let mut l_thread : JV := (<- JR.new "Thread" #[(<- JR.new "RepaintRunnable" #[l_canvas]), (<- JR.getField this "NAME_AlwaysRepaintBehavior")])
        let _ := (<- JR.call l_thread "start_0" #[])
        pure ()
    pure JV.null


def m_onChangeRepaint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "RepaintBehavior" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AlwaysRepaintBehavior",
    javaName := "org.allbinary.game.displayable.AlwaysRepaintBehavior",
    super := "RepaintBehavior",
    interfaces := #[],
    isInterface := false,
    fields := #[("NAME_AlwaysRepaintBehavior", JV.null)],
    statics := #[("instanceC", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("repaint_1", #["Canvas"], false, m_repaint_1), 
        ("onChangeRepaint_1", #["Canvas"], false, m_onChangeRepaint_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AlwaysRepaintBehavior


