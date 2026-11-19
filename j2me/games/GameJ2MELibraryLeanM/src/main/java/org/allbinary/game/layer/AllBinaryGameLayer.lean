-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryGameLayer

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "basicSetColorUtil" (<- JR.callStatic "BasicColorSetUtil" "getInstance_0" #[])
    JR.setField this "RED" (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "RED")
    JR.setField this "paintable" (<- JR.callStatic "AllBinaryGameLayer" "createPaintable_0" #[])
    JR.setField this "gameKeyEventList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_createPaintable_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.getStatic "SWTUtil" "isSWT") then
        return (<- JR.new "SWTBlackPaintable" #[])
    return (<- JR.callStatic "NullPaintable" "getInstance_0" #[])


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_move_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_getGameKeyEventList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameKeyEventList")


def m_processInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_processTick_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allBinaryLayerManager : JV := (JR.arg jargs 0)
    throw (<- JR.new "Exception" #[(<- JR.getField (<- JR.getField this "commonStrings") "NOT_IMPLEMENTED")])


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_onViewPositionChangeEvent_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call this "onChangeEvent_1" #[(<- JR.getInherited this "AllBinaryGameLayer" "viewPositionEvent")])
    pure JV.null


def m_onChangeEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManagerEvent : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.callStatic "GameLayerUtil" "isOnScreen_1" #[this]) then
        let _ := (<- JR.callInherited this "AllBinaryGameLayer" "setVisible_1" #[(JV.bool true)])
        pure ()
    else
        let _ := (<- JR.callInherited this "AllBinaryGameLayer" "setVisible_1" #[(JV.bool false)])
        pure ()
    pure JV.null


def m_paintFirst_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "paintable") "paint_1" #[l_graphics])
    pure JV.null


def m_paintDebug_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_viewPosition : JV := (<- JR.callInherited this "AllBinaryGameLayer" "getViewPosition_0" #[])
    let mut l_viewX : JV := (JR.asI (<- JR.call l_viewPosition "getX_0" #[]))
    let mut l_viewY : JV := (JR.asI (<- JR.call l_viewPosition "getY_0" #[]))
    let _ := (<- JR.call (<- JR.getField this "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.getField this "RED")])
    let _ := (<- JR.call l_graphics "drawRect_4" #[l_viewX, l_viewY, (<- JR.callInherited this "AllBinaryGameLayer" "getWidth_0" #[]), (<- JR.callInherited this "AllBinaryGameLayer" "getHeight_0" #[])])
    pure JV.null


def m_setWidth_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "AllBinaryLayer" this "setLayerWidth_1" #[l_width])
    let _ := (<- JR.callInherited this "AllBinaryGameLayer" "setHalfWidth_1" #[(<- JR.shr l_width (JV.int 1))])
    pure JV.null


def m_setHeight_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_height : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callSuper "AllBinaryLayer" this "setLayerHeight_1" #[l_height])
    let _ := (<- JR.callInherited this "AllBinaryGameLayer" "setHalfHeight_1" #[(<- JR.shr l_height (JV.int 1))])
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_layerInfo : JV := (JR.arg jargs 1)
    let mut l_viewPosition : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "AllBinaryLayer" this #[l_name, l_layerInfo, l_viewPosition]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllBinaryGameLayer",
    javaName := "org.allbinary.game.layer.AllBinaryGameLayer",
    super := "AllBinaryLayer",
    interfaces := #["ViewPositionEventListenerInterface", "OpenGLSurfaceChangedInterface"],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("basicSetColorUtil", JV.null), ("RED", JV.null), ("paintable", JV.null), ("gameKeyEventList", JV.null)],
    statics := #[],
    methods := #[
        ("createPaintable_0", #[], true, m_createPaintable_0), 
        ("set_1", #["GL"], false, m_set_1), 
        ("move_0", #[], false, m_move_0), 
        ("getGameKeyEventList_0", #[], false, m_getGameKeyEventList_0), 
        ("processInput_1", #["AllBinaryLayerManager"], false, m_processInput_1), 
        ("processTick_1", #["AllBinaryLayerManager"], false, m_processTick_1), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onViewPositionChangeEvent_0", #[], false, m_onViewPositionChangeEvent_0), 
        ("onChangeEvent_1", #["ViewPositionEvent"], false, m_onChangeEvent_1), 
        ("paintFirst_1", #["Graphics"], false, m_paintFirst_1), 
        ("paintDebug_1", #["Graphics"], false, m_paintDebug_1), 
        ("setWidth_1", #["int"], false, m_setWidth_1), 
        ("setHeight_1", #["int"], false, m_setHeight_1), 
        ("jinit_3", #["String", "Rectangle", "ViewPositionBase"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryGameLayer


