-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_PlayerGameInputGameLayer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getPlayerGameInput_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "playerGameInput")


def m_initInputProcessors_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_processInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_myManager : JV := (JR.arg jargs 0)
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_playerInputId : JV := (JR.asI (JR.arg jargs 0))
    let _ <- JR.superInit "AllBinaryGameLayer" this #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.new "Rectangle" #[(<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO"), (JV.int 0), (JV.int 0)]), (<- JR.new "StaticViewPosition" #[(JV.int 0), (JV.int 0), (JV.int 0)])]
    let _ <- jfields this
    JR.setField this "playerGameInput" (<- JR.new "PlayerGameInput" #[(<- JR.callInherited this "PlayerGameInputGameLayer" "getGameKeyEventList_0" #[]), (<- JR.new "BasicArrayListD" #[]), l_playerInputId])
    let mut l_canvasStrings : JV := (<- JR.callStatic "CanvasStrings" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getInherited this "PlayerGameInputGameLayer" "logUtil") "putF_3" #[(JV.str "Danger Danger Danger: Should Not Be Called Except For Testing Input"), this, (<- JR.getField l_canvasStrings "PAINT")])
    pure this

initialize JR.registerClass {
    name := "PlayerGameInputGameLayer",
    javaName := "org.allbinary.game.layer.PlayerGameInputGameLayer",
    super := "AllBinaryGameLayer",
    interfaces := #["PlayerGameInputCompositeInterface"],
    isInterface := false,
    fields := #[("playerGameInput", JV.null)],
    statics := #[],
    methods := #[
        ("getPlayerGameInput_0", #[], false, m_getPlayerGameInput_0), 
        ("initInputProcessors_0", #[], false, m_initInputProcessors_0), 
        ("processInput_1", #["AllBinaryLayerManager"], false, m_processInput_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_1", #["int"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_PlayerGameInputGameLayer


