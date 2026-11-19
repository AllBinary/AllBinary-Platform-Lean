-- Generated Code Do Not Modify
-- package org.allbinary.game.layer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameLayerUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_isOnScreen_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layer : JV := (JR.arg jargs 0)
    let mut l_displayInfo : JV := (<- JR.callStatic "DisplayInfoSingleton" "getInstance_0" #[])
    let mut l_viewPosition : JV := (<- JR.call l_layer "getViewPosition_0" #[])
    return (<- JR.callStatic "GameLayerUtil" "isInside_8" #[(<- JR.call l_viewPosition "getX_0" #[]), (<- JR.call l_viewPosition "getY_0" #[]), (<- JR.call l_viewPosition "getX2_0" #[]), (<- JR.call l_viewPosition "getY2_0" #[]), (JV.int 0), (JV.int 0), (<- JR.call l_displayInfo "getLastWidth_0" #[]), (<- JR.call l_displayInfo "getLastHeight_0" #[])])


def m_isInside_8 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_rectX1 : JV := (JR.asI (JR.arg jargs 0))
    let mut l_rectY1 : JV := (JR.asI (JR.arg jargs 1))
    let mut l_rectX2 : JV := (JR.asI (JR.arg jargs 2))
    let mut l_rectY2 : JV := (JR.asI (JR.arg jargs 3))
    let mut l_rect2X1 : JV := (JR.asI (JR.arg jargs 4))
    let mut l_rect2Y1 : JV := (JR.asI (JR.arg jargs 5))
    let mut l_rect2X2 : JV := (JR.asI (JR.arg jargs 6))
    let mut l_rect2Y2 : JV := (JR.asI (JR.arg jargs 7))
    if JR.truth (<- JR.cand (<- JR.cand (<- JR.cand (<- JR.gt l_rectX1 l_rect2X1) (do pure (<- JR.lt l_rectX2 l_rect2X2))) (do pure (<- JR.gt l_rectY1 l_rect2Y1))) (do pure (<- JR.lt l_rectY2 l_rect2Y2))) then
        return (JV.bool true)
    else
        return (JV.bool false)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameLayerUtil",
    javaName := "org.allbinary.game.layer.GameLayerUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("isOnScreen_1", #["AllBinaryLayer"], true, m_isOnScreen_1), 
        ("isInside_8", #["int", "int", "int", "int", "int", "int", "int", "int"], true, m_isInside_8), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameLayerUtil


