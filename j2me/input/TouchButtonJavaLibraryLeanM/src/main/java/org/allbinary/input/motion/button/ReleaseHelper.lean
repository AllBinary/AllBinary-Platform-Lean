-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ReleaseHelper

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_release_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_nextTouchButtonInput : JV := JV.null
    let mut l_gameKeyEvent : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getField (<- JR.getField this "touchButtonRecognizer") "currentlyPressedTouchButtonSingleton") "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_nextTouchButtonInput := (<- JR.call (<- JR.getField (<- JR.getField this "touchButtonRecognizer") "currentlyPressedTouchButtonSingleton") "get_1" #[l_index])
            l_gameKeyEvent := (<- JR.call l_nextTouchButtonInput "getGameKeyEvent_0" #[])
            let _ := (<- JR.call (<- JR.getField (<- JR.getField this "touchButtonRecognizer") "upGameKeyEventHandler") "fireEvent_1" #[l_gameKeyEvent])
            let _ := (<- JR.call (<- JR.call (<- JR.getField (<- JR.getField this "touchButtonRecognizer") "upGameKeyEventHandler") "getInstanceForDevice_1" #[l_deviceId]) "fireEvent_1" #[l_gameKeyEvent])
            let _ := (<- JR.call (<- JR.getField (<- JR.getField this "touchButtonRecognizer") "currentlyPressedTouchButtonSingleton") "removeAt_1" #[l_index])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonRecognizer : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "touchButtonRecognizer" l_touchButtonRecognizer
    pure this

initialize JR.registerClass {
    name := "ReleaseHelper",
    javaName := "org.allbinary.input.motion.button.ReleaseHelper",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("touchButtonRecognizer", JV.null)],
    statics := #[],
    methods := #[
        ("release_2", #["TouchButtonInput", "int"], false, m_release_2), 
        ("jinit_1", #["TouchButtonRecognizer"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ReleaseHelper


