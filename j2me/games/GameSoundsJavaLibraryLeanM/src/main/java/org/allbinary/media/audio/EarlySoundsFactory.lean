-- Generated Code Do Not Modify
-- package org.allbinary.media.audio
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_EarlySoundsFactory

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "EarlySoundsFactory" "instance" (<- JR.new "EarlySoundsFactory" #[])
    pure JV.null


def m_getSoundInterfaceArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_soundInterfaceArray : JV := (<- JR.newArray "L" 1 #[(JV.int 2)])
    let mut l_index : JV := (JR.asI (JV.int 0))
    let jtemp1 : JV := l_index
    l_index := (JR.inc jtemp1)
    JR.aset l_soundInterfaceArray jtemp1 (<- JR.callStatic "SelectSound" "getInstance_0" #[])
    let jtemp2 : JV := l_index
    l_index := (JR.inc jtemp2)
    JR.aset l_soundInterfaceArray jtemp2 (<- JR.callStatic "ErrorSound" "getInstance_0" #[])
    return l_soundInterfaceArray


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "EarlySoundsFactory" "instance")


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "BaseSoundsFactory" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "EarlySoundsFactory",
    javaName := "org.allbinary.media.audio.EarlySoundsFactory",
    super := "BaseSoundsFactory",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getSoundInterfaceArray_0", #[], false, m_getSoundInterfaceArray_0), 
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_EarlySoundsFactory


