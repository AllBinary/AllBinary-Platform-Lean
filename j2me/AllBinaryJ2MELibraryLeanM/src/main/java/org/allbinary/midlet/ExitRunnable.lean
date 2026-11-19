-- Generated Code Do Not Modify
-- package org.allbinary.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ExitRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START_RUNNABLE"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN")])
        let _ := (<- JR.call (<- JR.getField this "midlet") "destroyAppInRunnable_2" #[(JV.bool false), (<- JR.getField this "isProgress")])
        let _ := (<- JR.call (<- JR.getField this "midlet") "setDisplay_1" #[(<- JR.getStatic "NullCanvas" "NULL_CANVAS")])
        let _ := (<- JR.call (<- JR.getField this "midlet") "notifyDestroyed_0" #[])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "END_RUNNABLE"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN")])
        let _ := (<- JR.call (<- JR.getField this "processor") "process_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN"), l_e])
            try
                let _ := (<- JR.call (<- JR.getField this "processor") "process_0" #[])
                pure ()
            catch jex1 =>
                if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
                    let mut l_e2 : JV := jex1
                    let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN"), l_e])
                    pure ()
                else
                    throw jex1
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_midlet : JV := (JR.arg jargs 0)
    let mut l_processor : JV := (JR.arg jargs 1)
    let mut l_isProgress : JV := (JR.arg jargs 2)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "midlet" l_midlet
    JR.setField this "isProgress" l_isProgress
    JR.setField this "processor" l_processor
    pure this

initialize JR.registerClass {
    name := "ExitRunnable",
    javaName := "org.allbinary.midlet.ExitRunnable",
    super := "Object",
    interfaces := #["Runnable"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("midlet", JV.null), ("processor", JV.null), ("isProgress", (JV.bool false))],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("jinit_3", #["AllBinaryMidlet", "Processor", "boolean"], false, jinit_3)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ExitRunnable


