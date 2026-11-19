-- Generated Code Do Not Modify
-- package org.allbinary.animation.compound
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_SimultaneousCompoundIndexedAnimation

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    pure JV.null


def m_setFrame_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_frameIndex : JV := (JR.asI (JR.arg jargs 0))
    let mut l_indexedAnimation : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp1 : JV := (JR.dec l_index)
            l_index := jtemp1
            
            if !(JR.truth (<- JR.ge jtemp1 (JV.int 0))) then break
            l_indexedAnimation := (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index)
            let _ := (<- JR.call l_indexedAnimation "setFrame_1" #[l_frameIndex])
            pure ()
        pure ()
    pure JV.null


def m_getFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_indexedAnimation : JV := (<- JR.aget (<- JR.getField this "animationInterfaceArray") (JV.int 0))
    return (JR.asI (<- JR.call l_indexedAnimation "getFrame_0" #[]))


def m_getSize_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_indexedAnimation : JV := (<- JR.aget (<- JR.getField this "animationInterfaceArray") (JV.int 0))
    return (JR.asI (<- JR.call l_indexedAnimation "getSize_0" #[]))


def m_previousFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_indexedAnimation : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp2 : JV := (JR.dec l_index)
            l_index := jtemp2
            
            if !(JR.truth (<- JR.ge jtemp2 (JV.int 0))) then break
            l_indexedAnimation := (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index)
            let _ := (<- JR.call l_indexedAnimation "previousFrame_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_setSequence_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_sequence : JV := (JR.arg jargs 0)
    pure JV.null


def m_getSequence_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.callStatic "PrimitiveIntUtil" "getArrayInstance_0" #[])


def m_nextFrame_0 (this : JV) (jargs : Array JV) : JM JV := do
    if true then
        let mut l_index : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
        repeat
            let jtemp3 : JV := (JR.dec l_index)
            l_index := jtemp3
            
            if !(JR.truth (<- JR.ge jtemp3 (JV.int 0))) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "nextFrame_0" #[])
            pure ()
        pure ()
    pure JV.null


def m_paintXY_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "paintXY_3" #[l_graphics, l_x, l_y])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_paintThreedXYZ_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_graphics : JV := (JR.arg jargs 0)
    let mut l_x : JV := (JR.asI (JR.arg jargs 1))
    let mut l_y : JV := (JR.asI (JR.arg jargs 2))
    let mut l_z : JV := (JR.asI (JR.arg jargs 3))
    let mut l_size : JV := (JR.asI (<- JR.alen (<- JR.getField this "animationInterfaceArray")))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let _ := (<- JR.call (<- JR.aget (<- JR.getField this "animationInterfaceArray") l_index) "paintThreedXYZ_4" #[l_graphics, l_x, l_y, l_z])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    pure JV.null


def m_getAnimationInterfaceArray_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getField this "animationInterfaceArray")


def m_setAnimationInterfaceArray_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterfaceArray : JV := (JR.arg jargs 0)
    JR.setField this "animationInterfaceArray" l_animationInterfaceArray
    pure JV.null


def jinit_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_animationInterfaceArray : JV := (JR.arg jargs 0)
    let mut l_animationBehavior : JV := (JR.arg jargs 1)
    let _ <- JR.superInit "IndexedAnimation" this #[l_animationBehavior]
    let _ <- jfields this
    JR.setField this "animationInterfaceArray" l_animationInterfaceArray
    pure this

initialize JR.registerClass {
    name := "SimultaneousCompoundIndexedAnimation",
    javaName := "org.allbinary.animation.compound.SimultaneousCompoundIndexedAnimation",
    super := "IndexedAnimation",
    interfaces := #[],
    isInterface := false,
    fields := #[("animationInterfaceArray", JV.null)],
    statics := #[],
    methods := #[
        ("setFrame_1", #["int"], false, m_setFrame_1), 
        ("getFrame_0", #[], false, m_getFrame_0), 
        ("getSize_0", #[], false, m_getSize_0), 
        ("previousFrame_0", #[], false, m_previousFrame_0), 
        ("setSequence_1", #["intArr"], false, m_setSequence_1), 
        ("getSequence_0", #[], false, m_getSequence_0), 
        ("nextFrame_0", #[], false, m_nextFrame_0), 
        ("paintXY_3", #["Graphics", "int", "int"], false, m_paintXY_3), 
        ("paintThreedXYZ_4", #["Graphics", "int", "int", "int"], false, m_paintThreedXYZ_4), 
        ("getAnimationInterfaceArray_0", #[], false, m_getAnimationInterfaceArray_0), 
        ("setAnimationInterfaceArray_1", #["AnimationArr"], false, m_setAnimationInterfaceArray_1), 
        ("jinit_2", #["AnimationArr", "AnimationBehavior"], false, jinit_2)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_SimultaneousCompoundIndexedAnimation


