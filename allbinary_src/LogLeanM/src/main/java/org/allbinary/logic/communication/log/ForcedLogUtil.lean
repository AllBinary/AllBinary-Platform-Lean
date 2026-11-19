-- Generated Code Do Not Modify
-- package org.allbinary.logic.communication.log
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ForcedLogUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_log_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_message : JV := (JR.arg jargs 0)
    let mut l_anyType : JV := (JR.arg jargs 1)
    try
        throw (<- JR.new "Exception" #[l_message])
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.callStatic "PreLogUtil" "putOE_4" #[(<- JR.getField (<- JR.callStatic "CommonStrings" "getInstance_0" #[]) "EXCEPTION"), l_anyType, (JV.str "log"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ForcedLogUtil",
    javaName := "org.allbinary.logic.communication.log.ForcedLogUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("log_2", #["String", "Any"], true, m_log_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ForcedLogUtil


