-- Generated Code Do Not Modify
-- package org.allbinary.android.input.motion
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SingleAnalogControllerVisitor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_analogLocationInputProcessor : JV := (JR.arg jargs 1)
    let mut l_analogLocationInput : JV := (<- JR.call (<- JR.callStatic "AnalogLocationInputFactory" "getInstance_0" #[]) "getInstanceForPlayer_1" #[(<- JR.getField this "playerInputId")])
    let _ := (<- JR.call l_analogLocationInputProcessor "process_2" #[l_allbinaryLayerManager, l_analogLocationInput])
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "AnalogControllerVisitor" this #[]
    let _ <- jfields this
    JR.setField this "playerInputId" (JR.asI l_playerInputId)
    pure this

initialize JR.registerClass {
    name := "SingleAnalogControllerVisitor",
    javaName := "org.allbinary.android.input.motion.SingleAnalogControllerVisitor",
    super := "AnalogControllerVisitor",
    interfaces := #[],
    isInterface := false,
    fields := #[("playerInputId", (JV.int 0))],
    statics := #[],
    methods := #[
        ("process_2", #["AllBinaryLayerManager", "AnalogLocationInputProcessor"], false, m_process_2), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SingleAnalogControllerVisitor


