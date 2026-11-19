-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameInputMappingInstructionsCanvas

def jfields (this : JV) : JM JV := do
    JR.setField this "drawStringUtil" (<- JR.callStatic "DrawStringUtil" "getInstance_0" #[])
    JR.setField this "TITLE" (JV.str "Input Instructions")
    JR.setField this "instructions" (<- JR.arrayOf "L" #[(JV.str "Add Input Mapping:"), (JV.str "1. Select the desired action by generating a currently defined input for a given action."), (JV.str "(Example: Press the '1' key to select the Fire action)"), (JV.str "2. Make the newly desired input for the selected action."), (JV.str "(Example: Press 'f' to add it to the selected action)"), (JV.str "Note: If the input is already mapped to another action then it will not be added. You"), (JV.str "will need to deleted from the other action before adding it to another."), (JV.str "Warning: Not all keys map for a given platform and show as Unknown."), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (JV.str "Remove Input Mapping:"), (JV.str "1. Select the desired action by generating a currently defined input for a given action."), (JV.str "(Example: Press the key '1' to select the Fire action)"), (JV.str "2. Select a mapped input for the selected action."), (JV.str "(Example: Press the key '1' to select the '1' key input for the selected Fire action)"), (JV.str "3. Press the Delete Key.")])
    JR.setField this "anchor" (JR.asI (<- JR.getStatic "Anchor" "TOP_LEFT"))
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameInputMappingInstructionsCanvas" "DISPLAY" (<- JR.new "Command" #[(JV.str "Help"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    JR.setStatic "GameInputMappingInstructionsCanvas" "CLOSE" (<- JR.new "Command" #[(JV.str "Close"), (<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "Command" "SCREEN"), (JV.int 1)])
    pure JV.null


def m_initCommands_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_cmdListener : JV := (JR.arg jargs 0)
    let _ := (<- JR.callInherited this "GameInputMappingInstructionsCanvas" "removeAllCommands_0" #[])
    let _ := (<- JR.callInherited this "GameInputMappingInstructionsCanvas" "addCommand_1" #[(<- JR.getStatic "GameInputMappingInstructionsCanvas" "CLOSE")])
    let _ := (<- JR.callInherited this "GameInputMappingInstructionsCanvas" "setCommandListener_1" #[l_cmdListener])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingInstructionsCanvas" "myFontProcessor") "process_1" #[l_graphics])
    let _ := (<- JR.call (<- JR.getField this "colorFillPaintable") "paint_1" #[l_graphics])
    let mut l_halfWidth : JV := (JR.asI (<- JR.call (<- JR.getInherited this "GameInputMappingInstructionsCanvas" "displayInfo") "getLastHalfWidth_0" #[]))
    let mut l_beginWidth : JV := (JR.asI ((<- JR.shr (<- JR.call (<- JR.call l_graphics "getFont_0" #[]) "stringWidth_1" #[(<- JR.getField this "TITLE")]) (JV.int 1))))
    let _ := (<- JR.call l_graphics "setColor_1" #[(<- JR.getInherited this "GameInputMappingInstructionsCanvas" "foregroundColor")])
    let _ := (<- JR.call l_graphics "drawString_4" #[(<- JR.getField this "TITLE"), (<- JR.sub l_halfWidth l_beginWidth), (<- JR.getInherited this "GameInputMappingInstructionsCanvas" "fontHeight"), (<- JR.getField this "anchor")])
    let _ := (<- JR.call (<- JR.getField this "drawStringUtil") "drawCenterStrings_6" #[l_graphics, (<- JR.getField this "instructions"), (<- JR.call (<- JR.getInherited this "GameInputMappingInstructionsCanvas" "displayInfo") "getLastWidth_0" #[]), (<- JR.getInherited this "GameInputMappingInstructionsCanvas" "fontHeight"), l_halfWidth, (<- JR.mul (JV.int 3) (<- JR.getInherited this "GameInputMappingInstructionsCanvas" "fontHeight"))])
    let _ := (<- JR.callSuper "GameCommandCanvas" this "paint_1" #[l_graphics])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_commandListener : JV := (JR.arg jargs 0)
    let mut l_allBinaryGameLayerManager : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "GameCommandCanvas" this #[l_commandListener, (<- JR.getStatic "GameInputMappingInstructionsCanvas" "NAME"), (<- JR.call l_allBinaryGameLayerManager "getBackgroundBasicColor_0" #[]), (<- JR.call l_allBinaryGameLayerManager "getForegroundBasicColor_0" #[])]
    let _ <- jfields this
    let _ := (<- JR.call (<- JR.getInherited this "GameInputMappingInstructionsCanvas" "logUtil") "putF_3" #[(<- JR.getField (<- JR.getInherited this "GameInputMappingInstructionsCanvas" "commonStrings") "START"), this, (<- JR.getField (<- JR.getInherited this "GameInputMappingInstructionsCanvas" "commonStrings") "CONSTRUCTOR")])
    JR.setField this "colorFillPaintable" (<- JR.call (<- JR.callStatic "ColorFillPaintableFactory" "getInstance_0" #[]) "getInstance_2" #[(<- JR.call l_allBinaryGameLayerManager "getBackgroundBasicColor_0" #[]), (JV.bool false)])
    pure this

initialize JR.registerClass {
    name := "GameInputMappingInstructionsCanvas",
    javaName := "org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas",
    super := "GameCommandCanvas",
    interfaces := #[],
    isInterface := false,
    fields := #[("drawStringUtil", JV.null), ("TITLE", JV.null), ("instructions", JV.null), ("colorFillPaintable", JV.null), ("anchor", (JV.int 0))],
    statics := #[("DISPLAY", JV.null), ("CLOSE", JV.null), ("NAME", (JV.str "GameInputMappingInstructionsCanvas"))],
    methods := #[
        ("initCommands_1", #["CommandListener"], false, m_initCommands_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("jinit_2", #["CommandListener", "AllBinaryGameLayerManager"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameInputMappingInstructionsCanvas


