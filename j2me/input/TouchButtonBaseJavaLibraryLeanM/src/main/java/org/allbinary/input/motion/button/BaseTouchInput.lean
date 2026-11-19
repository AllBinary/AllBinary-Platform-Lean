-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BaseTouchInput

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "basicArrayListUtil" (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.getField this "basicArrayListUtil") "getImmutableInstance_0" #[])


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.callInherited this "BaseTouchInput" "getClass_0" #[]) "getName_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BaseTouchInput",
    javaName := "org.allbinary.input.motion.button.BaseTouchInput",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("commonStrings", JV.null), ("basicArrayListUtil", JV.null)],
    statics := #[],
    methods := #[
        ("getList_0", #[], false, m_getList_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BaseTouchInput


