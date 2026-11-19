-- Generated Code Do Not Modify
-- package org.allbinary.graphics.color
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicColorArrayIndexer

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_next_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getField this "circularIndexUtil") "next_0" #[])
    pure JV.null


def m_get_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.aget (<- JR.getField this "basicColorArray") (<- JR.call (<- JR.getField this "circularIndexUtil") "getIndex_0" #[]))


def m_getBasicColorArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "basicColorArray")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColorArray : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "basicColorArray" l_basicColorArray
    JR.setField this "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.alen (<- JR.getField this "basicColorArray"))])
    pure this

initialize JR.registerClass {
    name := "BasicColorArrayIndexer",
    javaName := "org.allbinary.graphics.color.BasicColorArrayIndexer",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("basicColorArray", JV.null), ("circularIndexUtil", JV.null)],
    statics := #[],
    methods := #[
        ("next_0", #[], false, m_next_0), 
        ("get_0", #[], false, m_get_0), 
        ("getBasicColorArray_0", #[], false, m_getBasicColorArray_0), 
        ("jinit_1", #["BasicColorArr"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicColorArrayIndexer


