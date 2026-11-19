-- Generated Code Do Not Modify
-- package org.allbinary.string
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommonStateStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "CONTEXT" (JV.str "Context: ")
    JR.setField this "FINISH" (JV.str "finish")
    JR.setField this "CREATE" (JV.str "onCreate")
    JR.setField this "START" (JV.str "onStart")
    JR.setField this "RESTART" (JV.str "onRestart")
    JR.setField this "RESUME" (JV.str "onResume")
    JR.setField this "PAUSE" (JV.str "onPause")
    JR.setField this "STOP" (JV.str "onStop")
    JR.setField this "DESTROY" (JV.str "onDestroy")
    JR.setField this "BIND" (JV.str "onBind")
    JR.setField this "ON_SAVE_INSTANCE_STATE" (JV.str "onSaveInstanceState")
    JR.setField this "ON_START_COMMAND" (JV.str "onStartCommand")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CommonStateStrings" "instance" (<- JR.new "CommonStateStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CommonStateStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CommonStateStrings",
    javaName := "org.allbinary.string.CommonStateStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("CONTEXT", JV.null), ("FINISH", JV.null), ("CREATE", JV.null), ("START", JV.null), ("RESTART", JV.null), ("RESUME", JV.null), ("PAUSE", JV.null), ("STOP", JV.null), ("DESTROY", JV.null), ("BIND", JV.null), ("ON_SAVE_INSTANCE_STATE", JV.null), ("ON_START_COMMAND", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommonStateStrings


