-- Generated Code Do Not Modify
-- package org.bouncycastle.jce.provider
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BouncyCastleProvider

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setParameter_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_parameterName : JV := (JR.arg jargs 0)
    let mut l_parameter : JV := (JR.arg jargs 1)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Provider" this #[(<- JR.getStatic "BouncyCastleProvider" "PROVIDER_NAME"), (JV.double 1.41), (<- JR.getStatic "BouncyCastleProvider" "info")]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "BouncyCastleProvider",
    javaName := "org.bouncycastle.jce.provider.BouncyCastleProvider",
    super := "Provider",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("info", (JV.str "BouncyCastle Security Provider v1.41")), ("PROVIDER_NAME", (JV.str "BC"))],
    methods := #[
        ("setParameter_2", #["String", "Any"], false, m_setParameter_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BouncyCastleProvider


