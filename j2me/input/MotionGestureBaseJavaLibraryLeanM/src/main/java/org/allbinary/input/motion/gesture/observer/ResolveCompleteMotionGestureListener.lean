-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.gesture.observer
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ResolveCompleteMotionGestureListener

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_onMotionGestureCompleted_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_configuration : JV := (<- JR.callStatic "MotionGestureConfigurationFactory" "getInstance_0" #[])
    let mut l_commandActionsList : JV := (<- JR.call l_configuration "getAssociateCommandActionsList_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call l_commandActionsList "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            let mut l_association : JV := (<- JR.aget (<- JR.getField l_commandActionsList "objectArray") l_index)
            if JR.truth (<- JR.eq (<- JR.call l_association "isMotionGestureArrayEquals_1" #[l_list]) (JV.bool true)) then
                let mut l_completeMotionGestureInputEvent : JV := (<- JR.call l_association "getCommandAction_0" #[])
                let _ := (<- JR.call (<- JR.callStatic "CompleteMotionGestureInputEventHandler" "getInstance_0" #[]) "fireEvent_1" #[l_completeMotionGestureInputEvent])
                break
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(JV.str "MotionGesture to CompleteMotionGesture Reciever"), this, (<- JR.getField l_commonStrings "CONSTRUCTOR")])
    let _ := (<- JR.call (<- JR.callStatic "CompleteMotionGestureInputEventHandler" "getInstance_0" #[]) "addListener_1" #[(<- JR.new "GameKeyFromMotionGestureEventListener" #[])])
    pure this

initialize JR.registerClass {
    name := "ResolveCompleteMotionGestureListener",
    javaName := "org.allbinary.input.motion.gesture.observer.ResolveCompleteMotionGestureListener",
    super := "Object",
    interfaces := #["CompleteMotionGestureListenerInterface"],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[],
    methods := #[
        ("onMotionGestureCompleted_1", #["BasicArrayList"], false, m_onMotionGestureCompleted_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ResolveCompleteMotionGestureListener


