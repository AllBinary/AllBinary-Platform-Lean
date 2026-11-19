-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_DistanceUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "mathUtil" (<- JR.callStatic "MathUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "DistanceUtil" "instance" (<- JR.new "DistanceUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "DistanceUtil" "instance")


def m_getDistance_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x1 : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y1 : JV := (JR.asI (JR.arg jargs 1))
    let mut l_x2 : JV := (JR.asI (JR.arg jargs 2))
    let mut l_y2 : JV := (JR.asI (JR.arg jargs 3))
    let mut l_dx : JV := (JR.asI (<- JR.sub l_x1 l_x2))
    let mut l_dy : JV := (JR.asI (<- JR.sub l_y1 l_y2))
    return (JR.asI (<- JR.call (<- JR.getField this "mathUtil") "sqrt_1" #[(<- JR.add ((<- JR.mul l_dx l_dx)) ((<- JR.mul l_dy l_dy)))]))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "DistanceUtil",
    javaName := "org.allbinary.math.DistanceUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("mathUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getDistance_4", #["int", "int", "int", "int"], false, m_getDistance_4), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_DistanceUtil


