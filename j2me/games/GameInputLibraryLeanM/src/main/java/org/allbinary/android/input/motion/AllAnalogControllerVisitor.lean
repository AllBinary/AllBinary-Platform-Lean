-- Generated Code Do Not Modify
-- package org.allbinary.android.input.motion
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AllAnalogControllerVisitor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_process_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_analogLocationInputProcessor : JV := (JR.arg jargs 1)
    let mut l_analogLocationInputList : JV := (<- JR.call (<- JR.callStatic "AnalogLocationInputFactory" "getInstance_0" #[]) "getList_0" #[])
    let mut l_analogLocationInput : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call l_analogLocationInputList "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_analogLocationInput := (<- JR.call l_analogLocationInputList "get_1" #[l_index])
            let _ := (<- JR.call l_analogLocationInputProcessor "process_2" #[l_allbinaryLayerManager, l_analogLocationInput])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AnalogControllerVisitor" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AllAnalogControllerVisitor",
    javaName := "org.allbinary.android.input.motion.AllAnalogControllerVisitor",
    super := "AnalogControllerVisitor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("process_2", #["AllBinaryLayerManager", "AnalogLocationInputProcessor"], false, m_process_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AllAnalogControllerVisitor


