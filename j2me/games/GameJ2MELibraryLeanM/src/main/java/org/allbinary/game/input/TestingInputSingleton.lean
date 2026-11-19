-- Generated Code Do Not Modify
-- package org.allbinary.game.input
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TestingInputSingleton

def jfields (this : JV) : JM JV := do
    JR.setField this "inputProcessorArray" (<- JR.newArray "L" 1 #[(<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX")])
    JR.setField this "testInputPaintable" (<- JR.callStatic "NullPaintable" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TestingInputSingleton" "instance" (<- JR.new "TestingInputSingleton" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TestingInputSingleton" "instance")


def m_initInputProcessors_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_initInputProcessorsForTestInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_aTestInputInterface : JV := (JR.arg jargs 0)
    let mut l_testInputInterface : JV := l_aTestInputInterface
    JR.setField this "testInputPaintable" l_testInputInterface
    JR.aset (<- JR.getField this "inputProcessorArray") (<- JR.getStatic "Canvas" "UP") (<- JR.newWith "TestingInputSingleton_jAnon1" this #[("jc_testInputInterface", l_testInputInterface)] #[])
    JR.aset (<- JR.getField this "inputProcessorArray") (<- JR.getStatic "Canvas" "DOWN") (<- JR.newWith "TestingInputSingleton_jAnon2" this #[("jc_testInputInterface", l_testInputInterface)] #[])
    JR.aset (<- JR.getField this "inputProcessorArray") (<- JR.getStatic "Canvas" "LEFT") (<- JR.newWith "TestingInputSingleton_jAnon3" this #[("jc_testInputInterface", l_testInputInterface)] #[])
    JR.aset (<- JR.getField this "inputProcessorArray") (<- JR.getStatic "Canvas" "RIGHT") (<- JR.newWith "TestingInputSingleton_jAnon4" this #[("jc_testInputInterface", l_testInputInterface)] #[])
    JR.aset (<- JR.getField this "inputProcessorArray") (<- JR.getStatic "Canvas" "KEY_NUM7") (<- JR.newWith "TestingInputSingleton_jAnon5" this #[("jc_testInputInterface", l_testInputInterface)] #[])
    JR.aset (<- JR.getField this "inputProcessorArray") (<- JR.getStatic "Canvas" "KEY_NUM9") (<- JR.newWith "TestingInputSingleton_jAnon6" this #[("jc_testInputInterface", l_testInputInterface)] #[])
    let _ := (<- JR.callStatic "GameInputProcessorUtil" "init_1" #[(<- JR.getField this "inputProcessorArray")])
    pure JV.null


def m_processInputList_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_list : JV := (JR.arg jargs 1)
    let mut l_key : JV := (JR.asI (JV.int 0))
    let mut l_gameKeyEvent : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_gameKeyEvent := ((<- JR.aget (<- JR.getField l_list "objectArray") l_index))
            l_key := (JR.asI (<- JR.call l_gameKeyEvent "getKey_0" #[]))
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "inputProcessorArray") l_key) "processEvent_2" #[l_allbinaryLayerManager, (<- JR.getStatic "GameKeyEvent" "NONE")])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_processInput_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "processInputList_2" #[l_allbinaryLayerManager, (<- JR.callInherited this "TestingInputSingleton" "getGameKeyEventList_0" #[])])
    let _ := (<- JR.call (<- JR.callInherited this "TestingInputSingleton" "getGameKeyEventList_0" #[]) "clear_0" #[])
    pure JV.null


def m_paint_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "testInputPaintable") "paint_1" #[l_graphics])
    pure JV.null


def m_implmentsGameInputInterface_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JV.bool true)


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "AllBinaryGameLayer" this #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getStatic "RectangleFactory" "SINGLETON"), (<- JR.callStatic "ViewPosition" "getInstanceD_0" #[])]
    let _ <- jfields this
    let _ := (<- JR.callStatic "GameInputProcessorUtil" "init_1" #[(<- JR.getField this "inputProcessorArray")])
    pure this

initialize JR.registerClass {
    name := "TestingInputSingleton",
    javaName := "org.allbinary.game.input.TestingInputSingleton",
    super := "AllBinaryGameLayer",
    interfaces := #["GameInputInterface"],
    isInterface := false,
    fields := #[("inputProcessorArray", JV.null), ("testInputPaintable", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("initInputProcessors_0", #[], false, m_initInputProcessors_0), 
        ("initInputProcessorsForTestInput_1", #["TestInputInterface"], false, m_initInputProcessorsForTestInput_1), 
        ("processInputList_2", #["AllBinaryLayerManager", "BasicArrayList"], false, m_processInputList_2), 
        ("processInput_1", #["AllBinaryLayerManager"], false, m_processInput_1), 
        ("paint_1", #["Graphics"], false, m_paint_1), 
        ("implmentsGameInputInterface_0", #[], false, m_implmentsGameInputInterface_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TestingInputSingleton


namespace jclass_TestingInputSingleton_jAnon1

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "jc_testInputInterface") "up_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GameInputProcessor" this jargs
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TestingInputSingleton_jAnon1",
    javaName := "org.allbinary.game.input.TestingInputSingleton$1",
    super := "GameInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("jouter", JV.null), ("jc_testInputInterface", JV.null)],
    statics := #[],
    methods := #[
        ("processEvent_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_processEvent_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TestingInputSingleton_jAnon1


namespace jclass_TestingInputSingleton_jAnon2

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "jc_testInputInterface") "down_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GameInputProcessor" this jargs
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TestingInputSingleton_jAnon2",
    javaName := "org.allbinary.game.input.TestingInputSingleton$2",
    super := "GameInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("jouter", JV.null), ("jc_testInputInterface", JV.null)],
    statics := #[],
    methods := #[
        ("processEvent_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_processEvent_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TestingInputSingleton_jAnon2


namespace jclass_TestingInputSingleton_jAnon3

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "jc_testInputInterface") "left_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GameInputProcessor" this jargs
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TestingInputSingleton_jAnon3",
    javaName := "org.allbinary.game.input.TestingInputSingleton$3",
    super := "GameInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("jouter", JV.null), ("jc_testInputInterface", JV.null)],
    statics := #[],
    methods := #[
        ("processEvent_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_processEvent_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TestingInputSingleton_jAnon3


namespace jclass_TestingInputSingleton_jAnon4

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "jc_testInputInterface") "right_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GameInputProcessor" this jargs
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TestingInputSingleton_jAnon4",
    javaName := "org.allbinary.game.input.TestingInputSingleton$4",
    super := "GameInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("jouter", JV.null), ("jc_testInputInterface", JV.null)],
    statics := #[],
    methods := #[
        ("processEvent_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_processEvent_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TestingInputSingleton_jAnon4


namespace jclass_TestingInputSingleton_jAnon5

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "jc_testInputInterface") "strafeLeft_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GameInputProcessor" this jargs
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TestingInputSingleton_jAnon5",
    javaName := "org.allbinary.game.input.TestingInputSingleton$5",
    super := "GameInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("jouter", JV.null), ("jc_testInputInterface", JV.null)],
    statics := #[],
    methods := #[
        ("processEvent_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_processEvent_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TestingInputSingleton_jAnon5


namespace jclass_TestingInputSingleton_jAnon6

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_processEvent_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_allbinaryLayerManager : JV := (JR.arg jargs 0)
    let mut l_gameKeyEvent : JV := (JR.arg jargs 1)
    let _ := (<- JR.call (<- JR.getField this "jc_testInputInterface") "strafeRight_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "GameInputProcessor" this jargs
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "TestingInputSingleton_jAnon6",
    javaName := "org.allbinary.game.input.TestingInputSingleton$6",
    super := "GameInputProcessor",
    interfaces := #[],
    isInterface := false,
    fields := #[("jouter", JV.null), ("jc_testInputInterface", JV.null)],
    statics := #[],
    methods := #[
        ("processEvent_2", #["AllBinaryLayerManager", "GameKeyEvent"], false, m_processEvent_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TestingInputSingleton_jAnon6


