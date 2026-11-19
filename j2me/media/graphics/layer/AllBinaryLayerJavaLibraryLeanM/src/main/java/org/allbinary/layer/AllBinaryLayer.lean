-- Generated Code Do Not Modify
-- package org.allbinary.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryLayer

def jfields (this : JV) : JM JV := do
    JR.setField this "viewPositionEvent" (<- JR.new "ViewPositionEvent" #[this])
    JR.setField this "viewPosition" (<- JR.getStatic "ViewPositionBase" "NULL_VIEW_POSITION")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinaryLayer" "NULL_ALLBINARY_LAYER" (<- JR.new "AllBinaryLayer" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "RectangleFactory" "SINGLETON"), (<- JR.getStatic "ViewPositionBase" "NULL_VIEW_POSITION")])
    pure JV.null


def m_setPosition_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_z : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "Layer" this "setPosition_3" #[l_x, l_y, l_z])
    pure JV.null


def m_moveDXYZ_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_dx : JV := (JR.asI (JR.arg jargs 0))
    let mut l_dy : JV := (JR.asI (JR.arg jargs 1))
    let mut l_dz : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.callSuper "Layer" this "moveDXYZ_3" #[l_dx, l_dy, l_dz])
    pure JV.null


def m_getXP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "Layer" this "getXP_0" #[]))


def m_getYP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "Layer" this "getYP_0" #[]))


def m_getZP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "Layer" this "getZP_0" #[]))


def m_getWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "Layer" this "getWidth_0" #[]))


def m_getHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.callSuper "Layer" this "getHeight_0" #[]))


def m_setVisible_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_visible : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "Layer" this "setVisible_1" #[l_visible])
    pure JV.null


def m_isVisible_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "Layer" this "isVisible_0" #[])


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "Layer" this "paint_1" #[l_graphics])
    pure JV.null


def m_onChangeEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManagerEvent : JV := (JR.arg jargs 0)
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_getX2_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.add (<- JR.call this "getXP_0" #[]) (<- JR.call this "getWidth_0" #[])))


def m_getY2_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.add (<- JR.call this "getYP_0" #[]) (<- JR.call this "getHeight_0" #[])))


def m_getZ2_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JR.toI ((<- JR.add (JR.toJ (<- JR.call this "getZP_0" #[])) (<- JR.callInherited this "AllBinaryLayer" "getDepth_0" #[])))))


def m_getName_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "name")


def m_setHalfWidth_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_halfWidth : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "halfWidth" (JR.asI l_halfWidth)
    pure JV.null


def m_getHalfWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "halfWidth"))


def m_setHalfHeight_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_halfHeight : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "halfHeight" (JR.asI l_halfHeight)
    pure JV.null


def m_getHalfHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "halfHeight"))


def m_getHalfDepth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.div (JR.toI (<- JR.callInherited this "AllBinaryLayer" "getDepth_0" #[])) (JV.int 2)))


def m_getViewPosition_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "viewPosition")


def m_setViewPosition_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_viewPosition : JV := (JR.arg jargs 0)
    JR.setField this "viewPosition" l_viewPosition
    pure JV.null


def m_getGroupInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField (<- JR.callStatic "BasicGroupFactory" "getInstance_0" #[]) "NONE_ARRAY")


def m_implmentsTickableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_implmentsGameInputInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_implmentsArtificialIntelligenceCompositeInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_implmentsCollidableInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool false)


def m_implementsThreedInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.callStatic "OpenGLFeatureUtil" "getInstance_0" #[]) "isAnyThreed_0" #[])


def m_getType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int (-1)))


def m_getMultiPlayerType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (JV.int (-1)))


