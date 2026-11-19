-- Generated Code Do Not Modify
-- package org.allbinary.logic.java.characters
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CharacterSetData

def jfields (this : JV) : JM JV := do
    JR.setField this "US_ASCII" (JV.str "US-ASCII")
    JR.setField this "ISO_8859_1" (JV.str "ISO-8859-1")
    JR.setField this "UTF_8" (JV.str "UTF-8")
    JR.setField this "UTF_16" (JV.str "UTF-16")
    JR.setField this "UTF_16BE" (JV.str "UTF-16BE")
    JR.setField this "UTF_16LE" (JV.str "UTF-16LE")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CharacterSetData" "instance" (<- JR.new "CharacterSetData" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CharacterSetData" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CharacterSetData",
    javaName := "org.allbinary.logic.java.characters.CharacterSetData",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("US_ASCII", JV.null), ("ISO_8859_1", JV.null), ("UTF_8", JV.null), ("UTF_16", JV.null), ("UTF_16BE", JV.null), ("UTF_16LE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CharacterSetData


