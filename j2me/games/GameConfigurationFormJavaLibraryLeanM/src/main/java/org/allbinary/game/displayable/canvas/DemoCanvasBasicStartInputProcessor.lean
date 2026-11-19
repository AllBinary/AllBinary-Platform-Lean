-- Generated Code Do Not Modify
-- package org.allbinary.game.displayable.canvas
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DemoCanvasBasicStartInputProcessor

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processInputList_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (<- JR.callInherited this "DemoCanvasBasicStartInputProcessor" "getGameKeyEventList_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_gameKeyEvent : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_gameKeyEvent := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            let _ := (<- JR.call (<- JR.getInherited this "DemoCanvasBasicStartInputProcessor" "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Start GameKey: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_gameKeyEvent])]) "toString_0" #[]), this, (<- JR.getField (<- JR.callStatic "GameInputStrings" "getInstance_0" #[]) "PROCESS_INPUT")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.call (<- JR.callInherited this "DemoCanvasBasicStartInputProcessor" "getCanvas_0" #[]) "getCustomCommandListener_0" #[]) "commandAction_2" #[(<- JR.getField (<- JR.callStatic "GameCommandsFactory" "getInstance_0" #[]) "START_COMMAND"), (<- JR.getStatic "NullCanvas" "NULL_CANVAS")])
    return (JR.asI l_size)


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyEventList : JV := (JR.arg jargs 0)
    let mut l_gameCanvas : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "BasicMenuInputProcessor" this #[l_gameKeyEventList, (JV.int (-1)), l_gameCanvas]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DemoCanvasBasicStartInputProcessor",
    javaName := "org.allbinary.game.displayable.canvas.DemoCanvasBasicStartInputProcessor",
    super := "BasicMenuInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("processInputList_0", #[], false, m_processInputList_0), 
        ("jinit_2", #["BasicArrayList", "RunnableCanvas"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DemoCanvasBasicStartInputProcessor