def m_toStringAppend_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (JR.arg jargs 0)
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let mut l_positionStrings : JV := (<- JR.callStatic "PositionStrings" "getInstance_0" #[])
    let mut l_commonLabels : JV := (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call this "getName_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "COLON")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getStatic "AllBinaryLayer" "TYPE")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getType_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "X_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getXP_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "Y_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getYP_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_positionStrings "Z_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getZP_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonLabels "WIDTH_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getWidth_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonSeps "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonLabels "HEIGHT_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.call this "getHeight_0" #[])])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call this "toStringAppend_1" #[l_stringBuffer])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_rectangle : JV := (JR.arg jargs 1)
    let mut l_viewPosition : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Layer" this #[(<- JR.call l_rectangle "getWidth_0" #[]), (<- JR.call l_rectangle "getHeight_0" #[])]
    let _ <- jfields this
    let mut l_localName : JV := JV.null
    l_localName := (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_name]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "COLON")]) "append_1" #[(<- JR.callStatic "Integer" "toHexString_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this])])]) "toString_0" #[])
    JR.setField this "name" l_localName
    let mut l_point : JV := (<- JR.call l_rectangle "getPoint_0" #[])
    let _ := (<- JR.call this "setPosition_3" #[(<- JR.call l_point "getX_0" #[]), (<- JR.call l_point "getY_0" #[]), (<- JR.call l_point "getZ_0" #[])])
    let _ := (<- JR.call this "setHalfWidth_1" #[((<- JR.shr (<- JR.call this "getWidth_0" #[]) (JV.int 1)))])
    let _ := (<- JR.call this "setHalfHeight_1" #[((<- JR.shr (<- JR.call this "getHeight_0" #[]) (JV.int 1)))])
    JR.setField this "viewPosition" l_viewPosition
    let _ := (<- JR.call (<- JR.getField this "viewPosition") "setAllbinaryLayer_1" #[this])
    pure this

initialize JR.registerClass {
    name := "AllBinaryLayer",
    javaName := "org.allbinary.layer.AllBinaryLayer",
    super := "Layer",
    interfaces := #["LayerInterface"],
    isInterface := false,
    fields := #[("viewPositionEvent", JV.null), ("halfWidth", (JV.int 0)), ("halfHeight", (JV.int 0)), ("name", JV.null), ("viewPosition", JV.null)],
    statics := #[("NULL_ALLBINARY_LAYER", JV.null), ("TYPE", (JV.str "Type: "))],
    methods := #[
        ("setPosition_3", #["int", "int", "int"], false, m_setPosition_3), 
        ("moveDXYZ_3", #["int", "int", "int"], false, m_moveDXYZ_3), 
        ("getXP_0", #[], false, m_getXP_0), 
        ("getYP_0", #[], false, m_getYP_0), 
        ("getZP_0", #[], false, m_getZP_0), 
        ("getWidth_0", #[], false, m_getWidth_0), 
        ("getHeight_0", #[], false, m_getHeight_0), 
        ("setVisible_1", #["boolean"], false, m_setVisible_1), 
        ("isVisible_0", #[], false, m_isVisible_0), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("onChangeEvent_1", #["ViewPositionEvent"], false, m_onChangeEvent_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("getX2_0", #[], false, m_getX2_0), 
        ("getY2_0", #[], false, m_getY2_0), 
        ("getZ2_0", #[], false, m_getZ2_0), 
        ("getName_0", #[], false, m_getName_0), 
        ("setHalfWidth_1", #["int"], false, m_setHalfWidth_1), 
        ("getHalfWidth_0", #[], false, m_getHalfWidth_0), 
        ("setHalfHeight_1", #["int"], false, m_setHalfHeight_1), 
        ("getHalfHeight_0", #[], false, m_getHalfHeight_0), 
        ("getHalfDepth_0", #[], false, m_getHalfDepth_0), 
        ("getViewPosition_0", #[], false, m_getViewPosition_0), 
        ("setViewPosition_1", #["ViewPositionBase"], false, m_setViewPosition_1), 
        ("getGroupInterface_0", #[], false, m_getGroupInterface_0), 
        ("implmentsTickableInterface_0", #[], false, m_implmentsTickableInterface_0), 
        ("implmentsGameInputInterface_0", #[], false, m_implmentsGameInputInterface_0), 
        ("implmentsArtificialIntelligenceCompositeInterface_0", #[], false, m_implmentsArtificialIntelligenceCompositeInterface_0), 
        ("implmentsCollidableInterface_0", #[], false, m_implmentsCollidableInterface_0), 
        ("implementsThreedInterface_0", #[], false, m_implementsThreedInterface_0), 
        ("getType_0", #[], false, m_getType_0), 
        ("getMultiPlayerType_0", #[], false, m_getMultiPlayerType_0), 
        ("toStringAppend_1", #["StringMaker"], false, m_toStringAppend_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_3", #["String", "Rectangle", "ViewPositionBase"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryLayer


