-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RepaintRunnable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_run_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let _ := (<- JR.call (<- JR.getField this "canvas") "repaint_0" #[])
        let _ := (<- JR.call (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[]) "process_0" #[])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
            let _ := (<- JR.call l_logUtil "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "RUN"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ARunnable" this #[]
    let _ <- jfields this
    JR.setField this "canvas" l_canvas
    pure this

initialize JR.registerClass {
    name := "RepaintRunnable",
    javaName := "org.allbinary.game.displayable.RepaintRunnable",
    super := "ARunnable",
    interfaces := #[],
    isInterface := false,
    fields := #[("canvas", JV.null)],
    statics := #[],
    methods := #[
        ("run_0", #[], false, m_run_0), 
        ("jinit_1", #["Canvas"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RepaintRunnable


