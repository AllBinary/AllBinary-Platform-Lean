-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorAnimationUtil

def jfields (this : JV) : JM JV := do
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "VectorAnimationUtil" "instance" (<- JR.new "VectorAnimationUtil" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "VectorAnimationUtil" "instance")


def m_toAnimationArrayFromListOfPointListWithPointsPerFrame_2 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vector : JV := (JR.arg jargs 0)
    let mut l_pointsPerFrame : JV := (JR.asI (JR.arg jargs 1))
    let mut l_size : JV := (JR.asI (<- JR.call l_vector "size_0" #[]))
    let mut l_points : JV := (<- JR.newArray "I" 3 #[l_size, l_pointsPerFrame, (JV.int 2)])
    let mut l_nextBasicArrayList : JV := JV.null
    let mut l_framePoints : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_nextBasicArrayList := (<- JR.aget (<- JR.getField l_vector "objectArray") l_index)
            l_framePoints := (<- JR.call this "toFrameArrayFromPointBasicArrayList_1" #[l_nextBasicArrayList])
            if true then
                let mut l_pointIndex : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_pointIndex (<- JR.alen l_framePoints))) then break
                    JR.aset (<- JR.aget (<- JR.aget l_points l_index) l_pointIndex) (JV.int 0) (<- JR.aget (<- JR.aget l_framePoints l_pointIndex) (JV.int 0))
                    JR.aset (<- JR.aget (<- JR.aget l_points l_index) l_pointIndex) (JV.int 1) (<- JR.aget (<- JR.aget l_framePoints l_pointIndex) (JV.int 1))
                    l_pointIndex := (JR.inc l_pointIndex)
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_points


def m_toAnimationArrayFromListOfPointList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_vector : JV := (JR.arg jargs 0)
    let mut l_size : JV := (JR.asI (<- JR.call l_vector "size_0" #[]))
    let mut l_points : JV := (<- JR.newArray "I" 3 #[l_size, (JV.int 0), (JV.int 0)])
    let mut l_nextBasicArrayList : JV := JV.null
    let mut l_framePoints : JV := JV.null
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_nextBasicArrayList := (<- JR.aget (<- JR.getField l_vector "objectArray") l_index)
            l_framePoints := (<- JR.call this "toFrameArrayFromPointBasicArrayList_1" #[l_nextBasicArrayList])
            JR.aset l_points l_index (<- JR.newArray "I" 2 #[(<- JR.alen l_framePoints), (JV.int 2)])
            if true then
                let mut l_pointIndex : JV := (JR.asI (JV.int 0))
                repeat
                    if !(JR.truth (<- JR.lt l_pointIndex (<- JR.alen l_framePoints))) then break
                    JR.aset (<- JR.aget (<- JR.aget l_points l_index) l_pointIndex) (JV.int 0) (<- JR.aget (<- JR.aget l_framePoints l_pointIndex) (JV.int 0))
                    JR.aset (<- JR.aget (<- JR.aget l_points l_index) l_pointIndex) (JV.int 1) (<- JR.aget (<- JR.aget l_framePoints l_pointIndex) (JV.int 1))
                    l_pointIndex := (JR.inc l_pointIndex)
                    pure ()
                pure ()
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_points


def m_toFrameArrayFromPointBasicArrayList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_points : JV := (<- JR.newArray "I" 2 #[(<- JR.call l_list "size_0" #[]), (JV.int 2)])
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            let mut l_nextPoint : JV := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            JR.aset (<- JR.aget l_points l_index) (JV.int 0) (<- JR.call l_nextPoint "getX_0" #[])
            JR.aset (<- JR.aget l_points l_index) (JV.int 1) (<- JR.call l_nextPoint "getY_0" #[])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_points


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "VectorAnimationUtil",
    javaName := "org.allbinary.animation.VectorAnimationUtil",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("toAnimationArrayFromListOfPointListWithPointsPerFrame_2", #["BasicArrayList", "int"], false, m_toAnimationArrayFromListOfPointListWithPointsPerFrame_2), 
        ("toAnimationArrayFromListOfPointList_1", #["BasicArrayList"], false, m_toAnimationArrayFromListOfPointList_1), 
        ("toFrameArrayFromPointBasicArrayList_1", #["BasicArrayList"], false, m_toFrameArrayFromPointBasicArrayList_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorAnimationUtil


