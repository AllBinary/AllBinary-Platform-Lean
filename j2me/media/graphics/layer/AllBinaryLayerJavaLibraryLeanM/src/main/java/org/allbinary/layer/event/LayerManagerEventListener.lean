-- Generated Code Do Not Modify
-- package org.allbinary.layer.event
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerManagerEventListener

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    pure JV.null


def m_onCreateLayerManagerEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManagerEvent : JV := (JR.arg jargs 0)
    pure JV.null


def m_onDeleteLayerManagerEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManagerEvent : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LayerManagerEventListener",
    javaName := "org.allbinary.layer.event.LayerManagerEventListener",
    super := "Object",
    interfaces := #["LayerManagerEventListenerInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("onCreateLayerManagerEvent_1", #["LayerManagerEvent"], false, m_onCreateLayerManagerEvent_1), 
        ("onDeleteLayerManagerEvent_1", #["LayerManagerEvent"], false, m_onDeleteLayerManagerEvent_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerManagerEventListener


