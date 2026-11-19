-- Generated Code Do Not Modify
-- package org.allbinary.graphics.displayable.screen
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_WebCommandProcessor

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "aboutCommandProcessor" (<- JR.callStatic "AboutCommandProcessor" "getInstance_0" #[])
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "WebCommandProcessor" "instance" (<- JR.new "WebCommandProcessor" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "WebCommandProcessor" "instance")


def m_process_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_midletCommandListener : JV := (JR.arg jargs 0)
    let mut l_command : JV := (JR.arg jargs 1)
    let mut l_canvas : JV := (JR.arg jargs 2)
    try
        let _ := (<- JR.call (<- JR.getField this "list") "removeAt_1" #[(JV.int 0)])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "PROCESS"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "WebCommandProcessor",
    javaName := "org.allbinary.graphics.displayable.screen.WebCommandProcessor",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("aboutCommandProcessor", JV.null), ("list", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("process_3", #["CommandListener", "Command", "Canvas"], false, m_process_3), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_WebCommandProcessor


