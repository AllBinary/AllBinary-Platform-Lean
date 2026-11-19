-- Generated Code Do Not Modify
-- package org.allbinary.game.configuration.feature
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameFeatureItemCommandListener

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_commandAction_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_command : JV := (JR.arg jargs 0)
    let mut l_item : JV := (JR.arg jargs 1)
    try
        let mut l_itemLabel : JV := (<- JR.call l_item "getLabel_0" #[])
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "ITEM_LABEL")]) "append_1" #[l_itemLabel]) "toString_0" #[]), this, (<- JR.getField (<- JR.callStatic "MidletStrings" "getInstance_0" #[]) "COMMAND_ACTION")])
        if JR.truth (<- JR.instanceOf l_item "GameConfigurationGauge") then
            let _ := (<- JR.call (<- JR.callStatic "GameConfigurationUtil" "getInstance_0" #[]) "change_2" #[(<- JR.getField this "gameOptionsForm"), l_item])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField (<- JR.callStatic "MidletStrings" "getInstance_0" #[]) "COMMAND_ACTION"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameOptionsForm : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "gameOptionsForm" l_gameOptionsForm
    pure this

initialize JR.registerClass {
    name := "GameFeatureItemCommandListener",
    javaName := "org.allbinary.game.configuration.feature.GameFeatureItemCommandListener",
    super := "Object",
    interfaces := #["ItemCommandListener"],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("gameOptionsForm", JV.null)],
    statics := #[],
    methods := #[
        ("commandAction_2", #["Command", "LcduiItem"], false, m_commandAction_2), 
        ("jinit_1", #["GameOptionsForm"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameFeatureItemCommandListener


