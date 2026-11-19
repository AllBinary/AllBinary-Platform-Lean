-- Generated Code Do Not Modify
-- package org.allbinary.string
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommonStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "EMPTY" (JV.str "Empty")
    JR.setField this "CREATE_IMAGE" (JV.str "createImage")
    JR.setField this "PLEASE_WAIT" (JV.str "Please Wait")
    JR.setField this "PLEASE_WAIT_FOR_SERVER" (JV.str "Please Wait Getting Data From Server...")
    JR.setField this "PERIODS" (JV.str "...")
    JR.setField this "LOADING" (JV.str "Loading...")
    JR.setField this "CONSTRUCTOR" (JV.str "Constructor")
    JR.setField this "START" (JV.str "Start")
    JR.setField this "END" (JV.str "End")
    JR.setField this "EXCEPTION" (JV.str "Exception")
    JR.setField this "EXCEPTION_LABEL" (JV.str "Exception: ")
    JR.setField this "CLEANUP" (JV.str "cleanup")
    JR.setField this "INIT" (JV.str "init")
    JR.setField this "CLOSE" (JV.str "close")
    JR.setField this "UP" (JV.str "up")
    JR.setField this "DOWN" (JV.str "down")
    JR.setField this "LEFT" (JV.str "left")
    JR.setField this "RIGHT" (JV.str "right")
    JR.setField this "DIRECTION_NAME" (<- JR.arrayOf "L" #[(<- JR.getField this "DOWN"), (<- JR.getField this "LEFT"), (<- JR.getField this "RIGHT"), (<- JR.getField this "UP")])
    JR.setField this "CREATE" (JV.str "Create")
    JR.setField this "REMOVE" (JV.str "Remove")
    JR.setField this "UPDATE" (JV.str "Update")
    JR.setField this "DELETE" (JV.str "Delete")
    JR.setField this "delete" (JV.str "delete")
    JR.setField this "LOAD" (JV.str "load")
    JR.setField this "SAVE" (JV.str "save")
    JR.setField this "ADD" (JV.str "Add")
    JR.setField this "DROP" (JV.str "Drop")
    JR.setField this "INSERT" (JV.str "Insert")
    JR.setField this "VISIT" (JV.str "visit")
    JR.setField this "START_METHOD_NAME" (<- JR.getField this "START")
    JR.setField this "END_METHOD_NAME" (JV.str "end")
    JR.setField this "GET" (JV.str "get")
    JR.setField this "PROCESS" (JV.str "process")
    JR.setField this "GET_INSTANCE" (JV.str "getInstance")
    JR.setField this "GET_LIST" (JV.str "getList")
    JR.setField this "RUN" (JV.str "run")
    JR.setField this "START_RUNNABLE" (JV.str "Start Runnable")
    JR.setField this "RUNNING" (JV.str "Running")
    JR.setField this "END_RUNNABLE" (JV.str "End Runnable")
    JR.setField this "DISABLE" (JV.str "disable")
    JR.setField this "ENABLE" (JV.str "enable")
    JR.setField this "SUCCESS" (JV.str "Command Success")
    JR.setField this "FAILURE" (JV.str "Command Failed")
    JR.setField this "NOT_IMPLEMENTED" (JV.str "Not Implemented")
    JR.setField this "UNKNOWN" (JV.str "Unknown")
    JR.setField this "ON_EVENT" (JV.str "onEvent")
    JR.setField this "IS_VALID" (JV.str "isValid")
    JR.setField this "TOSTRING" (JV.str "toString")
    JR.setField this "ADD_LISTENER" (JV.str "addListener")
    JR.setField this "REMOVE_LISTENER" (JV.str "removeListener")
    JR.setField this "SIZE" (JV.str "size")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CommonStrings" "instance" (<- JR.new "CommonStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CommonStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CommonStrings",
    javaName := "org.allbinary.string.CommonStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EMPTY", JV.null), ("CREATE_IMAGE", JV.null), ("PLEASE_WAIT", JV.null), ("PLEASE_WAIT_FOR_SERVER", JV.null), ("PERIODS", JV.null), ("LOADING", JV.null), ("CONSTRUCTOR", JV.null), ("START", JV.null), ("END", JV.null), ("EXCEPTION", JV.null), ("EXCEPTION_LABEL", JV.null), ("CLEANUP", JV.null), ("INIT", JV.null), ("CLOSE", JV.null), ("UP", JV.null), ("DOWN", JV.null), ("LEFT", JV.null), ("RIGHT", JV.null), ("DIRECTION_NAME", JV.null), ("CREATE", JV.null), ("REMOVE", JV.null), ("UPDATE", JV.null), ("DELETE", JV.null), ("delete", JV.null), ("LOAD", JV.null), ("SAVE", JV.null), ("ADD", JV.null), ("DROP", JV.null), ("INSERT", JV.null), ("VISIT", JV.null), ("START_METHOD_NAME", JV.null), ("END_METHOD_NAME", JV.null), ("GET", JV.null), ("PROCESS", JV.null), ("GET_INSTANCE", JV.null), ("GET_LIST", JV.null), ("RUN", JV.null), ("START_RUNNABLE", JV.null), ("RUNNING", JV.null), ("END_RUNNABLE", JV.null), ("DISABLE", JV.null), ("ENABLE", JV.null), ("SUCCESS", JV.null), ("FAILURE", JV.null), ("NOT_IMPLEMENTED", JV.null), ("UNKNOWN", JV.null), ("ON_EVENT", JV.null), ("IS_VALID", JV.null), ("TOSTRING", JV.null), ("ADD_LISTENER", JV.null), ("REMOVE_LISTENER", JV.null), ("SIZE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommonStrings


