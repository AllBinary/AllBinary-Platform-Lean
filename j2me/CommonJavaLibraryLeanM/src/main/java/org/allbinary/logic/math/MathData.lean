-- Generated Code Do Not Modify
-- package org.allbinary.logic.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MathData

def jfields (this : JV) : JM JV := do
    JR.setField this "PLUS" (JV.str "+")
    JR.setField this "GREATER_THAN" (JV.str ">")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "MathData" "instance" (<- JR.new "MathData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "MathData" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_commonSeps : JV := (<- JR.callStatic "CommonSeps" "getInstance_0" #[])
    JR.setField this "EQUALS" (<- JR.getField l_commonSeps "EQUALS")
    JR.setField this "MINUS" (<- JR.getField l_commonSeps "DASH")
    JR.setField this "DIVIDE" (<- JR.getField l_commonSeps "FORWARD_SLASH")
    JR.setField this "MULTIPLY" (<- JR.getField (<- JR.callStatic "CommonPhoneStrings" "getInstance_0" #[]) "STAR")
    pure this

initialize JR.registerClass {
    name := "MathData",
    javaName := "org.allbinary.logic.math.MathData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("EQUALS", JV.null), ("PLUS", JV.null), ("GREATER_THAN", JV.null), ("MINUS", JV.null), ("DIVIDE", JV.null), ("MULTIPLY", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MathData


