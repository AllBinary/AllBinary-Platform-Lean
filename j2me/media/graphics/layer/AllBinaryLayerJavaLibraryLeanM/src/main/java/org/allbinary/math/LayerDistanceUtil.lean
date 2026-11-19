-- Generated Code Do Not Modify
-- package org.allbinary.math
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_LayerDistanceUtil

def jfields (this : JV) : JM JV := do
    JR.setField this "mathUtil" (<- JR.callStatic "MathUtil" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "LayerDistanceUtil" "instance" (<- JR.new "LayerDistanceUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "LayerDistanceUtil" "instance")


def m_getDistance_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_layerInterface2 : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (<- JR.sub ((<- JR.add (<- JR.call l_layerInterface "getXP_0" #[]) (<- JR.call l_layerInterface "getHalfWidth_0" #[]))) ((<- JR.add (<- JR.call l_layerInterface2 "getXP_0" #[]) (<- JR.call l_layerInterface2 "getHalfWidth_0" #[])))))
    let mut l_dy : JV := (JR.asI (<- JR.sub ((<- JR.add (<- JR.call l_layerInterface "getYP_0" #[]) (<- JR.call l_layerInterface "getHalfHeight_0" #[]))) ((<- JR.add (<- JR.call l_layerInterface2 "getYP_0" #[]) (<- JR.call l_layerInterface2 "getHalfHeight_0" #[])))))
    return (JR.asI (<- JR.call (<- JR.getField this "mathUtil") "sqrt_1" #[(<- JR.add ((<- JR.mul l_dx l_dx)) ((<- JR.mul l_dy l_dy)))]))


def m_getDistance3D_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_layerInterface2 : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (<- JR.sub ((<- JR.add (<- JR.call l_layerInterface "getXP_0" #[]) (<- JR.call l_layerInterface "getHalfWidth_0" #[]))) ((<- JR.add (<- JR.call l_layerInterface2 "getXP_0" #[]) (<- JR.call l_layerInterface2 "getHalfWidth_0" #[])))))
    let mut l_dy : JV := (JR.asI (<- JR.sub ((<- JR.add (<- JR.call l_layerInterface "getYP_0" #[]) (<- JR.call l_layerInterface "getHalfHeight_0" #[]))) ((<- JR.add (<- JR.call l_layerInterface2 "getYP_0" #[]) (<- JR.call l_layerInterface2 "getHalfHeight_0" #[])))))
    let mut l_dz : JV := (JR.asI (<- JR.sub ((<- JR.add (<- JR.call l_layerInterface "getZP_0" #[]) (<- JR.call l_layerInterface "getHalfDepth_0" #[]))) ((<- JR.add (<- JR.call l_layerInterface2 "getZP_0" #[]) (<- JR.call l_layerInterface2 "getHalfDepth_0" #[])))))
    return (JR.asI (<- JR.call (<- JR.getField this "mathUtil") "sqrt_1" #[(<- JR.add (<- JR.add ((<- JR.mul l_dx l_dx)) ((<- JR.mul l_dy l_dy))) ((<- JR.mul l_dz l_dz)))]))


def m_getDistanceAt_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_layerInterface : JV := (JR.arg jargs 0)
    let mut l_point : JV := (JR.arg jargs 1)
    let mut l_dx : JV := (JR.asI (<- JR.sub (<- JR.call l_layerInterface "getXP_0" #[]) (<- JR.call l_point "getX_0" #[])))
    let mut l_dy : JV := (JR.asI (<- JR.sub (<- JR.call l_layerInterface "getYP_0" #[]) (<- JR.call l_point "getY_0" #[])))
    return (JR.asI (<- JR.call (<- JR.getField this "mathUtil") "sqrt_1" #[(<- JR.add ((<- JR.mul l_dx l_dx)) ((<- JR.mul l_dy l_dy)))]))


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "LayerDistanceUtil",
    javaName := "org.allbinary.math.LayerDistanceUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("mathUtil", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("getDistance_2", #["AllBinaryLayer", "AllBinaryLayer"], false, m_getDistance_2), 
        ("getDistance3D_2", #["AllBinaryLayer", "AllBinaryLayer"], false, m_getDistance3D_2), 
        ("getDistanceAt_2", #["AllBinaryLayer", "GPoint"], false, m_getDistanceAt_2), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_LayerDistanceUtil


