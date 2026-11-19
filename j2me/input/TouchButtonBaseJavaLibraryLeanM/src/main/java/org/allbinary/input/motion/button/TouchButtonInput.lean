-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchButtonInput

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "gameKeyEventFactory" (<- JR.callStatic "GameKeyEventFactory" "getInstance_0" #[])
    JR.setField this "TOUCH_BUTTON_SOURCE_ID" (JR.asI (<- JR.getField (<- JR.getField this "gameKeyEventFactory") "TOUCH_BUTTON_SOURCE_ID"))
    JR.setField this "gameKeyEvent" (<- JR.getStatic "GameKeyEvent" "NONE")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_update_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_inputToGameKeyMapping : JV := (JR.arg jargs 0)
    try
        let mut l_gameKey : JV := (<- JR.call l_inputToGameKeyMapping "getInstance_1" #[(<- JR.callInherited this "TouchButtonInput" "getId_0" #[])])
        JR.setField this "gameKeyEvent" (<- JR.call (<- JR.getField this "gameKeyEventFactory") "getInstanceForInput_2" #[this, l_gameKey])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "UPDATE"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_getSourceId_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.getField this "TOUCH_BUTTON_SOURCE_ID"))


def m_getGameKeyEvent_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "gameKeyEvent")


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_id : JV := (JR.asI (JR.arg jargs 0))
    let mut l_name : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Input" this #[l_id, l_name]
    let _ <- jfields this
    let mut l_inputFactory : JV := (<- JR.callStatic "InputFactory" "getInstance_0" #[])
    let _ := (<- JR.call l_inputFactory "add_2" #[(<- JR.callInherited this "TouchButtonInput" "getId_0" #[]), this])
    pure this

initialize JR.registerClass {
    name := "TouchButtonInput",
    javaName := "org.allbinary.input.motion.button.TouchButtonInput",
    super := "Input",
    interfaces := #["GameKeyEventSourceInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("gameKeyEventFactory", JV.null), ("TOUCH_BUTTON_SOURCE_ID", (JV.int 0)), ("gameKeyEvent", JV.null)],
    statics := #[],
    methods := #[
        ("update_1", #["InputToGameKeyMapping"], false, m_update_1), 
        ("getSourceId_0", #[], false, m_getSourceId_0), 
        ("getGameKeyEvent_0", #[], false, m_getGameKeyEvent_0), 
        ("jinit_2", #["int", "String"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchButtonInput


