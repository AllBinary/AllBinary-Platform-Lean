-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LicenseLevelUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LicenseLevelUtil" "instance" (<- JR.new "LicenseLevelUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LicenseLevelUtil" "instance")


def m_getMaxLevel_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_maxLevel : JV := (JR.asI (JR.arg jargs 0))
    let mut l_demoLevel : JV := (JR.asI (JR.arg jargs 1))
    return (JR.asI l_demoLevel)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LicenseLevelUtil",
    javaName := "org.allbinary.game.midlet.LicenseLevelUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getMaxLevel_2", #["int", "int"], false, m_getMaxLevel_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LicenseLevelUtil


