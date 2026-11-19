-- Generated Code Do Not Modify
-- package org.allbinary.graphics.pipeline
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_RandomRotationFactory

def jfields (this : JV) : JM JV := do
    JR.setField this "myRandomFactory" (<- JR.callStatic "MyRandomFactory" "getInstance_0" #[])
    JR.setField this "angleFactory" (<- JR.callStatic "AngleFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "RandomRotationFactory" "instance" (<- JR.new "RandomRotationFactory" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "RandomRotationFactory" "instance")


def m_getInstanceList_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vector : JV := (JR.arg jargs 0)
    let mut l_howMuch : JV := (JR.asI (JR.arg jargs 1))
    let mut l_graphicsPipe : JV := (<- JR.new "BasicGraphicsPipeline" #[l_vector])
    let _ := (<- JR.call l_graphicsPipe "createMatrix_0" #[])
    let _ := (<- JR.call l_graphicsPipe "rotateToAngle_1" #[(<- JR.call (<- JR.getField this "angleFactory") "getAt_1" #[(<- JR.call this "getNextRandomAngle_1" #[l_howMuch])])])
    return (<- JR.call l_graphicsPipe "getMatrix_0" #[])


def m_getNextRandomAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_howMuch : JV := (JR.asI (JR.arg jargs 0))
    return (JR.asI (<- JR.call (<- JR.getField this "myRandomFactory") "getNextInt_1" #[(<- JR.mul l_howMuch (JV.int 10))]))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "RandomRotationFactory",
    javaName := "org.allbinary.graphics.pipeline.RandomRotationFactory",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("myRandomFactory", JV.null), ("angleFactory", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getInstanceList_2", #["BasicArrayList", "int"], false, m_getInstanceList_2), 
        ("getNextRandomAngle_1", #["int"], false, m_getNextRandomAngle_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_RandomRotationFactory


