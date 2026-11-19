-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ItemColorFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "INVERT_PAINT" (JR.asI (JV.int (JR.wrapI 0xFF000000)))
    JR.setField this "PAINT" (JR.asI (JV.int (JR.wrapI 0xFFe07718)))
    JR.setField this "TEXT_FIELD_NO_FOCUS" (JR.asI (JV.int (JR.wrapI 0x7F7F7F)))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ItemColorFactory" "instance" (<- JR.new "ItemColorFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ItemColorFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ItemColorFactory",
    javaName := "org.allbinary.graphics.ItemColorFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("INVERT_PAINT", (JV.int 0)), ("PAINT", (JV.int 0)), ("TEXT_FIELD_NO_FOCUS", (JV.int 0))],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ItemColorFactory


