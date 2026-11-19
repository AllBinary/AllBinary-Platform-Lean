-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformInputMappingFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "inputToGameKeyMapping" (<- JR.callStatic "PersistentInputMapping" "getNullInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlatformInputMappingFactory" "instance" (<- JR.new "PlatformInputMappingFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "PlatformInputMappingFactory" "instance")


def m_getPersistentInputMappingInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        if JR.truth (<- JR.eq (<- JR.getField this "inputToGameKeyMapping") (<- JR.callStatic "PersistentInputMapping" "getNullInstance_0" #[])) then
            JR.setField this "inputToGameKeyMapping" (<- JR.new "LaptopGameInputMapping" #[])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "GET_INSTANCE"), l_e])
            pure ()
        else
            throw jex0
    return (<- JR.getField this "inputToGameKeyMapping")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlatformInputMappingFactory",
    javaName := "org.allbinary.game.input.PlatformInputMappingFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("inputToGameKeyMapping", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getPersistentInputMappingInstance_0", #[], false, m_getPersistentInputMappingInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformInputMappingFactory


