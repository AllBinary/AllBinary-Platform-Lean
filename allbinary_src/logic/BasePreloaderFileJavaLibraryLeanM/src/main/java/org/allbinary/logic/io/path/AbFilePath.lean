-- Generated Code Do Not Modify
-- package org.allbinary.logic.io.path
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AbFilePath

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aPath : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AbPath" this #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING")]
    let _ <- jfields this
    let mut l_pathData : JV := (<- JR.callStatic "AbPathData" "getInstance_0" #[])
    let mut l_abPathUtil : JV := (<- JR.callStatic "PathUtil" "getInstance_0" #[])
    JR.setInherited this "AbFilePath" "schema" (<- JR.callInherited this "AbFilePath" "getSchema_1" #[l_aPath])
    let _ := (<- JR.callInherited this "AbFilePath" "setName_1" #[(<- JR.call l_pathData "getNameFromPath_1" #[l_aPath])])
    let _ := (<- JR.callInherited this "AbFilePath" "setPath_1" #[(<- JR.call l_abPathUtil "adjust_1" #[(<- JR.callInherited this "AbFilePath" "getPathFromPath_1" #[(<- JR.call (<- JR.call l_abPathUtil "removeNameFromPath_1" #[l_aPath]) "toString_0" #[])])])])
    pure this

initialize JR.registerClass {
    name := "AbFilePath",
    javaName := "org.allbinary.logic.io.path.AbFilePath",
    super := "AbPath",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("jinit_1", #["String"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AbFilePath


