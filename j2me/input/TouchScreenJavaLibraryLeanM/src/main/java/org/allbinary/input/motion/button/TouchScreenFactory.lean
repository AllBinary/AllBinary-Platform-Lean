-- Generated Code Do Not Modify
-- package org.allbinary.input.motion.button
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_TouchScreenFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "logUtil" (<- JR.callStatic "LogUtil" "getInstance_0" #[])
    JR.setField this "touchScreenType" (<- JR.getField (<- JR.callStatic "TouchScreenTypesFactory" "getInstance_0" #[]) "NOTOUCH")
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "TouchScreenFactory" "SINGLETON" (<- JR.new "TouchScreenFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "TouchScreenFactory" "SINGLETON")


def m_setMultiTouch_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_multiTouch : JV := (JR.arg jargs 0)
    JR.setField this "multiTouch" l_multiTouch
    pure JV.null


def m_isMultiTouch_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "multiTouch")


def m_setTouch_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touch : JV := (JR.arg jargs 0)
    JR.setField this "touch" l_touch
    pure JV.null


def m_isTouch_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "touch")


def m_setMultiTouchDistinct_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_multiTouchDistinct : JV := (JR.arg jargs 0)
    JR.setField this "multiTouchDistinct" l_multiTouchDistinct
    pure JV.null


def m_isMultiTouchDistinct_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "multiTouchDistinct")


def m_setTouchScreenType_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_touchScreenType : JV := (JR.arg jargs 0)
    JR.setField this "touchScreenType" l_touchScreenType
    pure JV.null


def m_getTouchScreenType_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "touchScreenType")


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_stringBuffer : JV := (<- JR.new "StringMaker" #[])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str "TouchScreen: ")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call this "isTouch_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " MultiTouch: ")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call this "isMultiTouch_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " Distinct MultiTouch: ")])
    let _ := (<- JR.call l_stringBuffer "appendboolean_1" #[(<- JR.call this "isMultiTouchDistinct_0" #[])])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(JV.str " TouchScreenType: ")])
    let _ := (<- JR.call l_stringBuffer "append_1" #[(<- JR.call (<- JR.callStatic "StringUtil" "getInstance_0" #[]) "toString_1" #[(<- JR.call this "getTouchScreenType_0" #[])])])
    return (<- JR.call l_stringBuffer "toString_0" #[])


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    try
        let _ := (<- JR.call this "setTouch_1" #[(JV.bool true)])
        let _ := (<- JR.call this "setMultiTouch_1" #[(JV.bool false)])
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let mut l_commonStrings : JV := (<- JR.callStatic "CommonStrings" "getInstance_0" #[])
            let _ := (<- JR.call (<- JR.getField this "logUtil") "put_4" #[(<- JR.getField l_commonStrings "EXCEPTION"), (<- JR.getStatic "TouchScreenFactory" "SINGLETON"), (<- JR.getField l_commonStrings "GET_INSTANCE"), l_e])
            pure ()
        else
            throw jex0
    pure this

initialize JR.registerClass {
    name := "TouchScreenFactory",
    javaName := "org.allbinary.input.motion.button.TouchScreenFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("logUtil", JV.null), ("touch", (JV.bool false)), ("multiTouch", (JV.bool false)), ("multiTouchDistinct", (JV.bool false)), ("touchScreenType", JV.null)],
    statics := #[("SINGLETON", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("setMultiTouch_1", #["boolean"], false, m_setMultiTouch_1), 
        ("isMultiTouch_0", #[], false, m_isMultiTouch_0), 
        ("setTouch_1", #["boolean"], false, m_setTouch_1), 
        ("isTouch_0", #[], false, m_isTouch_0), 
        ("setMultiTouchDistinct_1", #["boolean"], false, m_setMultiTouchDistinct_1), 
        ("isMultiTouchDistinct_0", #[], false, m_isMultiTouchDistinct_0), 
        ("setTouchScreenType_1", #["TouchScreenType"], false, m_setTouchScreenType_1), 
        ("getTouchScreenType_0", #[], false, m_getTouchScreenType_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_TouchScreenFactory


