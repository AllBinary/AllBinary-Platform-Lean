-- Generated Code Do Not Modify
-- package org.allbinary.logic.system.os.solaris
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SolarisOS

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isAutoHide_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GenericOperatingSystem" this #[]
    let _ <- jfields this
    JR.setInherited this "SolarisOS" "scalable" (JV.bool true)
    pure this

initialize JR.registerClass {
    name := "SolarisOS",
    javaName := "org.allbinary.logic.system.os.solaris.SolarisOS",
    super := "GenericOperatingSystem",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isAutoHide_0", #[], false, m_isAutoHide_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SolarisOS


