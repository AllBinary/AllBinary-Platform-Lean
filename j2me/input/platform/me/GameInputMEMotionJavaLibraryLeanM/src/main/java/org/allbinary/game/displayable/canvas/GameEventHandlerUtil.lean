-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameEventHandlerUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_removeAllListeners_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.callStatic "UpGameKeyEventHandler" "getInstance_0" #[]) "removeAllListeners_0" #[])
    let _ := (<- JR.call (<- JR.callStatic "DownGameKeyEventHandler" "getInstance_0" #[]) "removeAllListeners_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameEventHandlerUtil",
    javaName := "org.allbinary.game.displayable.canvas.GameEventHandlerUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("removeAllListeners_0", #[], true, m_removeAllListeners_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameEventHandlerUtil


