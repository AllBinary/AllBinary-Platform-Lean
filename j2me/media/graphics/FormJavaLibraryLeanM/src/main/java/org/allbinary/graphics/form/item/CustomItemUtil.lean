-- Generated Code Do Not Modify
-- package org.allbinary.graphics.form.item
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CustomItemUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "CUSTOM_ITEM_ARRAY" (<- JR.newArray "L" 1 #[(JV.int 0)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CustomItemUtil" "instance" (<- JR.new "CustomItemUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "CustomItemUtil" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "CustomItemUtil",
    javaName := "org.allbinary.graphics.form.item.CustomItemUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("CUSTOM_ITEM_ARRAY", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CustomItemUtil


