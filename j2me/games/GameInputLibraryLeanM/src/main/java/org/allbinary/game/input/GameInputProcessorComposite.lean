-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInputProcessorComposite

def jfields (this : JV) : JM JV := do
    JR.setField this "NAME_LABEL" (JV.str " GameInputProcessorInterface: ")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    try
        let mut l_list : JV := (<- JR.callInherited this "GameInputProcessorComposite" "getGameKeyEventList_0" #[])
        let _ := (<- JR.call (<- JR.getField this "gameInputProcessorInterface") "onInput_1" #[l_list])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "GameInputProcessorComposite" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "GameInputProcessorComposite" "commonStrings") "EXCEPTION"), this, (<- JR.getField (<- JR.getInherited this "GameInputProcessorComposite" "commonStrings") "UPDATE"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.callSuper "PlayerGameInput" this "toString_0" #[])]) "append_1" #[(<- JR.getField this "NAME_LABEL")]) "append_1" #[(<- JR.getField this "name")]) "toString_0" #[])


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_name : JV := (JR.arg jargs 0)
    let mut l_gameInputProcessorInterface : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "PlayerGameInput" this #[(<- JR.new "BasicArrayListD" #[]), (<- JR.new "BasicArrayListD" #[]), (JV.int (-1))]
    let _ <- jfields this
    JR.setField this "name" l_name
    JR.setField this "gameInputProcessorInterface" l_gameInputProcessorInterface
    pure this

initialize JR.registerClass {
    name := "GameInputProcessorComposite",
    javaName := "org.allbinary.game.input.GameInputProcessorComposite",
    super := "PlayerGameInput",
    interfaces := #[],
    isInterface := false,
    fields := #[("name", JV.null), ("gameInputProcessorInterface", JV.null), ("NAME_LABEL", JV.null)],
    statics := #[],
    methods := #[
        ("update_0", #[], false, m_update_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_2", #["String", "GameInputProcessorInterface"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInputProcessorComposite


