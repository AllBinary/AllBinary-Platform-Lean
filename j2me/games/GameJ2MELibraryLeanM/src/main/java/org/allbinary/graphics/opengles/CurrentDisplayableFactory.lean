-- Generated Code Do Not Modify
-- package org.allbinary.graphics.opengles
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CurrentDisplayableFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "canvasStrings" (<- JR.callStatic "CanvasStrings" "getInstance_0" #[])
    JR.setField this "stringUtil" (<- JR.callStatic "StringUtil" "getInstance_0" #[])
    JR.setField this "SET_DISPLAYABLE" (JV.str "setDisplayable")
    JR.setField this "SET_RUNNABLE" (JV.str "setRunnable")
    JR.setField this "CLEAR_RUNNABLE" (JV.str "clearRunnable")
    JR.setField this "SET_USED_RUNNABLE" (JV.str "setUsedRunnable")
    JR.setField this "RUNNABLE" (JV.str "Runnable: ")
    JR.setField this "RUNNABLE_WAS_ALREADY_IN_USE" (JV.str "Runnable was already in use: ")
    JR.setField this "DEFAULT_CHILD_NAME_LIST" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "displayable" (<- JR.callStatic "NullDisplayable" "getInstance_0" #[])
    JR.setField this "openGlReadydisplayable" (<- JR.callStatic "NullDisplayable" "getInstance_0" #[])
    JR.setField this "runnable" (<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[])
    JR.setField this "usedRunnable" (<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CurrentDisplayableFactory" "instance" (<- JR.new "CurrentDisplayableFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CurrentDisplayableFactory" "instance")


def m_setMyCanvas_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayable : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.instanceOf (<- JR.getField this "displayable") "MyCanvas") then
        if JR.truth (<- JR.call l_displayable "hasChild_1" #[(<- JR.getField this "displayable")]) then
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Child Displayable is already set for: ")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[l_displayable])]) "toString_0" #[]), this, (<- JR.getField this "SET_DISPLAYABLE")])
            return JV.null
        pure ()
    let _ := (<- JR.call this "setDisplayable_1" #[l_displayable])
    pure JV.null


def m_setDisplayable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayable : JV := (JR.arg jargs 0)
    JR.setField this "displayable" l_displayable
    let _ := (<- JR.call this "setOpenGlReadydisplayable_1" #[l_displayable])
    pure JV.null


def m_setOpenGlReadydisplayable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_openGlReadydisplayable : JV := (JR.arg jargs 0)
    JR.setField this "openGlReadydisplayable" l_openGlReadydisplayable
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_getOpenGlReadydisplayable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "openGlReadydisplayable")


def m_setRunnable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_runnable : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "RUNNABLE")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[l_runnable])]) "toString_0" #[]), this, (<- JR.getField this "SET_RUNNABLE")])
    JR.setField this "runnable" l_runnable
    if JR.truth (<- JR.ne (<- JR.getField this "usedRunnable") (<- JR.getField this "runnable")) then
        let _ := (<- JR.call this "update_0" #[])
        pure ()
    else
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "RUNNABLE_WAS_ALREADY_IN_USE")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[l_runnable])]) "toString_0" #[]), this, (<- JR.getField this "SET_RUNNABLE")])
        pure ()
    pure JV.null


def m_clearRunnable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "RUNNABLE")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[(<- JR.callStatic "NullRunnable" "getInstance_0" #[])])]) "toString_0" #[]), this, (<- JR.getField this "CLEAR_RUNNABLE")])
    let _ := (<- JR.call this "setUsedRunnable_1" #[(<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[])])
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
        let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
        let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
        let _ := (<- JR.call l_stringMaker "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[(<- JR.getField this "openGlReadydisplayable")])])
        if JR.truth (<- JR.cand (<- JR.getStatic "SWTUtil" "isSWT") (do pure (JR.not (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL")])))) then
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[(<- JR.getStatic "SWTUtil" "SWT")]) "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[(<- JR.getField this "RUNNABLE")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[(<- JR.callStatic "NullRunnable" "getInstance_0" #[])])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
            let _ := (<- JR.call this "setUsedRunnable_1" #[(<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[])])
            pure ()
        else
            if JR.truth (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) then
                let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[(<- JR.getField (<- JR.callStatic "GraphicsStrings" "getInstance_0" #[]) "HTML")]) "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[(<- JR.getField this "RUNNABLE")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[(<- JR.getField this "runnable")])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
                let _ := (<- JR.call this "setUsedRunnable_1" #[(<- JR.getField this "runnable")])
                pure ()
            else
                if JR.truth (<- JR.cor (<- JR.cor (<- JR.instanceOf (<- JR.getField this "openGlReadydisplayable") "DemoCanvas") (do pure (<- JR.instanceOf (<- JR.getField this "openGlReadydisplayable") "AllBinaryGameCanvas"))) (do pure (<- JR.call l_features "isDefault_1" #[(<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL")]))) then
                    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[(<- JR.call (<- JR.getField (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[]) "OPENGL") "toString_0" #[])]) "append_1" #[(<- JR.getField l_commonSeps "SPACE")]) "append_1" #[(<- JR.getField this "RUNNABLE")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[(<- JR.getField this "runnable")])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
                    let _ := (<- JR.call this "setUsedRunnable_1" #[(<- JR.getField this "runnable")])
                    pure ()
                else
                    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "RUNNABLE")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[(<- JR.callStatic "NullRunnable" "getInstance_0" #[])])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
                    let _ := (<- JR.call this "setUsedRunnable_1" #[(<- JR.callStatic "NullWaitGameRunnable" "getInstance_0" #[])])
                    pure ()
        pure ()
    pure JV.null


def m_getDisplayable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "displayable")


def m_getUsedRunnable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "usedRunnable")


def m_setUsedRunnable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_usedRunnable : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "RUNNABLE")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[(<- JR.getField this "runnable")])]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COLON_SEP")]) "append_1" #[(<- JR.call (<- JR.getField this "stringUtil") "toString_1" #[l_usedRunnable])]) "toString_0" #[]), this, (<- JR.getField this "SET_USED_RUNNABLE")])
    JR.setField this "usedRunnable" l_usedRunnable
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getField this "DEFAULT_CHILD_NAME_LIST") "add_1" #[(<- JR.getField (<- JR.getField this "canvasStrings") "ABOUT")])
    let _ := (<- JR.call (<- JR.getField this "DEFAULT_CHILD_NAME_LIST") "add_1" #[(<- JR.getField (<- JR.getField this "canvasStrings") "OPTIONS")])
    let _ := (<- JR.call (<- JR.getField this "DEFAULT_CHILD_NAME_LIST") "add_1" #[(<- JR.getStatic "GameInputMappingCanvas" "NAME")])
    let _ := (<- JR.call (<- JR.getField this "DEFAULT_CHILD_NAME_LIST") "add_1" #[(<- JR.getStatic "GameInputMappingInstructionsCanvas" "NAME")])
    let _ := (<- JR.call (<- JR.getField this "DEFAULT_CHILD_NAME_LIST") "add_1" #[(<- JR.getStatic "HighScoresCanvas" "NAME")])
    pure this

initialize JR.registerClass {
    name := "CurrentDisplayableFactory",
    javaName := "org.allbinary.graphics.opengles.CurrentDisplayableFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("canvasStrings", JV.null), ("stringUtil", JV.null), ("SET_DISPLAYABLE", JV.null), ("SET_RUNNABLE", JV.null), ("CLEAR_RUNNABLE", JV.null), ("SET_USED_RUNNABLE", JV.null), ("RUNNABLE", JV.null), ("RUNNABLE_WAS_ALREADY_IN_USE", JV.null), ("DEFAULT_CHILD_NAME_LIST", JV.null), ("displayable", JV.null), ("openGlReadydisplayable", JV.null), ("runnable", JV.null), ("usedRunnable", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setMyCanvas_1", #["MyCanvas"], false, m_setMyCanvas_1), 
        ("setDisplayable_1", #["Displayable"], false, m_setDisplayable_1), 
        ("setOpenGlReadydisplayable_1", #["Displayable"], false, m_setOpenGlReadydisplayable_1), 
        ("getOpenGlReadydisplayable_0", #[], false, m_getOpenGlReadydisplayable_0), 
        ("setRunnable_1", #["GameRunnable"], false, m_setRunnable_1), 
        ("clearRunnable_0", #[], false, m_clearRunnable_0), 
        ("update_0", #[], false, m_update_0), 
        ("getDisplayable_0", #[], false, m_getDisplayable_0), 
        ("getUsedRunnable_0", #[], false, m_getUsedRunnable_0), 
        ("setUsedRunnable_1", #["GameRunnable"], false, m_setUsedRunnable_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CurrentDisplayableFactory


