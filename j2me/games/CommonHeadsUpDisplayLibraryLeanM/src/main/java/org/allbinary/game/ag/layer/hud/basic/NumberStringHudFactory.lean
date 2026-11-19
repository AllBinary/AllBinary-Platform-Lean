-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.layer.hud.basic
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_NumberStringHudFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "NULL_NUMBER_STRING_HUD" (<- JR.call this "createHud_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "NumberStringHudFactory" "instance" (<- JR.callStatic "NullUtil" "getInstance_0" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "NumberStringHudFactory" "instance") (<- JR.callStatic "NullUtil" "getInstance_0" #[])) then
        JR.setStatic "NumberStringHudFactory" "instance" (<- JR.new "NumberStringHudFactory" #[])
        pure ()
    return (<- JR.getStatic "NumberStringHudFactory" "instance")


def m_createHud_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        return (<- JR.new "NumberStringHud" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (JV.int 9), (<- JR.getField (<- JR.callStatic "BasicHudFactory" "getInstance_0" #[]) "ABSOLUTE"), (JV.int 1), (JV.int 0), (<- JR.getField (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[]) "NULL_COLOR")])
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_logUtil : JV := (<- JR.callStatic "LogUtil" "getInstance_0" #[])
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call l_logUtil "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "CONSTRUCTOR"), l_e])
            throw (<- JR.new "RuntimeException" #[])
        else
            throw jex0
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "NumberStringHudFactory",
    javaName := "org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("NULL_NUMBER_STRING_HUD", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createHud_0", #[], false, m_createHud_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_NumberStringHudFactory


