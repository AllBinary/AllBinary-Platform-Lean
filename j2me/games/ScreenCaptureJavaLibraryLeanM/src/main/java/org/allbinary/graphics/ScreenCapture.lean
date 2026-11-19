-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ScreenCapture

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_saveFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_startRecording_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_endRecording_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ScreenCapture",
    javaName := "org.allbinary.graphics.ScreenCapture",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("saveFrame_0", #[], false, m_saveFrame_0), 
        ("startRecording_0", #[], false, m_startRecording_0), 
        ("endRecording_0", #[], false, m_endRecording_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ScreenCapture


