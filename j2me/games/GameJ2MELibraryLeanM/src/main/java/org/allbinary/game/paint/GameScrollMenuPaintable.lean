-- Generated Code Do Not Modify
-- package org.allbinary.game.paint
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameScrollMenuPaintable

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setState_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_state : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.callInherited this "GameScrollMenuPaintable" "setCurrentStatePaintable_1" #[(<- JR.callInherited this "GameScrollMenuPaintable" "getMainDemoStatePaintable_0" #[])])
    pure JV.null


def m_onEvent_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_eventObject : JV := (JR.arg jargs 0)
    pure JV.null


def m_setColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let mut l_mainGameDemoStatePaintable : JV := (<- JR.callInherited this "GameScrollMenuPaintable" "getMainDemoStatePaintable_0" #[])
    let mut l_formPaintable : JV := (<- JR.call l_mainGameDemoStatePaintable "getMenuPaintableInterface_0" #[])
    let mut l_scrollSelectionForm : JV := (<- JR.call l_formPaintable "getForm_0" #[])
    let _ := (<- JR.call (<- JR.call l_mainGameDemoStatePaintable "getOwnershipPaintableInterface_0" #[]) "setBasicColorP_1" #[l_basicColor])
    let _ := (<- JR.call l_scrollSelectionForm "setButtonBasicColor_1" #[l_basicColor])
    let mut l_item : JV := JV.null
    let mut l_stringComponent : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call l_scrollSelectionForm "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_item := (<- JR.call l_scrollSelectionForm "get_1" #[l_index])
            l_stringComponent := (<- JR.call l_item "getLabelStringComponent_0" #[])
            if JR.truth (<- JR.ne l_stringComponent JV.null) then
                let _ := (<- JR.call l_stringComponent "setForegroundBasicColor_1" #[l_basicColor])
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_mainDemoStatePaintable : JV := (JR.arg jargs 0)
    let mut l_ownershipPaintable : JV := (JR.arg jargs 1)
    let mut l_helpPaintableInterface : JV := (JR.arg jargs 2)
    let mut l_basicColor : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "BasicGameDemoPaintable" this #[l_mainDemoStatePaintable, l_ownershipPaintable, l_helpPaintableInterface]
    let _ <- jfields this
    let _ := (<- JR.call this "setColor_1" #[l_basicColor])
    let _ := (<- JR.call (<- JR.callStatic "ColorChangeEventHandler" "getInstance_0" #[]) "addListenerInterface_1" #[this])
    pure this

initialize JR.registerClass {
    name := "GameScrollMenuPaintable",
    javaName := "org.allbinary.game.paint.GameScrollMenuPaintable",
    super := "BasicGameDemoPaintable",
    interfaces := #["ColorChangeListener"],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("setState_1", #["int"], false, m_setState_1), 
        ("onEvent_1", #["AllBinaryEventObject"], false, m_onEvent_1), 
        ("setColor_1", #["BasicColor"], false, m_setColor_1), 
        ("jinit_4", #["Paintable", "Paintable", "Paintable", "BasicColor"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameScrollMenuPaintable


