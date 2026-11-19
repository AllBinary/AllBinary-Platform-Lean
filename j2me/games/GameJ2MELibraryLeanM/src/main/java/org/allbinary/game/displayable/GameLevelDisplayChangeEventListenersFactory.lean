-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameLevelDisplayChangeEventListenersFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "list" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameLevelDisplayChangeEventListenersFactory" "instance" (<- JR.new "GameLevelDisplayChangeEventListenersFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameLevelDisplayChangeEventListenersFactory" "instance")


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayChangeEventListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "list") "add_1" #[l_displayChangeEventListener])
    let _ := (<- JR.call (<- JR.callStatic "DisplayChangeEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[l_displayChangeEventListener])
    pure JV.null


def m_clear_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_displayChangeEventHandler : JV := (<- JR.callStatic "DisplayChangeEventHandler" "getInstance_0" #[])
    let mut l_displayChangeEventListener : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.call (<- JR.getField this "list") "size_0" #[]))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            l_displayChangeEventListener := (<- JR.aget (<- JR.getField (<- JR.getField this "list") "objectArray") l_index)
            let _ := (<- JR.call l_displayChangeEventHandler "removeListener_1" #[l_displayChangeEventListener])
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getField this "list") "clear_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameLevelDisplayChangeEventListenersFactory",
    javaName := "org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("list", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("add_1", #["DisplayChangeEventListener"], false, m_add_1), 
        ("clear_0", #[], false, m_clear_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameLevelDisplayChangeEventListenersFactory


