-- Generated Code Do Not Modify
-- package org.allbinary.configuration
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ApplicationConfiguration

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "fullscreen" (JV.bool true)
    JR.setField this "showTitleBar" (JV.bool false)
    JR.setField this "progressBarView" (JV.bool false)
    JR.setField this "FILE" (JV.str "ReloadConfiguration.dat")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ApplicationConfiguration" "instance" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    if JR.truth (<- JR.eq (<- JR.getStatic "ApplicationConfiguration" "instance") (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_OBJECT")) then
        JR.setStatic "ApplicationConfiguration" "instance" (<- JR.new "ApplicationConfiguration" #[])
        pure ()
    return (<- JR.getStatic "ApplicationConfiguration" "instance")


def m_read_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fileInputStreamFactory : JV := (<- JR.callStatic "FileStreamFactory" "getInstance_0" #[])
    let mut l_fileInputStream : JV := (<- JR.call l_fileInputStreamFactory "getFileInputStreamInstance_2" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField this "FILE")])
    let mut l_dataInputStream : JV := (<- JR.new "AbDataInputStream" #[l_fileInputStream])
    let mut l_fullScreen : JV := (JR.asI (<- JR.call l_dataInputStream "readInt_0" #[]))
    if JR.truth (<- JR.eq l_fullScreen (JV.int 0)) then
        let _ := (<- JR.call this "setFullscreen_1" #[(JV.bool false)])
        pure ()
    else
        if JR.truth (<- JR.eq l_fullScreen (JV.int 1)) then
            let _ := (<- JR.call this "setFullscreen_1" #[(JV.bool true)])
            pure ()
        else
            throw (<- JR.new "Exception" #[(JV.str "Invalid FullScreen ActivityConfiguration")])
    let mut l_progressBarView : JV := (JR.asI (<- JR.call l_dataInputStream "readInt_0" #[]))
    if JR.truth (<- JR.eq l_progressBarView (JV.int 0)) then
        let _ := (<- JR.call this "setProgressBarView_1" #[(JV.bool false)])
        pure ()
    else
        if JR.truth (<- JR.eq l_progressBarView (JV.int 1)) then
            let _ := (<- JR.call this "setProgressBarView_1" #[(JV.bool true)])
            pure ()
        else
            throw (<- JR.new "Exception" #[(JV.str "Invalid ProgressBarView ActivityConfiguration")])
    let mut l_showTitleBar : JV := (JR.asI (<- JR.call l_dataInputStream "readInt_0" #[]))
    if JR.truth (<- JR.eq l_showTitleBar (JV.int 0)) then
        let _ := (<- JR.call this "setShowTitleBar_1" #[(JV.bool false)])
        pure ()
    else
        if JR.truth (<- JR.eq l_showTitleBar (JV.int 1)) then
            let _ := (<- JR.call this "setShowTitleBar_1" #[(JV.bool true)])
            pure ()
        else
            throw (<- JR.new "Exception" #[(JV.str "Invalid ShowTitleBar ActivityConfiguration")])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.concat (JV.str "Read Configuration: ") (<- JR.call this "toString_0" #[])), this, (JV.str "read")])
    pure JV.null


def m_write_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_closeable : JV := (<- JR.getStatic "NullCloseable" "NULL_CLOSEABLE")
    try
        let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.concat (JV.str "Write Configuration: ") (<- JR.call this "toString_0" #[])), this, (JV.str "write")])
        let mut l_fileInputStreamFactory : JV := (<- JR.callStatic "FileStreamFactory" "getInstance_0" #[])
        let mut l_fileOutputStream : JV := (<- JR.call l_fileInputStreamFactory "getFileOutputStreamInstance_2" #[(<- JR.getField (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "EMPTY_STRING"), (<- JR.getField this "FILE")])
        let mut l_dataOutputStream : JV := (<- JR.new "AbDataOutputStream" #[l_fileOutputStream])
        l_closeable := l_dataOutputStream
        if JR.truth (<- JR.call this "isFullscreen_0" #[]) then
            let _ := (<- JR.call l_dataOutputStream "writeInt_1" #[(JV.int 1)])
            pure ()
        else
            let _ := (<- JR.call l_dataOutputStream "writeInt_1" #[(JV.int 0)])
            pure ()
        if JR.truth (<- JR.call this "isProgressBarView_0" #[]) then
            let _ := (<- JR.call l_dataOutputStream "writeInt_1" #[(JV.int 1)])
            pure ()
        else
            let _ := (<- JR.call l_dataOutputStream "writeInt_1" #[(JV.int 0)])
            pure ()
        if JR.truth (<- JR.call this "isShowTitleBar_0" #[]) then
            let _ := (<- JR.call l_dataOutputStream "writeInt_1" #[(JV.int 1)])
            pure ()
        else
            let _ := (<- JR.call l_dataOutputStream "writeInt_1" #[(JV.int 0)])
            pure ()
        let _ := (<- JR.call l_dataOutputStream "flush_0" #[])
        pure ()
    catch jex1 =>
        if (<- JR.isInstanceOfAny jex1 #["Exception"]) then
            let mut l_e : JV := jex1
            throw l_e
        else
            throw jex1
    finally
        let _ := (<- JR.call (<- JR.callStatic "StreamUtil" "getInstance_0" #[]) "close_1" #[l_closeable])
        pure ()
    pure JV.null


def m_update_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gameFeature : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq l_gameFeature (<- JR.getField (<- JR.callStatic "MainFeatureFactory" "getInstance_0" #[]) "FULL_SCREEN")) then
        let mut l_features : JV := (<- JR.callStatic "Features" "getInstance_0" #[])
        if JR.truth (<- JR.call l_features "isFeature_1" #[l_gameFeature]) then
            if JR.truth (JR.not (<- JR.call this "isFullscreen_0" #[])) then
                let _ := (<- JR.call this "setFullscreen_1" #[(JV.bool true)])
                let _ := (<- JR.call this "write_0" #[])
                pure ()
            pure ()
        else
            if JR.truth (<- JR.call this "isFullscreen_0" #[]) then
                let _ := (<- JR.call this "setFullscreen_1" #[(JV.bool false)])
                let _ := (<- JR.call this "write_0" #[])
                pure ()
            pure ()
        pure ()
    pure JV.null


def m_setFullscreen_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_fullscreen : JV := (JR.arg jargs 0)
    JR.setField this "fullscreen" l_fullscreen
    pure JV.null


def m_isFullscreen_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "fullscreen")


def m_setShowTitleBar_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_showTitleBar : JV := (JR.arg jargs 0)
    JR.setField this "showTitleBar" l_showTitleBar
    pure JV.null


def m_isShowTitleBar_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "showTitleBar")


def m_setProgressBarView_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_progressBarView : JV := (JR.arg jargs 0)
    JR.setField this "progressBarView" l_progressBarView
    pure JV.null


def m_isProgressBarView_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "progressBarView")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "isFullscreen: ")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call this "isFullscreen_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " isProgressBarView: ")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call this "isProgressBarView_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " isShowTitleBar: ")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call this "isShowTitleBar_0" #[])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    try
        if JR.truth (<- JR.call (<- JR.callStatic "FileFactory" "getInstance_0" #[]) "isFile_1" #[(<- JR.getField this "FILE")]) then
            let _ := (<- JR.call this "read_0" #[])
            pure ()
        else
            let _ := (<- JR.call this "write_0" #[])
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), this, (<- JR.getField l_commonStrings "CONSTRUCTOR"), l_e])
            pure ()
        else
            throw jex0
    pure this

initialize JR.registerClass {
    name := "ApplicationConfiguration",
    javaName := "org.allbinary.configuration.ApplicationConfiguration",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("fullscreen", (JV.bool false)), ("showTitleBar", (JV.bool false)), ("progressBarView", (JV.bool false)), ("FILE", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("read_0", #[], false, m_read_0), 
        ("write_0", #[], false, m_write_0), 
        ("update_1", #["Feature"], false, m_update_1), 
        ("setFullscreen_1", #["boolean"], false, m_setFullscreen_1), 
        ("isFullscreen_0", #[], false, m_isFullscreen_0), 
        ("setShowTitleBar_1", #["boolean"], false, m_setShowTitleBar_1), 
        ("isShowTitleBar_0", #[], false, m_isShowTitleBar_0), 
        ("setProgressBarView_1", #["boolean"], false, m_setProgressBarView_1), 
        ("isProgressBarView_0", #[], false, m_isProgressBarView_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ApplicationConfiguration


