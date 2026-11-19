-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommandRunnable

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START_RUNNABLE"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN")])
        let mut l_canvas : JV := (<- JR.call (<- JR.getField this "commandFormInputProcessor") "getCanvas_0" #[])
        let mut l_commandListener : JV := (<- JR.call l_canvas "getCustomCommandListener_0" #[])
        let _ := (<- JR.call l_commandListener "commandAction_2" #[(<- JR.getField this "command"), l_canvas])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "END_RUNNABLE"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN")])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField (<- JR.getField this "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getField this "commonStrings") "RUN"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandFormInputProcessor : JV := (JR.arg jargs 0)
    let mut l_command : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "commandFormInputProcessor" l_commandFormInputProcessor
    JR.setField this "command" l_command
    pure this

initialize JR.registerClass {
    name := "CommandRunnable",
    javaName := "org.allbinary.game.displayable.canvas.CommandRunnable",
    super := "Object",
    interfaces := #["Runnable"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("commandFormInputProcessor", JV.null), ("command", JV.null)],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("jinit_2", #["CommandFormInputProcessor", "Command"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommandRunnable


