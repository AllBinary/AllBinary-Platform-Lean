-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_AngleIncrementInfo

def jfields (this : JV) : JM JV := do
    JR.setField this "frameUtil" (<- JR.callStatic "FrameUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getFrameAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frame : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (<- JR.call (<- JR.getField this "frameUtil") "getFrameAngle_2" #[l_frame, (JR.toI (<- JR.getField this "angleIncrement"))]))


def m_getAngleIncrement_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asS (<- JR.getField this "angleIncrement"))


def m_toString_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.call (<- JR.call (<- JR.new "StringMaker" #[]) "append_1" #[(<- JR.getStatic "AngleIncrementInfo" "INCREMENT")]) "appendshort_1" #[(<- JR.getField this "angleIncrement")]) "toString_0" #[])


def m_getClosestGeneralDirection_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asS (JR.arg jargs 0))
    let mut l_closestDirection : JV := (<- JR.call (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[]) "getAt_1" #[(JV.int 360)])
    if JR.truth (<- JR.lt (<- JR.sub (<- JR.call (<- JR.getField this "UP_FRAME") "intValue_0" #[]) l_angle) (<- JR.sub (<- JR.call l_closestDirection "intValue_0" #[]) l_angle)) then
        l_closestDirection := (<- JR.getField this "UP_FRAME")
        pure ()
    if JR.truth (<- JR.lt (<- JR.sub (<- JR.call (<- JR.getField this "DOWN_FRAME") "intValue_0" #[]) l_angle) (<- JR.sub (<- JR.call l_closestDirection "intValue_0" #[]) l_angle)) then
        l_closestDirection := (<- JR.getField this "DOWN_FRAME")
        pure ()
    if JR.truth (<- JR.lt (<- JR.sub (<- JR.call (<- JR.getField this "LEFT_FRAME") "intValue_0" #[]) l_angle) (<- JR.sub (<- JR.call l_closestDirection "intValue_0" #[]) l_angle)) then
        l_closestDirection := (<- JR.getField this "LEFT_FRAME")
        pure ()
    if JR.truth (<- JR.lt (<- JR.sub (<- JR.call (<- JR.getField this "RIGHT_FRAME") "intValue_0" #[]) l_angle) (<- JR.sub (<- JR.call l_closestDirection "intValue_0" #[]) l_angle)) then
        l_closestDirection := (<- JR.getField this "RIGHT_FRAME")
        pure ()
    return (JR.asI (<- JR.call l_closestDirection "intValue_0" #[]))


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angleIncrement : JV := (JR.asS (JR.arg jargs 0))
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "angleIncrement" (JR.asS l_angleIncrement)
    let mut l_angleFactory : JV := (<- JR.callStatic "AngleFactory" "getInstance_0" #[])
    let mut l_smallIntegerSingletonFactory : JV := (<- JR.callStatic "SmallIntegerSingletonFactory" "getInstance_0" #[])
    JR.setField this "DOWN_FRAME" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(<- JR.div (<- JR.call (<- JR.getField l_angleFactory "DOWN") "getValue_0" #[]) (<- JR.getField this "angleIncrement"))])
    JR.setField this "UP_FRAME" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(JR.toI (<- JR.call (<- JR.getField l_angleFactory "UP") "getValue_0" #[]))])
    JR.setField this "LEFT_FRAME" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(<- JR.div (<- JR.call (<- JR.getField l_angleFactory "LEFT") "getValue_0" #[]) (<- JR.getField this "angleIncrement"))])
    JR.setField this "RIGHT_FRAME" (<- JR.call l_smallIntegerSingletonFactory "getAt_1" #[(<- JR.div (<- JR.call (<- JR.getField l_angleFactory "RIGHT") "getValue_0" #[]) (<- JR.getField this "angleIncrement"))])
    pure this

initialize JR.registerClass {
    name := "AngleIncrementInfo",
    javaName := "org.allbinary.math.AngleIncrementInfo",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("angleIncrement", (JV.short 0)), ("DOWN_FRAME", JV.null), ("UP_FRAME", JV.null), ("LEFT_FRAME", JV.null), ("RIGHT_FRAME", JV.null), ("frameUtil", JV.null)],
    statics := #[("INCREMENT", (JV.str "Inc: "))],
    methods := #[
        ("getFrameAngle_1", #["int"], false, m_getFrameAngle_1), 
        ("getAngleIncrement_0", #[], false, m_getAngleIncrement_0), 
        ("toString_0", #[], false, m_toString_0), 
        ("getClosestGeneralDirection_1", #["short"], false, m_getClosestGeneralDirection_1), 
        ("jinit_1", #["short"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_AngleIncrementInfo


