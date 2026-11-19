-- Generated Code Do Not Modify
-- package org.allbinary.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ProgressMidlet

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_preInit_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_exitProgress_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_isProgress : JV := (JR.arg jargs 0)
    let mut l_processor : JV := (<- JR.call (<- JR.callStatic "MidletExitProcessorFactory" "getInstance_0" #[]) "getExitInstance_1" #[this])
    try
        let mut l_primaryThreadPool : JV := (<- JR.callStatic "PrimaryThreadPool" "getInstance_0" #[])
        let mut l_runnable : JV := (<- JR.new "ExitRunnable" #[this, l_processor, l_isProgress])
        let _ := (<- JR.call l_primaryThreadPool "runTask_1" #[l_runnable])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "ProgressMidlet" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "ProgressMidlet" "commonStrings") "EXCEPTION"), this, (JV.str "exit"), l_e])
            try
                let _ := (<- JR.call l_processor "process_0" #[])
                pure ()
            catch jex1 =>
                if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
                    let mut l_e2 : JV := jex1
                    let _ := (<- JR.call (<- JR.getInherited this "ProgressMidlet" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "ProgressMidlet" "commonStrings") "EXCEPTION"), this, (JV.str "exit"), l_e])
                    pure ()
                else
                    throw jex1
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_clientInformationFactory : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AllBinaryMidlet" this #[]
    let _ <- jfields this
    let _ := (<- JR.call this "preInit_0" #[])
    JR.setField this "abeClientInformation" (<- JR.call l_clientInformationFactory "getInstance_0" #[])
    pure this

initialize JR.registerClass {
    name := "ProgressMidlet",
    javaName := "org.allbinary.midlet.ProgressMidlet",
    super := "AllBinaryMidlet",
    interfaces := #[],
    isInterface := false,
    fields := #[("abeClientInformation", JV.null)],
    statics := #[],
    methods := #[
        ("preInit_0", #[], false, m_preInit_0), 
        ("exitProgress_1", #["boolean"], false, m_exitProgress_1), 
        ("jinit_1", #["ClientInformationFactory"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ProgressMidlet


