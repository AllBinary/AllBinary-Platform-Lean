-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_MultitouchReleaseHelper

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_release_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    let mut l_deviceId : JV := (JR.asI (JR.arg jargs 1))
    let mut l_cancelTouchButtonInput : JV := (<- JR.call (<- JR.callStatic "CancelTouchButtonInputFactory" "getInstance_0" #[]) "getCancel_1" #[l_touchButtonInput])
    let mut l_nextTouchButtonInput : JV := JV.null
    let mut l_gameKeyEvent : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getField (<- JR.getInherited this "MultitouchReleaseHelper" "touchButtonRecognizer") "currentlyPressedTouchButtonSingleton") "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            l_nextTouchButtonInput := (<- JR.call (<- JR.getField (<- JR.getInherited this "MultitouchReleaseHelper" "touchButtonRecognizer") "currentlyPressedTouchButtonSingleton") "get_1" #[l_index])
            if JR.truth (<- JR.eq l_cancelTouchButtonInput l_nextTouchButtonInput) then
                l_gameKeyEvent := (<- JR.call l_nextTouchButtonInput "getGameKeyEvent_0" #[])
                let _ := (<- JR.call (<- JR.getField (<- JR.getInherited this "MultitouchReleaseHelper" "touchButtonRecognizer") "upGameKeyEventHandler") "fireEvent_1" #[l_gameKeyEvent])
                let _ := (<- JR.call (<- JR.call (<- JR.getField (<- JR.getInherited this "MultitouchReleaseHelper" "touchButtonRecognizer") "upGameKeyEventHandler") "getInstanceForDevice_1" #[l_deviceId]) "fireEvent_1" #[l_gameKeyEvent])
                let _ := (<- JR.call (<- JR.getField (<- JR.getInherited this "MultitouchReleaseHelper" "touchButtonRecognizer") "currentlyPressedTouchButtonSingleton") "removeAt_1" #[l_index])
                pure ()
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonRecognizer : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "ReleaseHelper" this #[l_touchButtonRecognizer]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "MultitouchReleaseHelper",
    javaName := "org.allbinary.input.motion.button.MultitouchReleaseHelper",
    super := "ReleaseHelper",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[],
    methods := #[
        ("release_2", #["TouchButtonInput", "int"], false, m_release_2), 
        ("jinit_1", #["TouchButtonRecognizer"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_MultitouchReleaseHelper


