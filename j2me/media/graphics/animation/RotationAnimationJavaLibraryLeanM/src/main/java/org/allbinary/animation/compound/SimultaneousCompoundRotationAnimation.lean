-- Generated Code Do Not Modify
-- package org.allbinary.animation.compound
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SimultaneousCompoundRotationAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frameIndex : JV := (JR.asI (JR.arg jargs 0))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "setFrame_1" #[l_frameIndex])
            pure ()
        pure ()
    pure JV.null


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") (JV.int 0)) "getFrame_0" #[]))


def m_getAnimationSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") (JV.int 0)) "getAnimationSize_0" #[]))


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (JR.asI (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") (JV.int 0)) "getSize_0" #[]))


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp3 : JV := (JR.dec l_index)
            l_index := jtemp3
            
            if !(JR.truth (<- JR.ge jtemp3 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "previousFrame_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp4 : JV := (JR.dec l_index)
            l_index := jtemp4
            
            if !(JR.truth (<- JR.ge jtemp4 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "nextFrame_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_previousRotation_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp5 : JV := (JR.dec l_index)
            l_index := jtemp5
            
            if !(JR.truth (<- JR.ge jtemp5 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "previousRotation_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_nextRotation_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp6 : JV := (JR.dec l_index)
            l_index := jtemp6
            
            if !(JR.truth (<- JR.ge jtemp6 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "nextRotation_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp7 : JV := (JR.dec l_index)
            l_index := jtemp7
            
            if !(JR.truth (<- JR.ge jtemp7 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "paintXY_3" #[l_graphics, l_x, l_y])
            pure ()
        pure ()
    pure JV.null


def m_paintThreedXYZ_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp8 : JV := (JR.dec l_index)
            l_index := jtemp8
            
            if !(JR.truth (<- JR.ge jtemp8 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "paintThreedXYZ_4" #[l_graphics, l_x, l_y, l_z])
            pure ()
        pure ()
    pure JV.null


def m_setFrameByDirection_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_direction : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp9 : JV := (JR.dec l_index)
            l_index := jtemp9
            
            if !(JR.truth (<- JR.ge jtemp9 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "setFrameByDirection_1" #[l_direction])
            pure ()
        pure ()
    pure JV.null


def m_setFrameToAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp10 : JV := (JR.dec l_index)
            l_index := jtemp10
            
            if !(JR.truth (<- JR.ge jtemp10 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "setFrameToAngle_1" #[l_angle])
            pure ()
        pure ()
    pure JV.null


def m_adjustFrameToAngle_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_newAngle : JV := (JR.arg jargs 0)
    let _ := (<- JR.call this "adjustFrame_1" #[(<- JR.call l_newAngle "getValue_0" #[])])
    pure JV.null


def m_adjustFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_angle : JV := (JR.asS (JR.arg jargs 0))
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp11 : JV := (JR.dec l_index)
            l_index := jtemp11
            
            if !(JR.truth (<- JR.ge jtemp11 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "adjustFrame_1" #[l_angle])
            pure ()
        pure ()
    pure JV.null


def m_getAngleInfoP_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") (JV.int 0)) "getAngleInfoP_0" #[])


def m_getAnimationInterfaceArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animationInterfaceArray")


def m_setAnimationInterfaceArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterfaceArray : JV := (JR.arg jargs 0)
    JR.setField this "animationInterfaceArray" l_animationInterfaceArray
    pure JV.null


def m_set_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_gl : JV := (JR.arg jargs 0)
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp12 : JV := (JR.dec l_index)
            l_index := jtemp12
            
            if !(JR.truth (<- JR.ge jtemp12 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "set_1" #[l_gl])
            pure ()
        pure ()
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterfaceArray : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "RotationAnimation" this #[(<- JR.callStatic "AngleInfo" "getInstance_1" #[(<- JR.getField (<- JR.callStatic "AngleFactory" "getInstance_0" #[]) "QUARTER_TOTAL_ANGLE")]), (<- JR.callStatic "CircularIndexUtil" "createInstance_1" #[(JV.int 4)]), l_animationBehavior]
    let _ <- jfields this
    JR.setField this "animationInterfaceArray" l_animationInterfaceArray
    pure this

initialize JR.registerClass {
    name := "SimultaneousCompoundRotationAnimation",
    javaName := "org.allbinary.animation.compound.SimultaneousCompoundRotationAnimation",
    super := "RotationAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("animationInterfaceArray", JV.null)],
    statics := #[],
    methods := #[
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("getAnimationSize_0", #[], false, m_getAnimationSize_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("previousRotation_0", #[], false, m_previousRotation_0), 
        ("nextRotation_0", #[], false, m_nextRotation_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paintThreedXYZ_4", #["Graphics", "int", "int", "int"], false, m_paintThreedXYZ_4), 
        ("setFrameByDirection_1", #["Direction"], false, m_setFrameByDirection_1), 
        ("setFrameToAngle_1", #["Angle"], false, m_setFrameToAngle_1), 
        ("adjustFrameToAngle_1", #["Angle"], false, m_adjustFrameToAngle_1), 
        ("adjustFrame_1", #["short"], false, m_adjustFrame_1), 
        ("getAngleInfoP_0", #[], false, m_getAngleInfoP_0), 
        ("getAnimationInterfaceArray_0", #[], false, m_getAnimationInterfaceArray_0), 
        ("setAnimationInterfaceArray_1", #["RotationAnimationArr"], false, m_setAnimationInterfaceArray_1), 
        ("set_1", #["GL"], false, m_set_1), 
        ("jinit_2", #["RotationAnimationArr", "AnimationBehavior"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SimultaneousCompoundRotationAnimation


