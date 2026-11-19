-- Generated Code Do Not Modify
-- package org.allbinary.time
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_StupidTimer

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "nullUtil" (<- JR.callStatic "NullUtil" "getInstance_0" #[])
    JR.setField this "threadObjectUtil" (<- JR.callStatic "ThreadObjectUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_visitBool_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_visitorInterface : JV := (JR.arg jargs 0)
    let mut l_result : JV := (<- JR.call l_visitorInterface "visit_1" #[(<- JR.getField (<- JR.getField this "nullUtil") "NULL_OBJECT")])
    let mut l_result2 : JV := (<- JR.call l_result "booleanValue_0" #[])
    return l_result2


def m_visit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_visitorInterface : JV := (JR.arg jargs 0)
    let mut l_timeDelayHelper : JV := (JR.arg jargs 1)
    let mut l_tookTooLong : JV := (JV.bool false)
    let mut l_WAITING_FOR : JV := (JV.str "Waiting for: ")
    let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_WAITING_FOR]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_visitorInterface])]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "VISIT")])
    let mut l_index : JV := (JR.asI (JV.int 0))
    repeat
        if !(JR.truth (<- JR.call this "visitBool_1" #[l_visitorInterface])) then break
        if JR.truth (<- JR.eq (<- JR.rem l_index (JV.int 10)) (JV.int 0)) then
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[l_WAITING_FOR]) "appendint_1" #[l_index]) "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "VISIT")])
            pure ()
        l_index := (JR.inc l_index)
        if true then
            let _ := (<- JR.call (<- JR.getField this "threadObjectUtil") "waitObjectFor_2" #[this, (JV.int 1800)])
            pure ()
        if JR.truth (<- JR.call l_timeDelayHelper "isTimeTNT_0" #[]) then
            l_tookTooLong := (JV.bool true)
            break
        pure ()
    if JR.truth l_tookTooLong then
        let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "VISIT"), (<- JR.new "Exception" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Took Too Long: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_visitorInterface])]) "toString_0" #[])])])
        pure ()
    else
        let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call l_timeDelayHelper "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "VISIT")])
        pure ()
    pure JV.null


def m_stopWaiting_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let _ := (<- JR.call (<- JR.getField this "threadObjectUtil") "notifyObject_1" #[this])
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "StupidTimer",
    javaName := "org.allbinary.time.StupidTimer",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("nullUtil", JV.null), ("threadObjectUtil", JV.null)],
    statics := #[],
    methods := #[
        ("visitBool_1", #["Visitor"], false, m_visitBool_1), 
        ("visit_2", #["Visitor", "TimeDelayHelper"], false, m_visit_2), 
        ("stopWaiting_0", #[], false, m_stopWaiting_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_StupidTimer


