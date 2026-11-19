-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonLocationHelper

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getTotalColumns_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "totalColumns"))


def m_getTotalRows_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "totalRows"))


def m_getColumnsRemainder_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "columnsRemainder"))


def m_getRowsRemainder_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "rowsRemainder"))


def m_getColumnsRemainderHalf_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "columnsRemainderHalf"))


def m_getRowsRemainderHalf_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "rowsRemainderHalf"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "totalColumns: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "totalColumns")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " totalRows: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "totalRows")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " columnsRemainder: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "columnsRemainder")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " rowsRemainder: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "rowsRemainder")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " columnsRemainderHalf: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "columnsRemainderHalf")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " rowsRemainderHalf: ")])
    let _ := (<- JR.call l_stringBuffer "appendint_1" #[(<- JR.getField this "rowsRemainderHalf")])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_buttonSize : JV := (JR.asI (<- JR.getField (<- JR.callStatic "CommonButtons" "getInstance_0" #[]) "STANDARD_BUTTON_SIZE"))
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    JR.setField this "totalColumns" (JR.asI (<- JR.callStatic "Math" "round_1" #[(<- JR.div (JR.toF (<- JR.call l_displayInfo "getLastWidth_0" #[])) (JR.toF l_buttonSize))]))
    JR.setField this "totalRows" (JR.asI (<- JR.callStatic "Math" "round_1" #[(<- JR.div (JR.toF (<- JR.call l_displayInfo "getLastHeight_0" #[])) (JR.toF l_buttonSize))]))
    JR.setField this "columnsRemainder" (JR.asI (<- JR.rem (<- JR.call l_displayInfo "getLastWidth_0" #[]) l_buttonSize))
    JR.setField this "columnsRemainderHalf" (JR.asI ((<- JR.shr (<- JR.getField this "columnsRemainder") (JV.int 1))))
    JR.setField this "rowsRemainder" (JR.asI (<- JR.rem (<- JR.call l_displayInfo "getLastHeight_0" #[]) l_buttonSize))
    JR.setField this "rowsRemainderHalf" (JR.asI ((<- JR.shr (<- JR.getField this "rowsRemainder") (JV.int 1))))
    pure this

initialize JR.registerClass {
    name := "TouchButtonLocationHelper",
    javaName := "org.allbinary.input.motion.button.TouchButtonLocationHelper",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("totalColumns", (JV.int 0)), ("totalRows", (JV.int 0)), ("columnsRemainder", (JV.int 0)), ("rowsRemainder", (JV.int 0)), ("columnsRemainderHalf", (JV.int 0)), ("rowsRemainderHalf", (JV.int 0))],
    statics := #[],
    methods := #[
        ("getTotalColumns_0", #[], false, m_getTotalColumns_0), 
        ("getTotalRows_0", #[], false, m_getTotalRows_0), 
        ("getColumnsRemainder_0", #[], false, m_getColumnsRemainder_0), 
        ("getRowsRemainder_0", #[], false, m_getRowsRemainder_0), 
        ("getColumnsRemainderHalf_0", #[], false, m_getColumnsRemainderHalf_0), 
        ("getRowsRemainderHalf_0", #[], false, m_getRowsRemainderHalf_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonLocationHelper


