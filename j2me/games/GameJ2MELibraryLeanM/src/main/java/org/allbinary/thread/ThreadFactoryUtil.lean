-- Generated Code Do Not Modify
-- package org.allbinary.thread
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ThreadFactoryUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ThreadFactoryUtil" "instance" (<- JR.new "ThreadFactoryUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ThreadFactoryUtil" "instance")


def m_getInstanceGameCanvasRunnable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_runnable : JV := (JR.arg jargs 0)
    return (<- JR.call this "getInstanceType_2" #[l_runnable, (<- JR.call l_runnable "getType_0" #[])])


def m_getInstanceForRunnable_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_runnable : JV := (JR.arg jargs 0)
    return (<- JR.call this "getInstanceType_2" #[l_runnable, (<- JR.call l_runnable "getType_0" #[])])


def m_getInstanceType_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_runnable : JV := (JR.arg jargs 0)
    let mut l_type : JV := (JR.asI (JR.arg jargs 1))
    let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    if JR.truth (<- JR.callStatic "J2MEUtil" "isHTML_0" #[]) then
        if JR.truth (<- JR.cor (<- JR.eq l_type (<- JR.getStatic "DemoCanvas" "TYPE")) (do pure (<- JR.eq l_type (<- JR.getStatic "AllBinaryGameCanvas" "TYPE")))) then
            let mut l_demoGameSingleThreadStartRunnable : JV := (<- JR.new "RunnableCanvasSingleThreadStartRunnable" #[l_runnable])
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_runnable])]) "toString_0" #[]), this, (<- JR.getField l_commonStrings "CONSTRUCTOR")])
            let mut l_primaryThreadPool : JV := (<- JR.callStatic "PrimaryThreadPool" "getInstance_0" #[])
            let _ := (<- JR.call l_primaryThreadPool "runTask_1" #[l_demoGameSingleThreadStartRunnable])
            pure ()
        else
            let _ := (<- JR.callStatic "PreLogUtil" "put_3" #[(<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(JV.str "Using Pseudo Thread for Runnable under PlayN/HTML5: ")]) "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[l_runnable])]) "toString_0" #[]), this, (<- JR.getField l_commonStrings "CONSTRUCTOR")])
            let mut l_primaryThreadPool : JV := (<- JR.callStatic "PrimaryThreadPool" "getInstance_0" #[])
            let _ := (<- JR.call l_primaryThreadPool "runTask_1" #[l_runnable])
            pure ()
        pure ()
    let mut l_thread : JV := (<- JR.new "Thread" #[l_runnable, (<- JR.call l_runnable "toString_0" #[])])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_thread "toString_0" #[]), this, (<- JR.getField l_commonStrings "CONSTRUCTOR")])
    return l_thread


def m_start_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_thread : JV := (JR.arg jargs 0)
    let _ := (<- JR.call l_thread "start_0" #[])
    pure JV.null


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ThreadFactoryUtil",
    javaName := "org.allbinary.thread.ThreadFactoryUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstanceGameCanvasRunnable_1", #["GameCanvasRunnableInterface"], false, m_getInstanceGameCanvasRunnable_1), 
        ("getInstanceForRunnable_1", #["ABRunnable"], false, m_getInstanceForRunnable_1), 
        ("getInstanceType_2", #["Runnable", "int"], false, m_getInstanceType_2), 
        ("start_1", #["Thread"], false, m_start_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ThreadFactoryUtil


