-- Generated Code Do Not Modify
-- package org.allbinary.graphics.color
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_ColorTemperatureUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "basicColorFactory" (<- JR.callStatic "BasicColorFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "ColorTemperatureUtil" "instance" (<- JR.new "ColorTemperatureUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "ColorTemperatureUtil" "instance")


def m_getBasicColor_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_thirdTemp : JV := (JR.asI (JR.arg jargs 0))
    let mut l_basicColor : JV := (<- JR.getField (<- JR.getField this "basicColorFactory") "RED")
    if JR.truth (<- JR.gt l_thirdTemp (JV.int 3700)) then
        l_basicColor := (<- JR.getField (<- JR.getField this "basicColorFactory") "PURPLE")
        pure ()
    else
        if JR.truth (<- JR.gt l_thirdTemp (JV.int 3200)) then
            l_basicColor := (<- JR.getField (<- JR.getField this "basicColorFactory") "BLUE")
            pure ()
        else
            if JR.truth (<- JR.gt l_thirdTemp (JV.int 2700)) then
                l_basicColor := (<- JR.getField (<- JR.getField this "basicColorFactory") "PUCE")
                pure ()
            else
                if JR.truth (<- JR.gt l_thirdTemp (JV.int 2200)) then
                    l_basicColor := (<- JR.getField (<- JR.getField this "basicColorFactory") "WHITE")
                    pure ()
                else
                    if JR.truth (<- JR.gt l_thirdTemp (JV.int 1700)) then
                        l_basicColor := (<- JR.getField (<- JR.getField this "basicColorFactory") "GREEN")
                        pure ()
                    else
                        if JR.truth (<- JR.gt l_thirdTemp (JV.int 1200)) then
                            l_basicColor := (<- JR.getField (<- JR.getField this "basicColorFactory") "YELLOW")
                            pure ()
                        else
                            if JR.truth (<- JR.gt l_thirdTemp (JV.int 700)) then
                                l_basicColor := (<- JR.getField (<- JR.getField this "basicColorFactory") "ORANGE")
                                pure ()
    return l_basicColor


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "ColorTemperatureUtil",
    javaName := "org.allbinary.graphics.color.ColorTemperatureUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("basicColorFactory", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getBasicColor_1", #["int"], false, m_getBasicColor_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_ColorTemperatureUtil


