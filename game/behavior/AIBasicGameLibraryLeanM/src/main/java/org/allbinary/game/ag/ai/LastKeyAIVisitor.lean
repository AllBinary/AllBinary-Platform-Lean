-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.ai
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LastKeyAIVisitor

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "TRUE" (<- JR.getField (<- JR.callStatic "BooleanFactory" "getInstance_0" #[]) "TRUE")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_visit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    try
        let mut l_basicAI : JV := l_anyType
        let mut l_key : JV := (JR.asI (<- JR.call l_basicAI "getLastKey_0" #[]))
        if JR.truth (<- JR.ne l_key (JV.int (-1))) then
            let _ := (<- JR.call l_basicAI "processKeyAI_1" #[l_key])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "VISIT"), l_e])
            pure ()
        else
            throw jex0
    return (<- JR.getField this "TRUE")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Visitor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LastKeyAIVisitor",
    javaName := "org.allbinary.game.ag.ai.LastKeyAIVisitor",
    super := "Visitor",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("TRUE", JV.null)],
    statics := #[],
    methods := #[
        ("visit_1", #["Any"], false, m_visit_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LastKeyAIVisitor


