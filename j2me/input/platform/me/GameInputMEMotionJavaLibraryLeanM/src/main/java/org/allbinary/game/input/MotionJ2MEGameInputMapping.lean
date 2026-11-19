-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MotionJ2MEGameInputMapping

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getDefault_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.new "MotionJ2MEDefaultGameInputMapping" #[]) "getInputMapping_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "J2MEGameInputMapping" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MotionJ2MEGameInputMapping",
    javaName := "org.allbinary.game.input.MotionJ2MEGameInputMapping",
    super := "J2MEGameInputMapping",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("getDefault_0", #[], false, m_getDefault_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MotionJ2MEGameInputMapping


