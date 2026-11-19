-- Generated Code Do Not Modify
-- package org.allbinary.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameStatisticsFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "stringBuffer" (<- JR.new "StringMaker" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameStatisticsFactory" "instance" (<- JR.new "GameStatisticsFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameStatisticsFactory" "instance")


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_string : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.gt (<- JR.call (<- JR.getField this "stringBuffer") "length_0" #[]) (JV.int 12000)) then
        let _ := (<- JR.call (<- JR.getField this "stringBuffer") "delete_2" #[(JV.int 0), (<- JR.call (<- JR.getField this "stringBuffer") "length_0" #[])])
        let _ := (<- JR.call (<- JR.getField this "stringBuffer") "append_1" #[(JV.str "Old Stats Cleared")])
        pure ()
    let _ := (<- JR.call (<- JR.getField this "stringBuffer") "append_1" #[l_string])
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.callSuper "BaseGameStatistics" this "toString_0" #[])]) "append_1" #[(<- JR.call (<- JR.getField this "stringBuffer") "toString_0" #[])]) "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BaseGameStatistics" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameStatisticsFactory",
    javaName := "org.allbinary.canvas.GameStatisticsFactory",
    super := "BaseGameStatistics",
    interfaces := #[],
    isInterface := false,
    fields := #[("stringBuffer", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("add_1", #["String"], false, m_add_1), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameStatisticsFactory


