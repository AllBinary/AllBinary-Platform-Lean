-- Generated Code Do Not Modify
-- package org.allbinary.game.input.motion.action
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_GameKeyCompleteMotionGestureInputEventFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "eventList" (<- JR.new "BasicArrayListD" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "GameKeyCompleteMotionGestureInputEventFactory" "SINGLETON" (<- JR.new "GameKeyCompleteMotionGestureInputEventFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "GameKeyCompleteMotionGestureInputEventFactory" "SINGLETON")


def m_add_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameKeyCompleteMotionGestureInputEvent : JV := (JR.arg jargs 0)
    let _ := (<- JR.call (<- JR.getField this "eventList") "add_1" #[l_gameKeyCompleteMotionGestureInputEvent])
    pure JV.null


def m_updateAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.callStatic "CommonLabels" "getInstance_0" #[]) "START_LABEL")]) "appendint_1" #[(<- JR.call (<- JR.getField this "eventList") "size_0" #[])]) "toString_0" #[]), this, (JV.str "updateAll")])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.call (<- JR.getField this "eventList") "size_0" #[]) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_gameKeyCompleteMotionGestureInputEvent : JV := (<- JR.aget (<- JR.getField (<- JR.getField this "eventList") "objectArray") l_index)
            let _ := (<- JR.call l_gameKeyCompleteMotionGestureInputEvent "update_0" #[])
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "GameKeyCompleteMotionGestureInputEventFactory",
    javaName := "org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("eventList", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("add_1", #["GameKeyCompleteMotionGestureInputEvent"], false, m_add_1), 
        ("updateAll_0", #[], false, m_updateAll_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_GameKeyCompleteMotionGestureInputEventFactory


