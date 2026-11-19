-- Generated Code Do Not Modify
-- package org.allbinary.graphics.canvas.transition.progress
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ProgressCanvasFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ProgressCanvasFactory" "PROGRESS_FORM_SCREEN" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "ProgressCanvasFactory" "PROGRESS_FORM_SCREEN") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "ProgressCanvasFactory" "PROGRESS_FORM_SCREEN" (<- JR.new "ProgressCanvas" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "BLACK"), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "WHITE")])
        pure ()
    return (<- JR.getStatic "ProgressCanvasFactory" "PROGRESS_FORM_SCREEN")


def m_getLazyInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "NullPaintable" "getInstance_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ProgressCanvasFactory",
    javaName := "org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("PROGRESS_FORM_SCREEN", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getLazyInstance_0", #[], true, m_getLazyInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ProgressCanvasFactory


