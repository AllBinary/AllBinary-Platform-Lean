-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DisplayInfoSingleton

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonLabels" (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
    JR.setField this "commonSeps" (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "ORIENTATION" (JV.str "ORIENTATION")
    JR.setField this "ADJUSTING_FOR_SCALING_IN_PORTRAIT" (JV.str "Adjusting for Scaling in portrait display ratio: ")
    JR.setField this "ADJUSTING_FOR_SCALING_IN_LANDSCAPE" (JV.str "Adjusting for Scaling in landscape display ratio: ")
    JR.setField this "last" (<- JR.newArray "I" 1 #[(JV.int 4)])
    JR.setField this "lastHalf" (<- JR.newArray "I" 1 #[(JV.int 4)])
    JR.setField this "full" (<- JR.newArray "I" 1 #[(JV.int 4)])
    JR.setField this "WIDTH" (JR.asI (JV.int 0))
    JR.setField this "HEIGHT" (JR.asI (JV.int 1))
    JR.setField this "CUSTOM_WIDTH" (JR.asI (JV.int 2))
    JR.setField this "CUSTOM_HEIGHT" (JR.asI (JV.int 3))
    JR.setField this "scalableListener" (<- JR.new "BaseScalable" #[])
    JR.setField this "ratio" (JR.asF (JV.float 1.0))
    JR.setField this "SET_LAST_SIZE_METHOD_NAME" (JV.str "setLastSize")
    JR.setField this "FULL_WIDTH" (JV.str " FullWidth: ")
    JR.setField this "FULL_HEIGHT" (JV.str " FullHeight: ")
    JR.setField this "LAST_WIDTH" (JV.str "LastWidth: ")
    JR.setField this "LAST_HEIGHT" (JV.str " LastHeight: ")
    JR.setField this "PORTRAIT" (JV.str "Portrait")
    JR.setField this "LANDSCAPE" (JV.str "Landscape")
    JR.setField this "displayChangeEvent" (<- JR.new "DisplayChangeEvent" #[this])
    JR.setField this "FIRE_METHOD_NAME" (JV.str "fire")
    JR.setField this "REASON" (JV.str "reason: ")
    JR.setField this "UPDATE_FROM_ORIENTATION_CHANGE" (JV.str "Updating from Orientation Change ")
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    JR.setField this "DISPLAY_INFO" (JV.str "Display Info: ")
    JR.setField this "FULL" (JV.str "full")
    JR.setField this "LAST" (JV.str "last")
    JR.setField this "LAST_HALF" (JV.str "lastHalf")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DisplayInfoSingleton" "SINGLETON" (<- JR.new "DisplayInfoSingleton" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DisplayInfoSingleton" "SINGLETON")


def m_getLastHalf_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "lastHalf")


def m_getLast_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "last")


def m_getFull_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "full")


def m_getScaleLargestTo_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asF (<- JR.getField this "scaleLargestTo"))


def m_setScaleLargestTo_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scaleLargestTo : JV := (JR.asI (JR.arg jargs 0))
    JR.setField this "scaleLargestTo" (JR.asF (JR.toF l_scaleLargestTo))
    pure JV.null


def m_setLastSize_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aLastWidth : JV := (JR.asI (JR.arg jargs 0))
    let mut l_aLastHeight : JV := (JR.asI (JR.arg jargs 1))
    let mut l_reason : JV := (JR.arg jargs 2)
    if JR.truth (<- JR.cor (<- JR.ne (<- JR.aget (<- JR.getField this "full") (<- JR.getField this "WIDTH")) l_aLastWidth) (do pure (<- JR.ne (<- JR.aget (<- JR.getField this "full") (<- JR.getField this "HEIGHT")) l_aLastHeight))) then
        let _ := (<- JR.call this "setLastSizeForce_3" #[l_aLastWidth, l_aLastHeight, l_reason])
        pure ()
    pure JV.null


def m_setLastSizeForce_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aLastWidth : JV := (JR.asI (JR.arg jargs 0))
    let mut l_aLastHeight : JV := (JR.asI (JR.arg jargs 1))
    let mut l_reason : JV := (JR.arg jargs 2)
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[l_reason]) "toString_0" #[]), this, (<- JR.getField this "SET_LAST_SIZE_METHOD_NAME")])
    let mut l_aFullWidth : JV := (JR.asI l_aLastWidth)
    let mut l_aFullHeight : JV := (JR.asI l_aLastHeight)
    let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "FULL_WIDTH")]) "appendint_1" #[l_aFullWidth]) "append_1" #[(<- JR.getField this "FULL_HEIGHT")]) "appendint_1" #[l_aFullHeight]) "append_1" #[(<- JR.call this "toString_0" #[])]) "toString_0" #[]), this, (<- JR.getField this "SET_LAST_SIZE_METHOD_NAME")])
    let mut l_operatingSystemInterface : JV := (<- JR.call (<- JR.callStatic "OperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[])
    if JR.truth (<- JR.call l_operatingSystemInterface "isOverScan_0" #[]) then
        l_aLastWidth := (JR.asI (<- JR.div (<- JR.mul l_aLastWidth (<- JR.call l_operatingSystemInterface "getOverScanXPercent_0" #[])) (JV.int 100)))
        l_aLastHeight := (JR.asI (<- JR.div (<- JR.mul l_aLastHeight (<- JR.call l_operatingSystemInterface "getOverScanYPercent_0" #[])) (JV.int 100)))
        pure ()
    if JR.truth (<- JR.call l_operatingSystemInterface "isScalable_0" #[]) then
        if JR.truth (<- JR.call this "isPortraitWH_2" #[l_aLastWidth, l_aLastHeight]) then
            if JR.truth (<- JR.gt (JR.toF l_aLastHeight) (<- JR.getField this "scaleLargestTo")) then
                JR.setField this "displayRatio" (JR.asF (<- JR.div (<- JR.getField this "scaleLargestTo") (JR.toF l_aLastHeight)))
                JR.setField this "ratio" (JR.asF (<- JR.div (JR.toF l_aLastHeight) (<- JR.getField this "scaleLargestTo")))
                let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "ADJUSTING_FOR_SCALING_IN_PORTRAIT")]) "appendfloat_1" #[(<- JR.getField this "displayRatio")]) "toString_0" #[]), this, (<- JR.getField this "SET_LAST_SIZE_METHOD_NAME")])
                l_aLastWidth := (JR.asI (JR.toI ((<- JR.mul (JR.toF l_aLastWidth) (<- JR.getField this "displayRatio")))))
                l_aLastHeight := (JR.asI (JR.toI ((<- JR.mul (JR.toF l_aLastHeight) (<- JR.getField this "displayRatio")))))
                let _ := (<- JR.call (<- JR.getField this "scalableListener") "scale_1" #[(<- JR.getField this "ratio")])
                pure ()
            else
                JR.setField this "ratio" (JR.asF (JV.float 1.0))
                let _ := (<- JR.call (<- JR.getField this "scalableListener") "scale_1" #[(<- JR.getField this "ratio")])
                pure ()
            pure ()
        else
            if JR.truth (<- JR.gt (JR.toF l_aLastWidth) (<- JR.getField this "scaleLargestTo")) then
                JR.setField this "displayRatio" (JR.asF (<- JR.div (<- JR.getField this "scaleLargestTo") (JR.toF l_aLastWidth)))
                JR.setField this "ratio" (JR.asF (<- JR.div (JR.toF l_aLastWidth) (<- JR.getField this "scaleLargestTo")))
                let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "ADJUSTING_FOR_SCALING_IN_LANDSCAPE")]) "appendfloat_1" #[(<- JR.getField this "displayRatio")]) "toString_0" #[]), this, (<- JR.getField this "SET_LAST_SIZE_METHOD_NAME")])
                l_aLastWidth := (JR.asI (JR.toI ((<- JR.mul (JR.toF l_aLastWidth) (<- JR.getField this "displayRatio")))))
                l_aLastHeight := (JR.asI (JR.toI ((<- JR.mul (JR.toF l_aLastHeight) (<- JR.getField this "displayRatio")))))
                let _ := (<- JR.call (<- JR.getField this "scalableListener") "scale_1" #[(<- JR.getField this "ratio")])
                pure ()
            else
                JR.setField this "ratio" (JR.asF (JV.float 1.0))
                let _ := (<- JR.call (<- JR.getField this "scalableListener") "scale_1" #[(<- JR.getField this "ratio")])
                pure ()
            pure ()
        pure ()
    let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "LAST_WIDTH")]) "appendint_1" #[l_aLastWidth]) "append_1" #[(<- JR.getField this "LAST_HEIGHT")]) "appendint_1" #[l_aLastHeight]) "toString_0" #[]), this, (<- JR.getField this "SET_LAST_SIZE_METHOD_NAME")])
    JR.setField this "xOffset" (JR.asI (<- JR.sub l_aFullWidth l_aLastWidth))
    JR.setField this "yOffset" (JR.asI (<- JR.sub l_aFullHeight l_aLastHeight))
    JR.setField this "left" (JR.asI (<- JR.call (<- JR.getField this "scalableListener") "getLeft_1" #[(<- JR.getField this "xOffset")]))
    JR.setField this "top" (JR.asI (<- JR.call (<- JR.getField this "scalableListener") "getTop_1" #[(<- JR.getField this "yOffset")]))
    JR.aset (<- JR.getField this "full") (<- JR.getField this "WIDTH") (JR.asI l_aFullWidth)
    JR.aset (<- JR.getField this "full") (<- JR.getField this "HEIGHT") (JR.asI l_aFullHeight)
    JR.aset (<- JR.getField this "last") (<- JR.getField this "WIDTH") (JR.asI l_aLastWidth)
    JR.aset (<- JR.getField this "lastHalf") (<- JR.getField this "WIDTH") (JR.asI ((<- JR.shr (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "WIDTH")) (JV.int 1))))
    JR.aset (<- JR.getField this "last") (<- JR.getField this "HEIGHT") (JR.asI l_aLastHeight)
    JR.aset (<- JR.getField this "lastHalf") (<- JR.getField this "HEIGHT") (JR.asI ((<- JR.shr (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "HEIGHT")) (JV.int 1))))
    let _ := (<- JR.call (<- JR.callStatic "SWTJOGLProcessor" "getInstance_0" #[]) "setCustom_3" #[l_aLastWidth, l_aLastHeight, (<- JR.getField this "ratio")])
    let _ := (<- JR.call this "add_1" #[(<- JR.getField this "SET_LAST_SIZE_METHOD_NAME")])
    pure JV.null


def m_isPortraitWH_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lastWidth : JV := (JR.asI (JR.arg jargs 0))
    let mut l_lastHeight : JV := (JR.asI (JR.arg jargs 1))
    if JR.truth (<- JR.gt l_lastHeight l_lastWidth) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_isPortrait_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call this "isPortraitWH_2" #[(<- JR.aget (<- JR.getField this "last") (<- JR.getField this "WIDTH")), (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "HEIGHT"))])


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_reason : JV := (JR.arg jargs 0)
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "REASON")]) "append_1" #[l_reason]) "toString_0" #[]), this, (<- JR.getField this "FIRE_METHOD_NAME")])
    let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call this "toStringAppend_1" #[l_stringMaker]), this, (<- JR.getField this "FIRE_METHOD_NAME")])
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_reason])
    pure JV.null


def m_process_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "list") "size_0" #[]) (JV.int 0)) then
            let _ := (<- JR.call this "processForced_0" #[])
            pure ()
        let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField this "FIRE_METHOD_NAME"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_processForced_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_swtJOGLProcessor : JV := (<- JR.callStatic "SWTJOGLProcessor" "getInstance_0" #[])
        let _ := (<- JR.call l_swtJOGLProcessor "clear_0" #[])
        let _ := (<- JR.call (<- JR.callStatic "DisplayChangeEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.getField this "displayChangeEvent")])
        let _ := (<- JR.call (<- JR.callStatic "LastDisplayChangeEventHandler" "getInstance_0" #[]) "fireEvent_1" #[(<- JR.getField this "displayChangeEvent")])
        let _ := (<- JR.call l_swtJOGLProcessor "onSurfaceChanged_0" #[])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField this "FIRE_METHOD_NAME"), l_e])
            pure ()
        else
            throw jex1
    pure JV.null


def m_update_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayable : JV := (JR.arg jargs 0)
    let mut l_reason : JV := (JR.arg jargs 1)
    let mut l_aLastWidth : JV := (JR.asI (<- JR.call l_displayable "getWidth_0" #[]))
    let mut l_aLastHeight : JV := (JR.asI (<- JR.call l_displayable "getHeight_0" #[]))
    let mut l_aFullWidth : JV := (JR.asI l_aLastWidth)
    let mut l_aFullHeight : JV := (JR.asI l_aLastHeight)
    let mut l_stringMaker : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[l_reason]) "append_1" #[(<- JR.getField this "LAST_WIDTH")]) "appendint_1" #[l_aLastWidth]) "append_1" #[(<- JR.getField this "LAST_HEIGHT")]) "appendint_1" #[l_aLastHeight]) "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "SPACE")]) "append_1" #[(<- JR.call this "toString_0" #[])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
    if JR.truth (<- JR.cand (<- JR.gt l_aLastWidth (JV.int 0)) (do pure (<- JR.gt l_aLastHeight (JV.int 0)))) then
        let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
        let mut l_openGLFeatureFactory : JV := (<- JR.callStatic "OpenGLFeatureFactory" "getInstance_0" #[])
        if JR.truth (<- JR.cor (<- JR.cor (JR.not (<- JR.call l_features "isDefault_1" #[(<- JR.getField l_openGLFeatureFactory "OPENGL")])) (do pure (<- JR.ne (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "WIDTH")) l_aLastWidth))) (do pure (<- JR.ne (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "HEIGHT")) l_aLastHeight))) then
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "UPDATE_FROM_ORIENTATION_CHANGE")]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
            let mut l_operatingSystemInterface : JV := (<- JR.call (<- JR.callStatic "OperatingSystemFactory" "getInstance_0" #[]) "getOperatingSystemInstance_0" #[])
            if JR.truth (<- JR.call l_operatingSystemInterface "isOverScan_0" #[]) then
                l_aLastWidth := (JR.asI (<- JR.div (<- JR.mul l_aLastWidth (<- JR.call l_operatingSystemInterface "getOverScanXPercent_0" #[])) (JV.int 100)))
                l_aLastHeight := (JR.asI (<- JR.div (<- JR.mul l_aLastHeight (<- JR.call l_operatingSystemInterface "getOverScanYPercent_0" #[])) (JV.int 100)))
                pure ()
            if JR.truth (<- JR.call l_operatingSystemInterface "isScalable_0" #[]) then
                if JR.truth (<- JR.call this "isPortraitWH_2" #[l_aLastWidth, l_aLastHeight]) then
                    if JR.truth (<- JR.gt (JR.toF l_aLastHeight) (<- JR.getField this "scaleLargestTo")) then
                        JR.setField this "displayRatio" (JR.asF (<- JR.div (<- JR.getField this "scaleLargestTo") (JR.toF l_aLastHeight)))
                        JR.setField this "ratio" (JR.asF (<- JR.div (JR.toF l_aLastHeight) (<- JR.getField this "scaleLargestTo")))
                        let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "ADJUSTING_FOR_SCALING_IN_PORTRAIT")]) "appendfloat_1" #[(<- JR.getField this "displayRatio")]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
                        l_aLastWidth := (JR.asI (JR.toI ((<- JR.mul (JR.toF l_aLastWidth) (<- JR.getField this "displayRatio")))))
                        l_aLastHeight := (JR.asI (JR.toI ((<- JR.mul (JR.toF l_aLastHeight) (<- JR.getField this "displayRatio")))))
                        let _ := (<- JR.call (<- JR.getField this "scalableListener") "scale_1" #[(<- JR.getField this "ratio")])
                        pure ()
                    else
                        JR.setField this "ratio" (JR.asF (JV.float 1.0))
                        let _ := (<- JR.call (<- JR.getField this "scalableListener") "scale_1" #[(<- JR.getField this "ratio")])
                        pure ()
                    pure ()
                else
                    if JR.truth (<- JR.gt (JR.toF l_aLastWidth) (<- JR.getField this "scaleLargestTo")) then
                        JR.setField this "displayRatio" (JR.asF (<- JR.div (<- JR.getField this "scaleLargestTo") (JR.toF l_aLastWidth)))
                        JR.setField this "ratio" (JR.asF (<- JR.div (JR.toF l_aLastWidth) (<- JR.getField this "scaleLargestTo")))
                        let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
                        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "ADJUSTING_FOR_SCALING_IN_LANDSCAPE")]) "appendfloat_1" #[(<- JR.getField this "displayRatio")]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
                        l_aLastWidth := (JR.asI (JR.toI ((<- JR.mul (JR.toF l_aLastWidth) (<- JR.getField this "displayRatio")))))
                        l_aLastHeight := (JR.asI (JR.toI ((<- JR.mul (JR.toF l_aLastHeight) (<- JR.getField this "displayRatio")))))
                        let _ := (<- JR.call (<- JR.getField this "scalableListener") "scale_1" #[(<- JR.getField this "ratio")])
                        pure ()
                    else
                        JR.setField this "ratio" (JR.asF (JV.float 1.0))
                        let _ := (<- JR.call (<- JR.getField this "scalableListener") "scale_1" #[(<- JR.getField this "ratio")])
                        pure ()
                    pure ()
                pure ()
            let _ := (<- JR.call l_stringMaker "delete_2" #[(JV.int 0), (<- JR.call l_stringMaker "length_0" #[])])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call l_stringMaker "append_1" #[(<- JR.getField this "UPDATE_FROM_ORIENTATION_CHANGE")]) "append_1" #[(<- JR.getField this "LAST_WIDTH")]) "appendint_1" #[l_aLastWidth]) "append_1" #[(<- JR.getField this "LAST_HEIGHT")]) "appendint_1" #[l_aLastHeight]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
            JR.setField this "xOffset" (JR.asI (<- JR.sub l_aFullWidth l_aLastWidth))
            JR.setField this "yOffset" (JR.asI (<- JR.sub l_aFullHeight l_aLastHeight))
            JR.setField this "left" (JR.asI (<- JR.call (<- JR.getField this "scalableListener") "getLeft_1" #[(<- JR.getField this "xOffset")]))
            JR.setField this "top" (JR.asI (<- JR.call (<- JR.getField this "scalableListener") "getTop_1" #[(<- JR.getField this "yOffset")]))
            JR.aset (<- JR.getField this "full") (<- JR.getField this "WIDTH") (JR.asI l_aFullWidth)
            JR.aset (<- JR.getField this "full") (<- JR.getField this "HEIGHT") (JR.asI l_aFullHeight)
            JR.aset (<- JR.getField this "last") (<- JR.getField this "WIDTH") (JR.asI l_aLastWidth)
            JR.aset (<- JR.getField this "lastHalf") (<- JR.getField this "WIDTH") (JR.asI ((<- JR.shr (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "WIDTH")) (JV.int 1))))
            JR.aset (<- JR.getField this "last") (<- JR.getField this "HEIGHT") (JR.asI l_aLastHeight)
            JR.aset (<- JR.getField this "lastHalf") (<- JR.getField this "HEIGHT") (JR.asI ((<- JR.shr (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "HEIGHT")) (JV.int 1))))
            let _ := (<- JR.call (<- JR.callStatic "SWTJOGLProcessor" "getInstance_0" #[]) "setCustom_3" #[l_aLastWidth, l_aLastHeight, (<- JR.getField this "ratio")])
            let _ := (<- JR.call this "add_1" #[(<- JR.getField (<- JR.getField this "commonStrings") "UPDATE")])
            pure ()
        pure ()
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    return (<- JR.call this "toStringAppend_1" #[l_stringBuffer])


def m_toStringAppend_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "DISPLAY_INFO")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "FULL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "WIDTH_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.aget (<- JR.getField this "full") (<- JR.getField this "WIDTH"))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "FULL")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "HEIGHT_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.aget (<- JR.getField this "full") (<- JR.getField this "HEIGHT"))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "LAST")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "WIDTH_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.aget (<- JR.getField this "last") (<- JR.getField this "WIDTH"))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "LAST")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "HEIGHT_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.aget (<- JR.getField this "last") (<- JR.getField this "HEIGHT"))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "LAST_HALF")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "WIDTH_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.aget (<- JR.getField this "lastHalf") (<- JR.getField this "WIDTH"))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "LAST_HALF")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonLabels") "HEIGHT_LABEL")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.aget (<- JR.getField this "lastHalf") (<- JR.getField this "HEIGHT"))])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "commonSeps") "SPACE")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.cond (<- JR.call this "isPortrait_0" #[]) (do pure (<- JR.getField this "PORTRAIT")) (do pure (<- JR.getField this "LANDSCAPE")))])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def m_getTop_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "top"))


def m_getLeft_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "left"))


def m_getLastWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "WIDTH")))


def m_getLastHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "HEIGHT")))


def m_getLastHalfWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.aget (<- JR.getField this "lastHalf") (<- JR.getField this "WIDTH")))


def m_getLastHalfHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.aget (<- JR.getField this "lastHalf") (<- JR.getField this "HEIGHT")))


def m_getCustomLastWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "CUSTOM_WIDTH")))


def m_getCustomLastHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "CUSTOM_HEIGHT")))


def m_getRawLastWidth_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "WIDTH")))


def m_getRawLastHeight_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "HEIGHT")))


def m_setCustom_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_height : JV := (JR.asI (JR.arg jargs 1))
    JR.aset (<- JR.getField this "last") (<- JR.getField this "CUSTOM_WIDTH") (JR.asI l_width)
    JR.aset (<- JR.getField this "lastHalf") (<- JR.getField this "CUSTOM_WIDTH") (JR.asI ((<- JR.shr (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "CUSTOM_WIDTH")) (JV.int 1))))
    JR.aset (<- JR.getField this "last") (<- JR.getField this "CUSTOM_HEIGHT") (JR.asI l_height)
    JR.aset (<- JR.getField this "lastHalf") (<- JR.getField this "CUSTOM_HEIGHT") (JR.asI ((<- JR.shr (<- JR.aget (<- JR.getField this "last") (<- JR.getField this "CUSTOM_HEIGHT")) (JV.int 1))))
    pure JV.null


def m_setScalableListener_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_scalableListener : JV := (JR.arg jargs 0)
    JR.setField this "scalableListener" l_scalableListener
    pure JV.null


def m_getScalableListener_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "scalableListener")


def m_getRatio_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asF (<- JR.getField this "ratio"))


def m_getDisplayRatio_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asF (<- JR.getField this "displayRatio"))


def m_setOffset_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_left : JV := (JR.asI (JR.arg jargs 0))
    let mut l_top : JV := (JR.asI (JR.arg jargs 1))
    JR.setField this "left" (JR.asI l_left)
    pure JV.null


def m_getxOffset_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "xOffset"))


def m_getyOffset_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "yOffset"))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "last")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            JR.aset (<- JR.getField this "last") l_index (JR.asI (JV.int 0))
            JR.aset (<- JR.getField this "lastHalf") l_index (JR.asI (JV.int 0))
            JR.aset (<- JR.getField this "full") l_index (JR.asI (JV.int 0))
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    if JR.truth (<- JR.callStatic "AndroidUtil" "isAndroid_0" #[]) then
        JR.setField this "scaleLargestTo" (JR.asF (JV.float 640.0))
        pure ()
    else
        JR.setField this "scaleLargestTo" (JR.asF (JV.float 1080.0))
        pure ()
    pure this

initialize JR.registerClass {
    name := "DisplayInfoSingleton",
    javaName := "org.allbinary.graphics.displayable.DisplayInfoSingleton",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonLabels", JV.null), ("commonSeps", JV.null), ("commonStrings", JV.null), ("ORIENTATION", JV.null), ("ADJUSTING_FOR_SCALING_IN_PORTRAIT", JV.null), ("ADJUSTING_FOR_SCALING_IN_LANDSCAPE", JV.null), ("last", JV.null), ("lastHalf", JV.null), ("full", JV.null), ("top", (JV.int 0)), ("left", (JV.int 0)), ("xOffset", (JV.int 0)), ("yOffset", (JV.int 0)), ("scaleLargestTo", (JV.float 0.0)), ("WIDTH", (JV.int 0)), ("HEIGHT", (JV.int 0)), ("CUSTOM_WIDTH", (JV.int 0)), ("CUSTOM_HEIGHT", (JV.int 0)), ("scalableListener", JV.null), ("displayRatio", (JV.float 0.0)), ("ratio", (JV.float 0.0)), ("SET_LAST_SIZE_METHOD_NAME", JV.null), ("FULL_WIDTH", JV.null), ("FULL_HEIGHT", JV.null), ("LAST_WIDTH", JV.null), ("LAST_HEIGHT", JV.null), ("PORTRAIT", JV.null), ("LANDSCAPE", JV.null), ("displayChangeEvent", JV.null), ("FIRE_METHOD_NAME", JV.null), ("REASON", JV.null), ("UPDATE_FROM_ORIENTATION_CHANGE", JV.null), ("list", JV.null), ("DISPLAY_INFO", JV.null), ("FULL", JV.null), ("LAST", JV.null), ("LAST_HALF", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getLastHalf_0", #[], false, m_getLastHalf_0), 
        ("getLast_0", #[], false, m_getLast_0), 
        ("getFull_0", #[], false, m_getFull_0), 
        ("getScaleLargestTo_0", #[], false, m_getScaleLargestTo_0), 
        ("setScaleLargestTo_1", #["int"], false, m_setScaleLargestTo_1), 
        ("setLastSize_3", #["int", "int", "String"], false, m_setLastSize_3), 
        ("setLastSizeForce_3", #["int", "int", "String"], false, m_setLastSizeForce_3), 
        ("isPortraitWH_2", #["int", "int"], false, m_isPortraitWH_2), 
        ("isPortrait_0", #[], false, m_isPortrait_0), 
        ("add_1", #["String"], false, m_add_1), 
        ("process_0", #[], false, m_process_0), 
        ("processForced_0", #[], false, m_processForced_0), 
        ("update_2", #["Displayable", "String"], false, m_update_2), 
        ("toString_0", #[], false, m_toString_0), 
        ("toStringAppend_1", #["StringMaker"], false, m_toStringAppend_1), 
        ("getTop_0", #[], false, m_getTop_0), 
        ("getLeft_0", #[], false, m_getLeft_0), 
        ("getLastWidth_0", #[], false, m_getLastWidth_0), 
        ("getLastHeight_0", #[], false, m_getLastHeight_0), 
        ("getLastHalfWidth_0", #[], false, m_getLastHalfWidth_0), 
        ("getLastHalfHeight_0", #[], false, m_getLastHalfHeight_0), 
        ("getCustomLastWidth_0", #[], false, m_getCustomLastWidth_0), 
        ("getCustomLastHeight_0", #[], false, m_getCustomLastHeight_0), 
        ("getRawLastWidth_0", #[], false, m_getRawLastWidth_0), 
        ("getRawLastHeight_0", #[], false, m_getRawLastHeight_0), 
        ("setCustom_2", #["int", "int"], false, m_setCustom_2), 
        ("setScalableListener_1", #["BaseScalable"], false, m_setScalableListener_1), 
        ("getScalableListener_0", #[], false, m_getScalableListener_0), 
        ("getRatio_0", #[], false, m_getRatio_0), 
        ("getDisplayRatio_0", #[], false, m_getDisplayRatio_0), 
        ("setOffset_2", #["int", "int"], false, m_setOffset_2), 
        ("getxOffset_0", #[], false, m_getxOffset_0), 
        ("getyOffset_0", #[], false, m_getyOffset_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DisplayInfoSingleton


