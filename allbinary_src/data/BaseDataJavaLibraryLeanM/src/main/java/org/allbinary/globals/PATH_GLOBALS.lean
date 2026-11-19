-- Generated Code Do Not Modify
-- package org.allbinary.globals
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PATH_GLOBALS

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PATH_GLOBALS" "instance" (<- JR.new "PATH_GLOBALS" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PATH_GLOBALS" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let mut l_abPathData : JV := (<- JR.callStatic "AbPathData" "getInstance_0" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "data")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_abPathData "SEPARATOR")])
    JR.setField this "DATA_PATH" (<- JR.call l_stringBuffer "toString_0" #[])
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "DATA_PATH")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "INIT")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_abPathData "SEPARATOR")])
    JR.setField this "INIT_PATH" (<- JR.call l_stringBuffer "toString_0" #[])
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "DATA_PATH")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "log")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_abPathData "SEPARATOR")])
    JR.setField this "LOG_PATH" (<- JR.call l_stringBuffer "toString_0" #[])
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "DATA_PATH")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "backup")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_abPathData "SEPARATOR")])
    JR.setField this "BACKUP_PATH" (<- JR.call l_stringBuffer "toString_0" #[])
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField this "INIT_PATH")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "views")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_abPathData "SEPARATOR")])
    JR.setField this "VIEWS_PATH" (<- JR.call l_stringBuffer "toString_0" #[])
    pure this

initialize JR.registerClass {
    name := "PATH_GLOBALS",
    javaName := "org.allbinary.globals.PATH_GLOBALS",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("DATA_PATH", JV.null), ("INIT_PATH", JV.null), ("VIEWS_PATH", JV.null), ("LOG_PATH", JV.null), ("BACKUP_PATH", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PATH_GLOBALS


