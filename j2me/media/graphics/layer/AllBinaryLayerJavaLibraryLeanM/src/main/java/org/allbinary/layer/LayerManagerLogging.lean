-- Generated Code Do Not Modify
-- package org.allbinary.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerManagerLogging

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "stringBuilder" (<- JR.new "StringMaker" #[])
    JR.setField this "APPEND" (JV.str "append")
    JR.setField this "APPEND_" (JV.str " append: ")
    JR.setField this "_AT_" (JV.str " at: ")
    JR.setField this "ATTEMPT_REMOVE_" (JV.str " Remove Attempt: ")
    JR.setField this "REMOVE_" (JV.str " Remove: ")
    JR.setField this "REMOVE" (JV.str "remove")
    JR.setField this "DID_NOT_REMOVE" (JV.str " Did not remove: ")
    JR.setField this "CLEAR" (JV.str " Clear List")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LayerManagerLogging" "instance" (<- JR.new "LayerManagerLogging" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LayerManagerLogging" "instance")


def m_append_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "stringBuilder") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuilder") "length_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "appendint_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this])]) "append_1" #[(<- JR.getField this "APPEND_")]) "append_1" #[(<- JR.call l_layerInterface "getName_0" #[])]) "toString_0" #[]), this, (<- JR.getField this "APPEND")])
    pure JV.null


def m_appendAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_index : JV := (JR.asI (JR.arg jargs 1))
    let _ := (<- JR.call (<- JR.getField this "stringBuilder") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuilder") "length_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "appendint_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this])]) "append_1" #[(<- JR.getField this "APPEND_")]) "append_1" #[(<- JR.call l_layerInterface "getName_0" #[])]) "append_1" #[(<- JR.getField this "_AT_")]) "appendint_1" #[l_index]) "toString_0" #[]), this, (<- JR.getField this "APPEND")])
    pure JV.null


def m_remove_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_layerInterface JV.null) then
        let _ := (<- JR.call (<- JR.getField this "stringBuilder") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuilder") "length_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "appendint_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this])]) "append_1" #[(<- JR.getField this "ATTEMPT_REMOVE_")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_layerInterface])]) "toString_0" #[]), this, (<- JR.getField this "REMOVE")])
        pure ()
    else
        let _ := (<- JR.call (<- JR.getField this "stringBuilder") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuilder") "length_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "appendint_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this])]) "append_1" #[(<- JR.getField this "ATTEMPT_REMOVE_")]) "append_1" #[(<- JR.call l_layerInterface "getName_0" #[])]) "toString_0" #[]), this, (<- JR.getField this "REMOVE")])
        pure ()
    pure JV.null


def m_removeResult_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_layerInterface : JV := (JR.arg jargs 1)
    let mut l_result : JV := (JR.arg jargs 2)
    if JR.truth (<- JR.eq l_layerInterface JV.null) then
        let _ := (<- JR.call (<- JR.getField this "stringBuilder") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuilder") "length_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "appendint_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this])]) "append_1" #[(<- JR.getField this "REMOVE_")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_layerInterface])]) "toString_0" #[]), this, (<- JR.getField this "REMOVE")])
        pure ()
    else
        if JR.truth l_result then
            if JR.truth (<- JR.getStatic "LayerManagerLogging" "removeFailed") then
                let _ := (<- JR.call (<- JR.getField this "stringBuilder") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuilder") "length_0" #[])])
                let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "appendint_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this])]) "append_1" #[(<- JR.getField this "REMOVE_")]) "append_1" #[(<- JR.call l_layerInterface "getName_0" #[])]) "toString_0" #[]), this, (<- JR.getField this "REMOVE")])
                pure ()
            pure ()
        else
            let _ := (<- JR.call (<- JR.getField this "stringBuilder") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuilder") "length_0" #[])])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "appendint_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this])]) "append_1" #[(<- JR.getField this "DID_NOT_REMOVE")]) "append_1" #[(<- JR.call l_layerInterface "getName_0" #[])]) "toString_0" #[]), this, (<- JR.getField this "REMOVE")])
            JR.setStatic "LayerManagerLogging" "removeFailed" (JV.bool true)
            pure ()
    pure JV.null


def m_log_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "stringBuilder") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuilder") "length_0" #[])])
    let mut l_size : JV := (JR.asI (<- JR.call l_layerManager "getSize_0" #[]))
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "append_1" #[(<- JR.callStatic "Integer" "toHexString_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[l_layerManager])])]) "append_1" #[(<- JR.getField l_commonSeps "COLON_SEP")])
    let _ := (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "appendint_1" #[l_size]) "append_1" #[(<- JR.getField l_commonSeps "COLON_SEP")])
    let mut l_allBinaryLayer : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_allBinaryLayer := ((<- JR.call l_layerManager "getLayerAt_1" #[l_index]))
            let _ := (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "append_1" #[(<- JR.call l_allBinaryLayer "getName_0" #[])]) "append_1" #[(<- JR.getField l_commonSeps "COMMA")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.getField this "stringBuilder") "toString_0" #[]), this, (<- JR.getField this "REMOVE")])
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "stringBuilder") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuilder") "length_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.getField this "stringBuilder") "appendint_1" #[(<- JR.call (<- JR.callStatic "TsUtil" "getInstance_0" #[]) "hashCode_1" #[this])]) "append_1" #[(<- JR.getField this "CLEAR")]) "toString_0" #[]), this, (<- JR.getField this "CLEAR")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "LayerManagerLoggingBase" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LayerManagerLogging",
    javaName := "org.allbinary.layer.LayerManagerLogging",
    super := "LayerManagerLoggingBase",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("stringBuilder", JV.null), ("APPEND", JV.null), ("APPEND_", JV.null), ("_AT_", JV.null), ("ATTEMPT_REMOVE_", JV.null), ("REMOVE_", JV.null), ("REMOVE", JV.null), ("DID_NOT_REMOVE", JV.null), ("CLEAR", JV.null)],
    statics := #[("instance", JV.null), ("removeFailed", (JV.bool false))],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("append_1", #["AllBinaryLayer"], false, m_append_1), 
        ("appendAt_2", #["AllBinaryLayer", "int"], false, m_appendAt_2), 
        ("remove_1", #["AllBinaryLayer"], false, m_remove_1), 
        ("removeResult_3", #["LayerManager", "AllBinaryLayer", "boolean"], false, m_removeResult_3), 
        ("log_1", #["LayerManager"], false, m_log_1), 
        ("clear_0", #[], false, m_clear_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerManagerLogging


