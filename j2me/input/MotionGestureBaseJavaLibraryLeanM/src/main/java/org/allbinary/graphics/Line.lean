-- Generated Code Do Not Modify
-- package org.allbinary.graphics
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_Line

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getGradient_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asD (<- JR.div (<- JR.call this "getDeltaY_0" #[]) (<- JR.call this "getDeltaX_0" #[])))


def m_update_0 (this : JV) (jargs : Array JV) : JM JV := do
    JR.setField this "deltaX" (JR.asD (<- JR.sub (JR.toD (<- JR.call (<- JR.call this "getP1_0" #[]) "getX_0" #[])) (JR.toD (<- JR.call (<- JR.call this "getP2_0" #[]) "getX_0" #[]))))
    JR.setField this "deltaY" (JR.asD (<- JR.sub (JR.toD (<- JR.call (<- JR.call this "getP1_0" #[]) "getY_0" #[])) (JR.toD (<- JR.call (<- JR.call this "getP2_0" #[]) "getY_0" #[]))))
    pure JV.null


def m_getDeltaX_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asD (<- JR.getField this "deltaX"))


def m_getDeltaY_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asD (<- JR.getField this "deltaY"))


def m_getP1_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "p1")


def m_getP2_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "p2")


def m_setP1_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_p1 : JV := (JR.arg jargs 0)
    JR.setField this "p1" l_p1
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def m_setP2_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_p2 : JV := (JR.arg jargs 0)
    JR.setField this "p2" l_p2
    let _ := (<- JR.call this "update_0" #[])
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_p1 : JV := (JR.arg jargs 0)
    let mut l_p2 : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "p1" (<- JR.getField (<- JR.callStatic "PointFactory" "getInstance_0" #[]) "ZERO_ZERO")
    JR.setField this "p2" (<- JR.getField this "p1")
    let _ := (<- JR.call this "setP1_1" #[l_p1])
    let _ := (<- JR.call this "setP2_1" #[l_p2])
    pure this

initialize JR.registerClass {
    name := "Line",
    javaName := "org.allbinary.graphics.Line",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("p1", JV.null), ("p2", JV.null), ("deltaX", (JV.double 0.0)), ("deltaY", (JV.double 0.0))],
    statics := #[],
    methods := #[
        ("getGradient_0", #[], false, m_getGradient_0), 
        ("update_0", #[], false, m_update_0), 
        ("getDeltaX_0", #[], false, m_getDeltaX_0), 
        ("getDeltaY_0", #[], false, m_getDeltaY_0), 
        ("getP1_0", #[], false, m_getP1_0), 
        ("getP2_0", #[], false, m_getP2_0), 
        ("setP1_1", #["GPoint"], false, m_setP1_1), 
        ("setP2_1", #["GPoint"], false, m_setP2_1), 
        ("jinit_2", #["GPoint", "GPoint"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_Line


