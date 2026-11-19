-- Generated Code Do Not Modify
-- package org.allbinary.system
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Memory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getInfo_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "Memory: Free: ")])
    let _ := (<- JR.call l_stringBuffer "appendlong_1" #[(<- JR.call (<- JR.callStatic "Runtime" "getRuntime_0" #[]) "freeMemory_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Total: ")])
    let _ := (<- JR.call l_stringBuffer "appendlong_1" #[(<- JR.call (<- JR.callStatic "Runtime" "getRuntime_0" #[]) "totalMemory_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Memory",
    javaName := "org.allbinary.system.Memory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getInfo_0", #[], true, m_getInfo_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Memory


