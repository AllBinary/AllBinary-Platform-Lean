-- Generated Code Do Not Modify
-- package javax.microedition.lcdui
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NullCommandListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NullCommandListener" "NULL_COMMAND_LISTENER" (<- JR.new "NullCommandListener" #[])
    pure JV.null


def m_commandAction_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_c : JV := (JR.arg jargs 0)
    let mut l_d : JV := (JR.arg jargs 1)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NullCommandListener",
    javaName := "javax.microedition.lcdui.NullCommandListener",
    super := "Object",
    interfaces := #["CommandListener"],
    isInterface := false,
    fields := #[],
    statics := #[("NULL_COMMAND_LISTENER", JV.null)],
    methods := #[
        ("commandAction_2", #["Command", "Displayable"], false, m_commandAction_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NullCommandListener


