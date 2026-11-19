-- Generated Code Do Not Modify
-- package org.allbinary.init
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Init

def jfields (this : JV) : JM JV := do
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "Init",
    javaName := "org.allbinary.init.Init",
    super := "Object",
    interfaces := #["InitInterface"],
    isInterface := false,
    fields := #[("commonStrings", JV.null)],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Init


