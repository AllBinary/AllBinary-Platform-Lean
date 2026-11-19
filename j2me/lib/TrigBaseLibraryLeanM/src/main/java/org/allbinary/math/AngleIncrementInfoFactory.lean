-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AngleIncrementInfoFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "angleIncrementInfo" (<- JR.newArray "L" 1 #[(JR.toI (<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "TOTAL_ANGLE"))])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "AngleIncrementInfoFactory" "instance" (<- JR.new "AngleIncrementInfoFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "AngleIncrementInfoFactory" "instance")


def m_getAt_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angleIncrement : JV := (JR.asS (JR.arg jargs 0))
    let mut l_halfAngleIncrement : JV := (JR.asI ((<- JR.shr (JR.toI l_angleIncrement) (JV.int 1))))
    let mut l_angleIncrementInfo : JV := JV.null
    let mut l_angleIncrementInfoCanBeNull : JV := (<- JR.aget (<- JR.getField this "angleIncrementInfo") l_halfAngleIncrement)
    if JR.truth (<- JR.eq l_angleIncrementInfoCanBeNull JV.null) then
        l_angleIncrementInfo := (<- JR.new "AngleIncrementInfo" #[l_angleIncrement])
        JR.aset (<- JR.getField this "angleIncrementInfo") l_halfAngleIncrement l_angleIncrementInfo
        return l_angleIncrementInfo
    else
        l_angleIncrementInfo := l_angleIncrementInfoCanBeNull
        pure ()
    return l_angleIncrementInfo


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "AngleIncrementInfoFactory",
    javaName := "org.allbinary.math.AngleIncrementInfoFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("angleIncrementInfo", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getAt_1", #["short"], false, m_getAt_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AngleIncrementInfoFactory


