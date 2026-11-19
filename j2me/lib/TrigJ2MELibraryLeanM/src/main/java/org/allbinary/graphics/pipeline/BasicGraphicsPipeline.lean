-- Generated Code Do Not Modify
-- package org.allbinary.graphics.pipeline
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_BasicGraphicsPipeline

def jfields (this : JV) : JM JV := do
    JR.setField this "noDecimalTrigTable" (<- JR.callStatic "NoDecimalTrigTable" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setInitMatrix_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    JR.setField this "pointBasicArrayList" l_points
    pure JV.null


def m_createMatrix_0 (this : JV) (jargs : Array JV) : JM JV := do
    pure JV.null


def m_translate_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_x : JV := (JR.asI (JR.arg jargs 0))
    let mut l_y : JV := (JR.asI (JR.arg jargs 1))
    let mut l_newBasicArrayList : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "pointBasicArrayList") "size_0" #[]))
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    let mut l_secondPoint : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_secondPoint := (<- JR.aget (<- JR.getField (<- JR.getField this "pointBasicArrayList") "objectArray") l_index)
            if JR.truth (<- JR.ne (<- JR.call l_secondPoint "getX_0" #[]) (JV.int 1000)) then
                let _ := (<- JR.call l_newBasicArrayList "add_1" #[(<- JR.call l_pointFactory "createXY_2" #[(<- JR.add (<- JR.call l_secondPoint "getX_0" #[]) l_x), (<- JR.add (<- JR.call l_secondPoint "getY_0" #[]) l_y)])])
                pure ()
            else
                let _ := (<- JR.call l_newBasicArrayList "add_1" #[l_secondPoint])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "pointBasicArrayList" l_newBasicArrayList
    pure JV.null


def m_rotateToAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "rotate_1" #[(JR.toI (<- JR.call l_angle "getValue_0" #[]))])
    pure JV.null


def m_rotate_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asI (JR.arg jargs 0))
    let mut l_newBasicArrayList : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_secondPoint : JV := JV.null
    let mut l_y : JV := (JR.asJ (JV.long 0))
    let mut l_secondX : JV := (JR.asJ (JV.long 0))
    let mut l_secondY : JV := (JR.asJ (JV.long 0))
    let mut l_point : JV := JV.null
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "pointBasicArrayList") "size_0" #[]))
    let mut l_sin : JV := (JR.asJ (JV.long 0))
    let mut l_cos : JV := (JR.asJ (JV.long 0))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_secondPoint := (<- JR.aget (<- JR.getField (<- JR.getField this "pointBasicArrayList") "objectArray") l_index)
            if JR.truth (<- JR.ne (<- JR.call l_secondPoint "getX_0" #[]) (JV.int 1000)) then
                l_sin := (JR.asJ (<- JR.call (<- JR.getField this "noDecimalTrigTable") "sin_1" #[l_angle]))
                l_cos := (JR.asJ (<- JR.call (<- JR.getField this "noDecimalTrigTable") "cos_1" #[l_angle]))
                l_y := (JR.asJ (<- JR.mul (JR.toJ (<- JR.call l_secondPoint "getY_0" #[])) l_sin))
                l_secondX := (JR.asJ (<- JR.sub ((<- JR.mul (JR.toJ (<- JR.call l_secondPoint "getX_0" #[])) l_cos)) l_y))
                l_secondY := (JR.asJ (<- JR.add ((<- JR.mul (JR.toJ (<- JR.call l_secondPoint "getX_0" #[])) l_sin)) ((<- JR.mul (JR.toJ (<- JR.call l_secondPoint "getY_0" #[])) l_cos))))
                l_point := (<- JR.call l_pointFactory "createXY_2" #[(<- JR.div (JR.toI l_secondX) (JV.int 10000)), (<- JR.div (JR.toI l_secondY) (JV.int 10000))])
                let _ := (<- JR.call l_newBasicArrayList "add_1" #[l_point])
                pure ()
            else
                let _ := (<- JR.call l_newBasicArrayList "add_1" #[l_secondPoint])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "pointBasicArrayList" l_newBasicArrayList
    pure JV.null


def m_mirror_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_width : JV := (JR.asI (JR.arg jargs 0))
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    let mut l_halfWidth : JV := (JR.asI ((<- JR.shr l_width (JV.int 1))))
    let mut l_newBasicArrayList : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_secondPoint : JV := JV.null
    let mut l_newX : JV := (JR.asI (JV.int 0))
    let mut l_point : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call (<- JR.getField this "pointBasicArrayList") "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_secondPoint := (<- JR.aget (<- JR.getField (<- JR.getField this "pointBasicArrayList") "objectArray") l_index)
            if JR.truth (<- JR.ne (<- JR.call l_secondPoint "getX_0" #[]) (JV.int 1000)) then
                l_newX := (JR.asI (JV.int 0))
                if JR.truth (<- JR.gt (<- JR.call l_secondPoint "getX_0" #[]) l_halfWidth) then
                    l_newX := (JR.asI (<- JR.sub l_halfWidth ((<- JR.sub (<- JR.call l_secondPoint "getX_0" #[]) l_halfWidth))))
                    pure ()
                else
                    l_newX := (JR.asI (<- JR.add l_halfWidth ((<- JR.sub l_halfWidth (<- JR.call l_secondPoint "getX_0" #[])))))
                    pure ()
                l_point := (<- JR.call l_pointFactory "createXY_2" #[l_newX, (<- JR.call l_secondPoint "getY_0" #[])])
                let _ := (<- JR.call l_newBasicArrayList "add_1" #[l_point])
                pure ()
            else
                let _ := (<- JR.call l_newBasicArrayList "add_1" #[l_secondPoint])
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    JR.setField this "pointBasicArrayList" l_newBasicArrayList
    pure JV.null


def m_getMatrix_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "pointBasicArrayList")


def jinit_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    JR.setField this "pointBasicArrayList" l_points
    pure this

initialize JR.registerClass {
    name := "BasicGraphicsPipeline",
    javaName := "org.allbinary.graphics.pipeline.BasicGraphicsPipeline",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("pointBasicArrayList", JV.null), ("noDecimalTrigTable", JV.null)],
    statics := #[],
    methods := #[
        ("setInitMatrix_1", #["BasicArrayList"], false, m_setInitMatrix_1), 
        ("createMatrix_0", #[], false, m_createMatrix_0), 
        ("translate_2", #["int", "int"], false, m_translate_2), 
        ("rotateToAngle_1", #["Angle"], false, m_rotateToAngle_1), 
        ("rotate_1", #["int"], false, m_rotate_1), 
        ("mirror_1", #["int"], false, m_mirror_1), 
        ("getMatrix_0", #[], false, m_getMatrix_0), 
        ("jinit_1", #["BasicArrayList"], false, jinit_1)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_BasicGraphicsPipeline


