-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InGameOptionsFormFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "SINGLETON" (<- JR.callStatic "CommandForm" "getNullCommandForm_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "InGameOptionsFormFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "InGameOptionsFormFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "InGameOptionsFormFactory" "instance" (<- JR.new "InGameOptionsFormFactory" #[])
        pure ()
    return (<- JR.getStatic "InGameOptionsFormFactory" "instance")


def m_init_5 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_initInterface : JV := (JR.arg jargs 1)
    let mut l_title : JV := (JR.arg jargs 2)
    let mut l_backgrounBasicColor : JV := (JR.arg jargs 3)
    let mut l_foregroundBasicColor : JV := (JR.arg jargs 4)
    try
        if JR.truth (<- JR.eq (<- JR.getField this "SINGLETON") (<- JR.callStatic "CommandForm" "getNullCommandForm_0" #[])) then
            let _ := (<- JR.call l_initInterface "init_0" #[])
            JR.setField this "SINGLETON" (<- JR.new "InGameOptionsForm" #[l_commandListener, l_title, l_backgrounBasicColor, l_foregroundBasicColor])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "INIT"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_get_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "SINGLETON")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InGameOptionsFormFactory",
    javaName := "org.allbinary.game.configuration.InGameOptionsFormFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("SINGLETON", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_5", #["CommandListener", "Init", "String", "BasicColor", "BasicColor"], false, m_init_5), 
        ("get_0", #[], false, m_get_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InGameOptionsFormFactory


