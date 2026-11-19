-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInputProcessorUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputProcessorArray : JV := (JR.arg jargs 0)
    let mut l_noInputProcessor : JV := (<- JR.callStatic "GameInputProcessor" "getInstance_0" #[])
    let mut l_total : JV := (JR.asI (<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX"))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_total)) then break
            let mut l_inputProcessorCanBeNull : JV := (<- JR.aget l_inputProcessorArray l_index)
            if JR.truth (<- JR.eq l_inputProcessorCanBeNull JV.null) then
                JR.aset l_inputProcessorArray l_index l_noInputProcessor
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameInputProcessorUtil",
    javaName := "org.allbinary.game.input.GameInputProcessorUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("init_1", #["GameInputProcessorArr"], true, m_init_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInputProcessorUtil


