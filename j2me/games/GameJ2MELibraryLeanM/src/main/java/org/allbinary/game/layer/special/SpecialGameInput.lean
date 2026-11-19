-- Generated Code Do Not Modify
-- package org.allbinary.game.layer.special
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SpecialGameInput

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_up_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_down_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_right_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_left_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_strafeLeft_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_strafeRight_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_fire_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_special1_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_special2_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_special3_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_special4_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_special5_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def m_paintThreed_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "SpecialGameInput",
    javaName := "org.allbinary.game.layer.special.SpecialGameInput",
    super := "Object",
    interfaces := #["SpecialGameInputInterface"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("up_0", #[], false, m_up_0), 
        ("down_0", #[], false, m_down_0), 
        ("right_0", #[], false, m_right_0), 
        ("left_0", #[], false, m_left_0), 
        ("strafeLeft_0", #[], false, m_strafeLeft_0), 
        ("strafeRight_0", #[], false, m_strafeRight_0), 
        ("fire_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_fire_2), 
        ("special1_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_special1_2), 
        ("special2_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_special2_2), 
        ("special3_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_special3_2), 
        ("special4_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_special4_2), 
        ("special5_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_special5_2), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("paintThreed_1", #["Graphics"], false, m_paintThreed_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SpecialGameInput


