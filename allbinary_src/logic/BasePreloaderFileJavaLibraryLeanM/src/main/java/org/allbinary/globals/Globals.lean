-- Generated Code Do Not Modify
-- package org.allbinary.globals
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Globals

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Globals" "instance" (<- JR.new "Globals" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "Globals" "instance")


def m_init_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_classLoader : JV := (JR.arg jargs 0)
    let mut l_pathString : JV := (JR.arg jargs 1)
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let mut l_appUrlGlobals : JV := (<- JR.new "AppUrlGlobals" #[])
    let _ := (<- JR.call l_appUrlGlobals "setWebappPath_1" #[l_pathString])
    let _ := (<- JR.callStatic "URLGLOBALS" "init_1" #[l_appUrlGlobals])
    let _ := (<- JR.callStatic "WebappClassLoaderInfo" "setLoader_1" #[l_classLoader])
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Setting Up AllBinary System Configuration Args: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[l_pathString])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " ClassLoader: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.call l_classLoader "getClass_0" #[]) "getName_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField l_commonStrings "INIT")])
    let mut l_stringValidationUtil : JV := (<- JR.callStatic "StringValidationUtil" "getInstance_0" #[])
    if JR.truth (<- JR.call l_stringValidationUtil "isEmpty_1" #[l_pathString]) then
        let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "No Path Provided. Using Process Path: ")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[l_pathString])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "EQUALS")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.callStatic "CommonSeps" "getInstance_0" #[]) "SPACE")])
        let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.callStatic "URLGLOBALS" "getWebappPath_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField l_commonStrings "INIT")])
        pure ()
    let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Webapp Path Set To: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.callStatic "URLGLOBALS" "getWebappPath_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField l_commonStrings "INIT")])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Globals",
    javaName := "org.allbinary.globals.Globals",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_2", #["ClassLoader", "String"], false, m_init_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Globals


