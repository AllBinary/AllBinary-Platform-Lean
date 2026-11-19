-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlatformKeyFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "PlatformKeyFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "PlatformKeyFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "PlatformKeyFactory" "instance" (<- JR.new "PlatformKeyFactory" #[])
        pure ()
    return (<- JR.getStatic "PlatformKeyFactory" "instance")


def m_getString_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_keyCode : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.callStatic "J2MEGameKey" "getString_1" #[l_keyCode])


def m_isSubmission_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "J2MEKeyFactory" "getInstance_0" #[]) "isSubmission_1" #[l_input])


def m_isDelete_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "J2MEKeyFactory" "getInstance_0" #[]) "isDelete_1" #[l_input])


def m_isBackSpace_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "J2MEKeyFactory" "getInstance_0" #[]) "isBackSpace_1" #[l_input])


def m_isLeft_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "J2MEKeyFactory" "getInstance_0" #[]) "isLeft_1" #[l_input])


def m_isRight_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "J2MEKeyFactory" "getInstance_0" #[]) "isRight_1" #[l_input])


def m_isUp_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "J2MEKeyFactory" "getInstance_0" #[]) "isUp_1" #[l_input])


def m_isDown_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "J2MEKeyFactory" "getInstance_0" #[]) "isDown_1" #[l_input])


def m_isEnter_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (<- JR.call (<- JR.callStatic "J2MEKeyFactory" "getInstance_0" #[]) "isEnter_1" #[l_input])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "PlatformKeyFactory",
    javaName := "org.allbinary.game.input.PlatformKeyFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getString_1", #["int"], false, m_getString_1), 
        ("isSubmission_1", #["Input"], false, m_isSubmission_1), 
        ("isDelete_1", #["Input"], false, m_isDelete_1), 
        ("isBackSpace_1", #["Input"], false, m_isBackSpace_1), 
        ("isLeft_1", #["Input"], false, m_isLeft_1), 
        ("isRight_1", #["Input"], false, m_isRight_1), 
        ("isUp_1", #["Input"], false, m_isUp_1), 
        ("isDown_1", #["Input"], false, m_isDown_1), 
        ("isEnter_1", #["Input"], false, m_isEnter_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlatformKeyFactory


