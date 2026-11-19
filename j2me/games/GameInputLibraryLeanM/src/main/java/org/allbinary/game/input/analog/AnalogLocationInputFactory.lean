-- Generated Code Do Not Modify
-- package org.allbinary.game.input.analog
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AnalogLocationInputFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AnalogLocationInputFactory" "instance" (<- JR.new "AnalogLocationInputFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AnalogLocationInputFactory" "instance")


def m_addPlayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 0))
    let mut l_analogLocationInput : JV := (<- JR.getStatic "AnalogLocationInput" "NULL_ANALOG_LOCATION_INPUT")
    if JR.truth (<- JR.lt l_playerInputId (<- JR.call (<- JR.getField this "list") "size_0" #[])) then
        l_analogLocationInput := (<- JR.call (<- JR.getField this "list") "get_1" #[l_playerInputId])
        pure ()
    if JR.truth (<- JR.eq l_analogLocationInput (<- JR.getStatic "AnalogLocationInput" "NULL_ANALOG_LOCATION_INPUT")) then
        l_analogLocationInput := (<- JR.new "AnalogLocationInput" #[l_playerInputId])
        let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_analogLocationInput])
        pure ()
    pure JV.null


def m_getInstanceForPlayer_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.call (<- JR.getField this "list") "get_1" #[l_playerInputId])


def m_getList_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "list")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AnalogLocationInputFactory",
    javaName := "org.allbinary.game.input.analog.AnalogLocationInputFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("addPlayer_1", #["int"], false, m_addPlayer_1), 
        ("getInstanceForPlayer_1", #["int"], false, m_getInstanceForPlayer_1), 
        ("getList_0", #[], false, m_getList_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AnalogLocationInputFactory


