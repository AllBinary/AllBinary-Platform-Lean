-- Generated Code Do Not Modify
-- package org.allbinary.thirdparty.store
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ThirdPartyMessageFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "AUTHORIZED" (JV.str "Authorized")
    JR.setField this "NOT_AUTHORIZED" (JV.str "Not Authorized")
    JR.setField this "LINKAGE_ERROR" (JV.str "Linkage Error")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ThirdPartyMessageFactory" "instance" (<- JR.new "ThirdPartyMessageFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ThirdPartyMessageFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ThirdPartyMessageFactory",
    javaName := "org.allbinary.thirdparty.store.ThirdPartyMessageFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("AUTHORIZED", JV.null), ("NOT_AUTHORIZED", JV.null), ("LINKAGE_ERROR", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ThirdPartyMessageFactory


