-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_J2MEKeyFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "gameKeyFactory" (<- JR.callStatic "GameKeyFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "J2MEKeyFactory" "instance" (<- JR.new "J2MEKeyFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "J2MEKeyFactory" "instance")


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyArray : JV := (<- JR.arrayOf "L" #[(<- JR.getField (<- JR.getField this "gameKeyFactory") "DOWN"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "FIRE"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "GAME_A"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "GAME_B"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "GAME_C"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "GAME_D"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM0"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM1"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM2"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM3"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM4"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM5"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM6"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM7"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM8"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_NUM9"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_POUND"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "KEY_STAR"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "LEFT"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "LEVEL_DOWN"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "LEVEL_UP"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "NONE"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "RIGHT"), (<- JR.getField (<- JR.getField this "gameKeyFactory") "UP")])
    let mut l_inputFactory : JV := (<- JR.callStatic "InputFactory" "getInstance_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen l_gameKeyArray))
        repeat
            let jtemp1 : JV := (JR.dec l_index)
            l_index := jtemp1
            
            if !(JR.truth (<- JR.ge jtemp1 (JV.int 0))) then break
            let _ := (<- JR.call l_inputFactory "add_2" #[(<- JR.call (<- JR.aget l_gameKeyArray l_index) "getId_0" #[]), (<- JR.aget l_gameKeyArray l_index)])
            pure ()
        pure ()
    pure JV.null


def m_isSubmission_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_input (<- JR.getField (<- JR.getField this "gameKeyFactory") "FIRE")) then
        return (JV.bool true)
    return (JV.bool false)


def m_isDelete_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_input (<- JR.getField (<- JR.getField this "gameKeyFactory") "GAME_D")) then
        return (JV.bool true)
    return (JV.bool false)


def m_isBackSpace_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    return (JV.bool false)


def m_isUp_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_input (<- JR.getField (<- JR.getField this "gameKeyFactory") "UP")) then
        return (JV.bool true)
    return (JV.bool false)


def m_isDown_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_input (<- JR.getField (<- JR.getField this "gameKeyFactory") "DOWN")) then
        return (JV.bool true)
    return (JV.bool false)


def m_isLeft_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_input (<- JR.getField (<- JR.getField this "gameKeyFactory") "LEFT")) then
        return (JV.bool true)
    return (JV.bool false)


def m_isRight_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_input (<- JR.getField (<- JR.getField this "gameKeyFactory") "RIGHT")) then
        return (JV.bool true)
    return (JV.bool false)


def m_isEnter_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_input : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_input (<- JR.getField (<- JR.getField this "gameKeyFactory") "FIRE")) then
        return (JV.bool true)
    return (JV.bool false)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "J2MEKeyFactory",
    javaName := "org.allbinary.game.input.J2MEKeyFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("gameKeyFactory", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("init_0", #[], false, m_init_0), 
        ("isSubmission_1", #["Input"], false, m_isSubmission_1), 
        ("isDelete_1", #["Input"], false, m_isDelete_1), 
        ("isBackSpace_1", #["Input"], false, m_isBackSpace_1), 
        ("isUp_1", #["Input"], false, m_isUp_1), 
        ("isDown_1", #["Input"], false, m_isDown_1), 
        ("isLeft_1", #["Input"], false, m_isLeft_1), 
        ("isRight_1", #["Input"], false, m_isRight_1), 
        ("isEnter_1", #["Input"], false, m_isEnter_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_J2MEKeyFactory


