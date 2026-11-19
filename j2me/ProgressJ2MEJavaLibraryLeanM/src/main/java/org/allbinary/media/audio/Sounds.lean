-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Sounds

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "commonStrings" (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
    JR.setField this "soundStrings" (<- JR.callStatic "SoundStrings" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_init_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
    let mut l_commonLabels : JV := (<- JR.callStatic "CommonLabels" "getInstance_0" #[])
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let _ := (<- JR.call (<- JR.getField this "soundsFactoryInterface") "init_0" #[])
    let mut l_soundInterfaceArray : JV := (<- JR.call (<- JR.getField this "soundsFactoryInterface") "getSoundInterfaceArray_0" #[])
    let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    let mut l_indexInteger : JV := JV.null
    let mut l_indexString : JV := JV.null
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    if true then
        let mut l_i : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_i (<- JR.alen l_soundInterfaceArray))) then break
            let mut l_soundInterface : JV := (<- JR.aget l_soundInterfaceArray l_i)
            if JR.truth (<- JR.ne l_soundInterface JV.null) then
                l_indexInteger := (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[l_i])
                l_indexString := (<- JR.call l_indexInteger "toString_0" #[])
                let _ := (<- JR.call l_stringBuffer "delete_2" #[(JV.int 0), (<- JR.call l_stringBuffer "length_0" #[])])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField l_commonLabels "INDEX_LABEL")])
                let _ := (<- JR.call l_stringBuffer "append_1" #[l_indexString])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.getField (<- JR.getField this "soundStrings") "SOUND")])
                let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.call l_soundInterface "getClass_0" #[]) "getName_0" #[])])
                let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.call l_stringBuffer "toString_0" #[]), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
                let _ := (<- JR.call l_soundInterface "init_0" #[])
                let _ := (<- JR.call l_progressCanvas "addNormalPortion_2" #[(JV.int 100), (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getField (<- JR.getField this "soundStrings") "INIT_SOUND")]) "append_1" #[l_indexString]) "toString_0" #[])])
                pure ()
            l_i := (JR.inc l_i)
            pure ()
        pure ()
    let _ := (<- JR.call (<- JR.getField this "soundsFactoryInterface") "setInitialized_1" #[(JV.bool true)])
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "END"), this, (<- JR.getField (<- JR.getField this "commonStrings") "INIT")])
    pure JV.null


def m_stopAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "soundStrings") "STOP_ALL")])
    let mut l_soundInterfaceArray : JV := (<- JR.call (<- JR.getField this "soundsFactoryInterface") "getSoundInterfaceArray_0" #[])
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let mut l_player : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_soundInterfaceArray))) then break
            if JR.truth (<- JR.ne (<- JR.aget l_soundInterfaceArray l_index) JV.null) then
                l_player := (<- JR.call (<- JR.aget l_soundInterfaceArray l_index) "getPlayerP_0" #[])
                if JR.truth (<- JR.ne l_player JV.null) then
                    let _ := (<- JR.call l_player "stop_0" #[])
                    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[(JV.int 100), (<- JR.getField (<- JR.getField this "soundStrings") "STOPPING_SOUND"), l_index])
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_closeAll_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "logUtil") "putF_3" #[(<- JR.getField (<- JR.getField this "commonStrings") "START"), this, (<- JR.getField (<- JR.getField this "soundStrings") "CLOSE_ALL")])
    let mut l_soundInterfaceArray : JV := (<- JR.call (<- JR.getField this "soundsFactoryInterface") "getSoundInterfaceArray_0" #[])
    let mut l_progressCanvas : JV := (<- JR.callStatic "ProgressCanvasFactory" "getInstance_0" #[])
    let mut l_player : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_soundInterfaceArray))) then break
            if JR.truth (<- JR.ne (<- JR.aget l_soundInterfaceArray l_index) JV.null) then
                l_player := (<- JR.call (<- JR.aget l_soundInterfaceArray l_index) "getPlayerP_0" #[])
                if JR.truth (<- JR.ne l_player JV.null) then
                    let _ := (<- JR.call l_player "close_0" #[])
                    let _ := (<- JR.call l_progressCanvas "addPortion_3" #[(JV.int 100), (<- JR.getField (<- JR.getField this "soundStrings") "CLOSING_SOUND"), l_index])
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_soundsFactoryInterface : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "soundsFactoryInterface" l_soundsFactoryInterface
    pure this

initialize JR.registerClass {
    name := "Sounds",
    javaName := "org.allbinary.media.audio.Sounds",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("commonStrings", JV.null), ("soundStrings", JV.null), ("soundsFactoryInterface", JV.null)],
    statics := #[],
    methods := #[
        ("init_0", #[], false, m_init_0), 
        ("stopAll_0", #[], false, m_stopAll_0), 
        ("closeAll_0", #[], false, m_closeAll_0), 
        ("jinit_1", #["SoundsFactoryInterface"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Sounds


