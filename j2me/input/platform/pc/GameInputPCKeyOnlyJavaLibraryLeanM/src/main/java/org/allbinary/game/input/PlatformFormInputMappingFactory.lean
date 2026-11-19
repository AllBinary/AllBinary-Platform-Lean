-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformFormInputMappingFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "inputToGameKeyMapping" (<- JR.callStatic "InputToGameKeyMapping" "getNullInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlatformFormInputMappingFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "PlatformFormInputMappingFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "PlatformFormInputMappingFactory" "instance" (<- JR.new "PlatformFormInputMappingFactory" #[])
        pure ()
    return (<- JR.getStatic "PlatformFormInputMappingFactory" "instance")


def m_getOrCreate_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        if JR.truth (<- JR.eq (<- JR.getField this "inputToGameKeyMapping") (<- JR.callStatic "InputToGameKeyMapping" "getNullInstance_0" #[])) then
            let mut l_pcKeyFactory : JV := (<- JR.callStatic "PCKeyFactory" "getInstance_0" #[])
            let mut l_inputToGameKeyMapping : JV := (<- JR.new "InputToGameKeyMapping" #[])
            let mut l_gameKeyFactory : JV := (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[])
            let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "UP"), (<- JR.getField l_pcKeyFactory "DPAD_UP")])
            let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "DOWN"), (<- JR.getField l_pcKeyFactory "DPAD_DOWN")])
            let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "LEFT"), (<- JR.getField l_pcKeyFactory "DPAD_LEFT")])
            let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "RIGHT"), (<- JR.getField l_pcKeyFactory "DPAD_RIGHT")])
            let _ := (<- JR.call l_inputToGameKeyMapping "add_2" #[(<- JR.getField l_gameKeyFactory "KEY_NUM1"), (<- JR.getField l_pcKeyFactory "ENTER")])
            JR.setField this "inputToGameKeyMapping" l_inputToGameKeyMapping
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
    name := "PlatformFormInputMappingFactory",
    javaName := "org.allbinary.game.input.PlatformFormInputMappingFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("inputToGameKeyMapping", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getOrCreate_0", #[], false, m_getOrCreate_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformFormInputMappingFactory


