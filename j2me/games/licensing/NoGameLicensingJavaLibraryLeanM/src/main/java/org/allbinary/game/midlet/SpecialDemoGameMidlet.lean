-- Generated Code Do Not Modify
-- package org.allbinary.game.midlet
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpecialDemoGameMidlet

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_initView_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_preInit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.new "LicenseServerInitFileUtil" #[]) "init_0" #[])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_clientInformationFactory : JV := (JR.arg jargs 0)
    let mut l_licenseLoadingType : JV := (JR.arg jargs 1)
    let mut l_demoSetupFactory : JV := (JR.arg jargs 2)
    let mut l_licenseCheckRunnableFactory : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "DemoGameMidlet" this #[l_clientInformationFactory]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SpecialDemoGameMidlet",
    javaName := "org.allbinary.game.midlet.SpecialDemoGameMidlet",
    super := "DemoGameMidlet",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("initView_0", #[], false, m_initView_0), 
        ("preInit_0", #[], false, m_preInit_0), 
        ("jinit_4", #["ClientInformationFactory", "LicenseLoadingType", "LicensedDemoSetupFactory", "LicenseCheckRunnableFactory"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpecialDemoGameMidlet


