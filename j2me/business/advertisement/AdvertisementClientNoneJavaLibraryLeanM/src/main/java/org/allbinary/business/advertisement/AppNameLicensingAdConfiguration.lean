-- Generated Code Do Not Modify
-- package org.allbinary.business.advertisement
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AppNameLicensingAdConfiguration

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AdConfiguration" this #[(<- JR.arrayOf "L" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")])]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AppNameLicensingAdConfiguration",
    javaName := "org.allbinary.business.advertisement.AppNameLicensingAdConfiguration",
    super := "AdConfiguration",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AppNameLicensingAdConfiguration


