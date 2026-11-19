-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_CancelTouchButtonInputFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "cancelInputArray" (<- JR.newArray "L" 1 #[(<- JR.getField (<- JR.callStatic "InputFactory" "getInstance_0" #[]) "MAX")])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "CancelTouchButtonInputFactory" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "CancelTouchButtonInputFactory" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "CancelTouchButtonInputFactory" "instance" (<- JR.new "CancelTouchButtonInputFactory" #[])
        pure ()
    return (<- JR.getStatic "CancelTouchButtonInputFactory" "instance")


def m_getCancel_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchButtonInput : JV := (JR.arg jargs 0)
    return (<- JR.aget (<- JR.getField this "cancelInputArray") (<- JR.call l_touchButtonInput "getSourceId_0" #[]))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_basicTouchInputFactory : JV := (<- JR.callStatic "BasicTouchInputFactory" "getInstance_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (<- JR.sub (<- JR.alen (<- JR.getField this "cancelInputArray")) (JV.int 1)))
        repeat
            if !(JR.truth (<- JR.ge l_index (JV.int 0))) then break
            JR.aset (<- JR.getField this "cancelInputArray") l_index (<- JR.getField l_basicTouchInputFactory "NONE")
            l_index := (JR.dec l_index)
            pure ()
        pure ()
    JR.aset (<- JR.getField this "cancelInputArray") (<- JR.call (<- JR.getField l_basicTouchInputFactory "UP") "getSourceId_0" #[]) (<- JR.getField l_basicTouchInputFactory "DOWN")
    JR.aset (<- JR.getField this "cancelInputArray") (<- JR.call (<- JR.getField l_basicTouchInputFactory "DOWN") "getSourceId_0" #[]) (<- JR.getField l_basicTouchInputFactory "UP")
    JR.aset (<- JR.getField this "cancelInputArray") (<- JR.call (<- JR.getField l_basicTouchInputFactory "LEFT") "getSourceId_0" #[]) (<- JR.getField l_basicTouchInputFactory "RIGHT")
    JR.aset (<- JR.getField this "cancelInputArray") (<- JR.call (<- JR.getField l_basicTouchInputFactory "RIGHT") "getSourceId_0" #[]) (<- JR.getField l_basicTouchInputFactory "LEFT")
    pure this

initialize JR.registerClass {
    name := "CancelTouchButtonInputFactory",
    javaName := "org.allbinary.input.motion.button.CancelTouchButtonInputFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("cancelInputArray", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getCancel_1", #["TouchButtonInput"], false, m_getCancel_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_CancelTouchButtonInputFactory


