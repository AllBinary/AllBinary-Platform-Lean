-- Generated Code Do Not Modify
-- package org.allbinary.string
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CommonPhoneStrings

def jfields (this : JV) : JM JV := do
    JR.setField this "UP" (JV.str "UP")
    JR.setField this "DOWN" (JV.str "DOWN")
    JR.setField this "LEFT" (JV.str "LEFT")
    JR.setField this "RIGHT" (JV.str "RIGHT")
    JR.setField this "ZERO" (JV.str "0")
    JR.setField this "ONE" (JV.str "1")
    JR.setField this "TWO" (JV.str "2")
    JR.setField this "THREE" (JV.str "3")
    JR.setField this "FOUR" (JV.str "4")
    JR.setField this "FIVE" (JV.str "5")
    JR.setField this "SIX" (JV.str "6")
    JR.setField this "SEVEN" (JV.str "7")
    JR.setField this "EIGHT" (JV.str "8")
    JR.setField this "NINE" (JV.str "9")
    JR.setField this "POUND" (JV.str "#")
    JR.setField this "STAR" (JV.str "*")
    JR.setField this "FIRE" (JV.str "FIRE")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CommonPhoneStrings" "instance" (<- JR.new "CommonPhoneStrings" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CommonPhoneStrings" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CommonPhoneStrings",
    javaName := "org.allbinary.string.CommonPhoneStrings",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("UP", JV.null), ("DOWN", JV.null), ("LEFT", JV.null), ("RIGHT", JV.null), ("ZERO", JV.null), ("ONE", JV.null), ("TWO", JV.null), ("THREE", JV.null), ("FOUR", JV.null), ("FIVE", JV.null), ("SIX", JV.null), ("SEVEN", JV.null), ("EIGHT", JV.null), ("NINE", JV.null), ("POUND", JV.null), ("STAR", JV.null), ("FIRE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CommonPhoneStrings


