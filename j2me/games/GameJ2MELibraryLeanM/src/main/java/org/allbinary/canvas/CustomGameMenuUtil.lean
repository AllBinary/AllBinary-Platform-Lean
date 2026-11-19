-- Generated Code Do Not Modify
-- package org.allbinary.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CustomGameMenuUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_canvas : JV := (JR.arg jargs 0)
    let mut l_gameCommandsFactory : JV := (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[])
    if JR.truth (<- JR.callStatic "AppletUtil" "isAppletLoader_1" #[l_canvas]) then
        pure ()
    else
        if JR.truth (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) then
            pure ()
        else
            let _ := (<- JR.call l_canvas "addCommand_1" #[(<- JR.getField l_gameCommandsFactory "EXIT_COMMAND")])
            pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CustomGameMenuUtil",
    javaName := "org.allbinary.canvas.CustomGameMenuUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("add_1", #["MyCanvas"], true, m_add_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CustomGameMenuUtil


