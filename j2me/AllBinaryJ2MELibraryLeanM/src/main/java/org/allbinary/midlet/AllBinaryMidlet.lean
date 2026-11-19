-- Generated Code Do Not Modify
-- package org.allbinary.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllBinaryMidlet

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "SET_DISPLAY" (JV.str "setDisplay")
    JR.setField this "SETTING_" (JV.str "Setting: ")
    JR.setField this "_DISPLAY_" (JV.str " Display: ")
    JR.setField this "SETTING_NO_TITLE" (JV.str "Setting: No Title, Display: ")
    JR.setField this "hashtable" (<- JR.call (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "createHashtable_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AllBinaryMidlet" "NULL_ALLBINARY_MIDLET" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getNullInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "AllBinaryMidlet" "NULL_ALLBINARY_MIDLET") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "AllBinaryMidlet" "NULL_ALLBINARY_MIDLET" (<- JR.new "AllBinaryMidlet" #[])
        pure ()
    return (<- JR.getStatic "AllBinaryMidlet" "NULL_ALLBINARY_MIDLET")


def m_setDisplay_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newDisplay : JV := (JR.arg jargs 0)
    let mut l_title : JV := (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")
    if JR.truth (<- JR.ne l_newDisplay (<- JR.getStatic "NullCanvas" "NULL_CANVAS")) then
        l_title := (<- JR.call l_newDisplay "getTitle_0" #[])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField this "SETTING_")]) "append_1" #[l_title]) "append_1" #[(<- JR.getField this "_DISPLAY_")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_newDisplay])]) "toString_0" #[]), this, (<- JR.getField this "SET_DISPLAY")])
        pure ()
    let mut l_display : JV := (<- JR.call this "getDisplay_0" #[])
    let _ := (<- JR.call l_display "setCurrent_1" #[l_newDisplay])
    pure JV.null


def m_getDisplay_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "Display" "getDisplay_1" #[this])


def m_getCurrentDisplayable_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.callStatic "Display" "getDisplay_1" #[this]) "getCurrent_0" #[])


def m_setDestroyed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_destroyed : JV := (JR.arg jargs 0)
    JR.setField this "midletDestroyed" l_destroyed
    pure JV.null


def m_isDestroyed_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "midletDestroyed")


def m_startApp_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_pauseApp_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.callStatic "ForcedLogUtil" "log_2" #[(<- JR.getField (<- JR.callStatic "EventStrings" "getInstance_0" #[]) "PERFORMANCE_MESSAGE"), this])
    pure JV.null


def m_destroyAppInRunnable_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_unconditional : JV := (JR.arg jargs 0)
    let mut l_isProgress : JV := (JR.arg jargs 1)
    pure JV.null


def m_destroyApp_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_unconditional : JV := (JR.arg jargs 0)
    let mut l_METHOD_NAME : JV := (JV.str "AllBinaryMidlet::destroyApp")
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, l_METHOD_NAME])
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.callStatic "Memory" "getInfo_0" #[]), this, l_METHOD_NAME])
        let _ := (<- JR.call this "setDestroyed_1" #[(JV.bool true)])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, l_METHOD_NAME, l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_setStartStateHashtable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_hashtable : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_hashtable])]) "toString_0" #[]), this, (JV.str "setStartStateHashtable")])
    JR.setField this "hashtable" l_hashtable
    pure JV.null


def m_getStartStateHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.getField this "hashtable")])]) "toString_0" #[]), this, (JV.str "getStartStateHashtable")])
    return (<- JR.getField this "hashtable")


def m_getCurrentStateHashtable_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (JV.str "getStateHashtable")])
    return (<- JR.getField (<- JR.callStatic "StdUtil" "getInstance_0" #[]) "NULL_TABLE")


def m_commandAction_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    let mut l_displayable : JV := (JR.arg jargs 1)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "MIDlet" this #[]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "CONSTRUCTOR"), this, (JV.str "AllBinaryMidlet::AllBinaryMidlet")])
    pure this

initialize JR.registerClass {
    name := "AllBinaryMidlet",
    javaName := "org.allbinary.midlet.AllBinaryMidlet",
    super := "MIDlet",
    interfaces := #["CommandListener"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("SET_DISPLAY", JV.null), ("SETTING_", JV.null), ("_DISPLAY_", JV.null), ("SETTING_NO_TITLE", JV.null), ("hashtable", JV.null), ("midletDestroyed", (JV.bool false))],
    statics := #[("NULL_ALLBINARY_MIDLET", JV.null)],
    methods := #[
        ("getNullInstance_0", #[], true, m_getNullInstance_0), 
        ("setDisplay_1", #["Displayable"], false, m_setDisplay_1), 
        ("getDisplay_0", #[], false, m_getDisplay_0), 
        ("getCurrentDisplayable_0", #[], false, m_getCurrentDisplayable_0), 
        ("setDestroyed_1", #["boolean"], false, m_setDestroyed_1), 
        ("isDestroyed_0", #[], false, m_isDestroyed_0), 
        ("startApp_0", #[], false, m_startApp_0), 
        ("pauseApp_0", #[], false, m_pauseApp_0), 
        ("destroyAppInRunnable_2", #["boolean", "boolean"], false, m_destroyAppInRunnable_2), 
        ("destroyApp_1", #["boolean"], false, m_destroyApp_1), 
        ("setStartStateHashtable_1", #["ABHashtable"], false, m_setStartStateHashtable_1), 
        ("getStartStateHashtable_0", #[], false, m_getStartStateHashtable_0), 
        ("getCurrentStateHashtable_0", #[], false, m_getCurrentStateHashtable_0), 
        ("commandAction_2", #["Command", "Displayable"], false, m_commandAction_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllBinaryMidlet


