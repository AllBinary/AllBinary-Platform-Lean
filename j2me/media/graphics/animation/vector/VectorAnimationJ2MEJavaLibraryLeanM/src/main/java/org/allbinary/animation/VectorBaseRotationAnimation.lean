-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorBaseRotationAnimation

def jfields (this : JV) : JM JV := do
    JR.setField this "currentPoints" (<- JR.getField (<- JR.callStatic "NullUtil" "getInstance_0" #[]) "NULL_INT_ARRAY_ARRAY_ARRAY")
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call this "getSize_0" #[]))


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.getInherited this "VectorBaseRotationAnimation" "circularIndexUtil") "getIndex_0" #[]))


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_index : JV := (JR.asI (JR.arg jargs 0))
    let _ := (<- JR.call (<- JR.getInherited this "VectorBaseRotationAnimation" "circularIndexUtil") "setIndex_1" #[l_index])
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "VectorBaseRotationAnimation" "circularIndexUtil") "next_0" #[])
    pure JV.null


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ := (<- JR.call (<- JR.getInherited this "VectorBaseRotationAnimation" "circularIndexUtil") "previous_0" #[])
    pure JV.null


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.alen (<- JR.getField this "currentPoints")))


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let _ := (<- JR.call (<- JR.getInherited this "VectorBaseRotationAnimation" "basicSetColorUtil") "setBasicColorP_2" #[l_graphics, (<- JR.getInherited this "VectorBaseRotationAnimation" "basicColor")])
    try
        let mut l_nextPointX : JV := (JR.asI (JV.int 0))
        let mut l_nextPointY : JV := (JR.asI (JV.int 0))
        let mut l_nextPoint : JV := JV.null
        let mut l_point : JV := JV.null
        let mut l_currentPointsFrame : JV := (<- JR.aget (<- JR.getField this "currentPoints") (<- JR.call (<- JR.getInherited this "VectorBaseRotationAnimation" "circularIndexUtil") "getIndex_0" #[]))
        let mut l_size : JV := (JR.asI (<- JR.alen l_currentPointsFrame))
        let mut l_index : JV := (JR.asI (<- JR.sub l_size (JV.int 2)))
        repeat
            let jtemp3 : JV := (JR.dec l_index)
            l_index := jtemp3
            
            if !(JR.truth (<- JR.ge jtemp3 (JV.int 0))) then break
            l_nextPoint := (<- JR.aget l_currentPointsFrame l_index)
            l_point := (<- JR.aget l_currentPointsFrame (<- JR.add l_index (JV.int 1)))
            l_nextPointX := (JR.asI (<- JR.aget l_nextPoint (JV.int 0)))
            l_nextPointY := (JR.asI (<- JR.aget l_nextPoint (JV.int 1)))
            if JR.truth (<- JR.ne l_nextPointX (JV.int 1000)) then
                let _ := (<- JR.call l_graphics "drawLine_4" #[(<- JR.add (<- JR.aget l_point (JV.int 0)) l_x), (<- JR.add (<- JR.aget l_point (JV.int 1)) l_y), (<- JR.add l_nextPointX l_x), (<- JR.add l_nextPointY l_y)])
                pure ()
            else
                l_index := (JR.dec l_index)
                pure ()
            pure ()
        pure ()
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            let _ := (<- JR.call (<- JR.getInherited this "VectorBaseRotationAnimation" "logUtil") "put_4" #[(<- JR.getField (<- JR.getInherited this "VectorBaseRotationAnimation" "commonStrings") "EXCEPTION"), this, (JV.str "paintVectors"), l_e])
            pure ()
        else
            throw jex0
    pure JV.null


def m_getPoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frame : JV := (JR.asI (JR.arg jargs 0))
    return (<- JR.aget (<- JR.getField this "currentPoints") l_frame)


def m_setPoints_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_currentPoints : JV := (JR.arg jargs 0)
    JR.setField this "currentPoints" l_currentPoints
    JR.setInherited this "VectorBaseRotationAnimation" "circularIndexUtil" (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.alen (<- JR.getField this "currentPoints"))])
    pure JV.null


def m_getBasicColorP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callSuper "RotationAnimation" this "getBasicColorP_0" #[])


def m_setBasicColorP_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_basicColor : JV := (JR.arg jargs 0)
    let _ := (<- JR.callSuper "RotationAnimation" this "setBasicColorP_1" #[l_basicColor])
    pure JV.null


def jinit_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angleInfo : JV := (JR.arg jargs 0)
    let mut l_currentPoints : JV := (JR.arg jargs 1)
    let mut l_basicColor : JV := (JR.arg jargs 2)
    let mut l_animationBehavior : JV := (JR.arg jargs 3)
    let _ <- JR.superInit "RotationAnimation" this #[l_angleInfo, (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(<- JR.div (JV.int 360) (JR.toI (<- JR.call (<- JR.call l_angleInfo "getAngleIncrementInfo_0" #[]) "getAngleIncrement_0" #[])))]), l_animationBehavior]
    let _ <- jfields this
    let _ := (<- JR.call this "setPoints_1" #[l_currentPoints])
    let _ := (<- JR.call this "setBasicColorP_1" #[l_basicColor])
    pure this

initialize JR.registerClass {
    name := "VectorBaseRotationAnimation",
    javaName := "org.allbinary.animation.VectorBaseRotationAnimation",
    super := "RotationAnimation",
    interfaces := #["VectorAnimationInterface"],
    isInterface := false,
    fields := #[("currentPoints", JV.null)],
    statics := #[],
    methods := #[
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("getPoints_1", #["int"], false, m_getPoints_1), 
        ("setPoints_1", #["intArrArrArr"], false, m_setPoints_1), 
        ("getBasicColorP_0", #[], false, m_getBasicColorP_0), 
        ("setBasicColorP_1", #["BasicColor"], false, m_setBasicColorP_1), 
        ("jinit_4", #["AngleInfo", "intArrArrArr", "BasicColor", "AnimationBehavior"], false, jinit_4)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorBaseRotationAnimation


