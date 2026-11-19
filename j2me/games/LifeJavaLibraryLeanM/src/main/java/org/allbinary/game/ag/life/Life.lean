-- Generated Code Do Not Modify
-- package org.allbinary.game.ag.life
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Life

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "Life" "NO_LIFE" (<- JR.callStatic "Life" "createLife_0" #[])
    pure JV.null


def m_createLife_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        return (<- JR.new "Life" #[(JR.toS (JV.int 0)), (JR.toS (JV.int 0))])
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            throw (<- JR.new "RuntimeException" #[])
        else
            throw jex0
    pure JV.null


def m_get_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asS (<- JR.getField this "lives"))


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lives : JV := (JR.asS (JR.arg jargs 0))
    JR.setField this "lives" (JR.asS l_lives)
    pure JV.null


def m_reset_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "lives" (JR.asS (<- JR.getField this "startLives"))
    pure JV.null


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lives : JV := (JR.asS (JR.arg jargs 0))
    if JR.truth (JR.not (<- JR.call this "reachedLimit_0" #[])) then
        if JR.truth (<- JR.le (<- JR.add (<- JR.getField this "lives") l_lives) (JR.toI (<- JR.call this "getMaxlives_0" #[]))) then
            JR.setField this "lives" (JR.asS (JR.toS ((<- JR.add (<- JR.getField this "lives") l_lives))))
            pure ()
        else
            JR.setField this "lives" (JR.asS (<- JR.call this "getMaxlives_0" #[]))
            pure ()
        pure ()
    pure JV.null


def m_isAlive_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.le (JR.toI (<- JR.getField this "lives")) (JV.int 0)) then
        return (JV.bool false)
    else
        return (JV.bool true)
    pure JV.null


def m_getMaxlives_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asS (<- JR.getField this "maxlives"))


def m_reachedLimit_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.cor (<- JR.gt (<- JR.getField this "lives") (<- JR.getField this "maxlives")) (do pure (<- JR.lt (JR.toI (<- JR.getField this "lives")) (JV.int 0)))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def m_deaths_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lives : JV := (JR.asS (JR.arg jargs 0))
    if JR.truth (JR.not (<- JR.call this "reachedLimit_0" #[])) then
        if JR.truth (<- JR.ge (<- JR.sub (<- JR.getField this "lives") l_lives) (JV.int 0)) then
            JR.setField this "lives" (JR.asS (JR.toS ((<- JR.sub (<- JR.getField this "lives") l_lives))))
            pure ()
        else
            JR.setField this "lives" (JR.asS (JV.int 0))
            pure ()
        pure ()
    pure JV.null


def m_getStartLives_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asS (<- JR.getField this "startLives"))


def m_setStartLives_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_startLives : JV := (JR.asS (JR.arg jargs 0))
    JR.setField this "startLives" (JR.asS l_startLives)
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_lives : JV := (JR.asS (JR.arg jargs 0))
    let mut l_maxlives : JV := (JR.asS (JR.arg jargs 1))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "maxlives" (JR.asS l_maxlives)
    if JR.truth (<- JR.gt l_lives (<- JR.getField this "maxlives")) then
        throw (<- JR.new "Exception" #[(JV.str "To Many Lives")])
    JR.setField this "lives" (JR.asS l_lives)
    JR.setField this "startLives" (JR.asS l_lives)
    pure this

initialize JR.registerClass {
    name := "Life",
    javaName := "org.allbinary.game.ag.life.Life",
    super := "Object",
    interfaces := #["LifeInterface"],
    isInterface := false,
    fields := #[("lives", (JV.short 0)), ("startLives", (JV.short 0)), ("maxlives", (JV.short 0))],
    statics := #[("NO_LIFE", JV.null)],
    methods := #[
        ("createLife_0", #[], true, m_createLife_0), 
        ("get_0", #[], false, m_get_0), 
        ("set_1", #["short"], false, m_set_1), 
        ("reset_0", #[], false, m_reset_0), 
        ("add_1", #["short"], false, m_add_1), 
        ("isAlive_0", #[], false, m_isAlive_0), 
        ("getMaxlives_0", #[], false, m_getMaxlives_0), 
        ("reachedLimit_0", #[], false, m_reachedLimit_0), 
        ("deaths_1", #["short"], false, m_deaths_1), 
        ("getStartLives_0", #[], false, m_getStartLives_0), 
        ("setStartLives_1", #["short"], false, m_setStartLives_1), 
        ("jinit_2", #["short", "short"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Life


