-- Generated Code Do Not Modify
-- package org.allbinary.direction
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DirectionUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "directionArray" (<- JR.newArray "L" 1 #[(JV.int 10)])
    JR.setField this "directionArray2" (<- JR.newArray "L" 1 #[(JV.int 10)])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DirectionUtil" "instance" (<- JR.new "DirectionUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DirectionUtil" "instance")


def m_getAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_direction : JV := (JR.arg jargs 0)
    return (<- JR.aget (<- JR.getField this "directionArray2") (<- JR.call l_direction "getValue_0" #[]))


def m_getFrameAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_direction : JV := (JR.arg jargs 0)
    return (<- JR.aget (<- JR.getField this "directionArray") (<- JR.call l_direction "getValue_0" #[]))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    let mut l_angleFactory : JV := (<- JR.callStatic "AngleFactory" "getInstance_0" #[])
    let mut l_directionFactory : JV := (<- JR.callStatic "DirectionFactory" "getInstance_0" #[])
    JR.aset (<- JR.getField this "directionArray") (<- JR.call (<- JR.getField l_directionFactory "LEFT") "getValue_0" #[]) (<- JR.getField l_angleFactory "LEFT")
    JR.aset (<- JR.getField this "directionArray") (<- JR.call (<- JR.getField l_directionFactory "RIGHT") "getValue_0" #[]) (<- JR.getField l_angleFactory "RIGHT")
    JR.aset (<- JR.getField this "directionArray") (<- JR.call (<- JR.getField l_directionFactory "UP") "getValue_0" #[]) (<- JR.getField l_angleFactory "UP")
    JR.aset (<- JR.getField this "directionArray") (<- JR.call (<- JR.getField l_directionFactory "DOWN") "getValue_0" #[]) (<- JR.getField l_angleFactory "DOWN")
    JR.aset (<- JR.getField this "directionArray2") (<- JR.call (<- JR.getField l_directionFactory "LEFT") "getValue_0" #[]) (<- JR.getField l_angleFactory "LEFT")
    JR.aset (<- JR.getField this "directionArray2") (<- JR.call (<- JR.getField l_directionFactory "RIGHT") "getValue_0" #[]) (<- JR.getField l_angleFactory "RIGHT")
    JR.aset (<- JR.getField this "directionArray2") (<- JR.call (<- JR.getField l_directionFactory "UP") "getValue_0" #[]) (<- JR.getField l_angleFactory "UP")
    JR.aset (<- JR.getField this "directionArray2") (<- JR.call (<- JR.getField l_directionFactory "DOWN") "getValue_0" #[]) (<- JR.getField l_angleFactory "DOWN")
    pure this

initialize JR.registerClass {
    name := "DirectionUtil",
    javaName := "org.allbinary.direction.DirectionUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("directionArray", JV.null), ("directionArray2", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getAngle_1", #["Direction"], false, m_getAngle_1), 
        ("getFrameAngle_1", #["Direction"], false, m_getFrameAngle_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DirectionUtil


