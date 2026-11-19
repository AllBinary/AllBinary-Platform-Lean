-- Generated Code Do Not Modify
-- package org.allbinary.game.input.mapping.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_InputMappingEvent

def jfields (this : JV) : JM JV := do
    JR.setField this "inputToGameKeyMapping" (<- JR.callStatic "InputToGameKeyMapping" "getNullInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setInputToGameKeyMapping_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputToGameKeyMapping : JV := (JR.arg jargs 0)
    JR.setField this "inputToGameKeyMapping" l_inputToGameKeyMapping
    pure JV.null


def m_getInputToGameKeyMapping_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "inputToGameKeyMapping")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_anyType : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "AllBinaryEventObject" this #[l_anyType]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "InputMappingEvent",
    javaName := "org.allbinary.game.input.mapping.event.InputMappingEvent",
    super := "AllBinaryEventObject",
    interfaces := #[],
    isInterface := false,
    fields := #[("inputToGameKeyMapping", JV.null)],
    statics := #[],
    methods := #[
        ("setInputToGameKeyMapping_1", #["InputToGameKeyMapping"], false, m_setInputToGameKeyMapping_1), 
        ("getInputToGameKeyMapping_0", #[], false, m_getInputToGameKeyMapping_0), 
        ("jinit_1", #["Any"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_InputMappingEvent


