-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NoButtonsBuilder

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "NoButtonsBuilder" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "NoButtonsBuilder" "commonStrings") "CONSTRUCTOR")])
        let mut l_list : JV := (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])
        return l_list
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "NoButtonsBuilder" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "NoButtonsBuilder" "commonStrings") "GET_LIST"), l_e])
            return (<- JR.call (<- JR.callStatic "BasicArrayListUtil" "getInstance_0" #[]) "getImmutableInstance_0" #[])
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BaseTouchInput" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NoButtonsBuilder",
    javaName := "org.allbinary.input.motion.button.NoButtonsBuilder",
    super := "BaseTouchInput",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[],
    methods := #[
        ("getList_0", #[], false, m_getList_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NoButtonsBuilder


