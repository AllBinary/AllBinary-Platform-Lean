-- Generated Code Do Not Modify
-- package org.allbinary.animation
import AllBinaryJava
set_option linter.unusedVariables false
set_option maxHeartbeats 0
set_option maxRecDepth 20000


namespace jclass_VectorExplosionGenerator

def jfields (this : JV) : JM JV := do
    JR.setField this "RANDOM" (<- JR.new "VectorExplosionType" #[])
    JR.setField this "ROTATION" (<- JR.new "VectorExplosionType" #[])
    JR.setField this "vectorAnimationUtil" (<- JR.callStatic "VectorAnimationUtil" "getInstance_0" #[])
    JR.setField this "randomRotationFactory" (<- JR.callStatic "RandomRotationFactory" "getInstance_0" #[])
    pure JV.null

def jclinit : JM JV := do
    JR.setStatic "VectorExplosionGenerator" "instance" (<- JR.new "VectorExplosionGenerator" #[])
    pure JV.null


def m_getInstance_0 (this : JV) (jargs : Array JV) : JM JV := do
    return (<- JR.getStatic "VectorExplosionGenerator" "instance")


def m_createList_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_list : JV := (JR.arg jargs 0)
    let mut l_howMuch : JV := (JR.asI (JR.arg jargs 1))
    let mut l_type : JV := (JR.arg jargs 2)
    let mut l_point : JV := JV.null
    let mut l_size : JV := (JR.asI (<- JR.call l_list "size_0" #[]))
    let mut l_points : JV := (<- JR.newArray "I" 2 #[l_size, (JV.int 2)])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index l_size)) then break
            l_point := (<- JR.aget (<- JR.getField l_list "objectArray") l_index)
            JR.aset (<- JR.aget l_points l_index) (JV.int 0) (<- JR.call l_point "getX_0" #[])
            JR.aset (<- JR.aget l_points l_index) (JV.int 1) (<- JR.call l_point "getY_0" #[])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return (<- JR.call this "createListFromPoints_4" #[l_list, l_points, l_howMuch, l_type])


def m_getInstance_3 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    let mut l_howMuch : JV := (JR.asI (JR.arg jargs 1))
    let mut l_type : JV := (JR.arg jargs 2)
    let mut l_pointsBasicArrayList : JV := (<- JR.call this "getInstanceStartFrame_4" #[l_points, l_howMuch, l_type, (JV.bool true)])
    let mut l_tempBasicArrayList : JV := (<- JR.aget (<- JR.getField l_pointsBasicArrayList "objectArray") (JV.int 0))
    let mut l_newPoints : JV := (<- JR.call (<- JR.getField this "vectorAnimationUtil") "toAnimationArrayFromListOfPointListWithPointsPerFrame_2" #[l_pointsBasicArrayList, (<- JR.call l_tempBasicArrayList "size_0" #[])])
    return l_newPoints


def m_getInstanceStartFrame_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    let mut l_howMuch : JV := (JR.asI (JR.arg jargs 1))
    let mut l_type : JV := (JR.arg jargs 2)
    let mut l_startFrame : JV := (JR.arg jargs 3)
    try
        let mut l_pointsBasicArrayList : JV := (<- JR.new "BasicArrayListS" #[l_howMuch])
        let _ := (<- JR.call l_pointsBasicArrayList "add_1" #[(<- JR.call this "createPointsBasicArrayList_1" #[l_points])])
        let mut l_frameIndex : JV := (JR.asI (JV.int 0))
        let mut l_tempBasicArrayList : JV := JV.null
        let mut l_pointBasicArrayList : JV := JV.null
        repeat
            if !(JR.truth (<- JR.lt l_frameIndex l_howMuch)) then break
            l_tempBasicArrayList := (<- JR.aget (<- JR.getField l_pointsBasicArrayList "objectArray") l_frameIndex)
            l_pointBasicArrayList := (<- JR.call this "createListFromPoints_4" #[l_tempBasicArrayList, l_points, l_howMuch, l_type])
            let _ := (<- JR.call l_pointsBasicArrayList "add_1" #[l_pointBasicArrayList])
            l_frameIndex := (JR.inc l_frameIndex)
            pure ()
        if JR.truth (JR.not l_startFrame) then
            let _ := (<- JR.call l_pointsBasicArrayList "removeAt_1" #[(JV.int 0)])
            pure ()
        return l_pointsBasicArrayList
    catch jex0 =>
        if (<- JR.isInstanceOfAny jex0 #["Exception"]) then
            let mut l_e : JV := jex0
            throw l_e
        else
            throw jex0
    pure JV.null


def m_createListFromPoints_4 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_tempBasicArrayList : JV := (JR.arg jargs 0)
    let mut l_points : JV := (JR.arg jargs 1)
    let mut l_howMuch : JV := (JR.asI (JR.arg jargs 2))
    let mut l_type : JV := (JR.arg jargs 3)
    let mut l_index : JV := (JR.asI (JV.int 0))
    let mut l_pointBasicArrayList : JV := (<- JR.new "BasicArrayListD" #[])
    let mut l_sectionBasicArrayList : JV := JV.null
    repeat
        if !(JR.truth (<- JR.lt l_index (<- JR.alen l_points))) then break
        l_sectionBasicArrayList := (<- JR.new "BasicArrayListD" #[])
        repeat
            if !(JR.truth (<- JR.ne (<- JR.aget (<- JR.aget l_points l_index) (JV.int 0)) (JV.int 1000))) then break
            let _ := (<- JR.call l_sectionBasicArrayList "add_1" #[(<- JR.aget (<- JR.getField l_tempBasicArrayList "objectArray") l_index)])
            l_index := (JR.inc l_index)
            if JR.truth (<- JR.ge l_index (<- JR.alen l_points)) then
                break
            pure ()
        l_sectionBasicArrayList := (<- JR.callStatic "RandomTranslation" "getInstance_2" #[l_sectionBasicArrayList, l_howMuch])
        if JR.truth (<- JR.eq l_type (<- JR.getField this "ROTATION")) then
            l_sectionBasicArrayList := (<- JR.call (<- JR.getField this "randomRotationFactory") "getInstanceList_2" #[l_sectionBasicArrayList, l_howMuch])
            pure ()
        let mut l_size : JV := (JR.asI (<- JR.call l_sectionBasicArrayList "size_0" #[]))
        if true then
            let mut l_index2 : JV := (JR.asI (JV.int 0))
            repeat
                if !(JR.truth (<- JR.lt l_index2 l_size)) then break
                let _ := (<- JR.call l_pointBasicArrayList "add_1" #[(<- JR.aget (<- JR.getField l_sectionBasicArrayList "objectArray") l_index2)])
                l_index2 := (JR.inc l_index2)
                pure ()
            pure ()
        if JR.truth (<- JR.ge l_index (<- JR.alen l_points)) then
            break
        else
            if JR.truth (<- JR.eq (<- JR.aget (<- JR.aget l_points l_index) (JV.int 0)) (JV.int 1000)) then
                let _ := (<- JR.call l_pointBasicArrayList "add_1" #[(<- JR.aget (<- JR.getField l_tempBasicArrayList "objectArray") l_index)])
                l_index := (JR.inc l_index)
                pure ()
        pure ()
    return l_pointBasicArrayList


def m_createPointsBasicArrayList_1 (this : JV) (jargs : Array JV) : JM JV := do
    let mut l_points : JV := (JR.arg jargs 0)
    if JR.truth (<- JR.eq (<- JR.alen l_points) (JV.int 0)) then
        throw (<- JR.new "Exception" #[(JV.str "Not Points Provided")])
    let mut l_firstPointBasicArrayList : JV := (<- JR.new "BasicArrayListS" #[(<- JR.alen l_points)])
    let mut l_pointFactory : JV := (<- JR.callStatic "PointFactory" "getInstance_0" #[])
    if true then
        let mut l_index : JV := (JR.asI (JV.int 0))
        repeat
            if !(JR.truth (<- JR.lt l_index (<- JR.alen l_points))) then break
            let _ := (<- JR.call l_firstPointBasicArrayList "add_1" #[(<- JR.call l_pointFactory "createXY_2" #[(<- JR.aget (<- JR.aget l_points l_index) (JV.int 0)), (<- JR.aget (<- JR.aget l_points l_index) (JV.int 1))])])
            l_index := (JR.inc l_index)
            pure ()
        pure ()
    return l_firstPointBasicArrayList


def jinit_0 (this : JV) (jargs : Array JV) : JM JV := do
    let _ <- JR.superInit "Object" this #[]
    let _ <- jfields this
    pure this

initialize JR.registerClass {
    name := "VectorExplosionGenerator",
    javaName := "org.allbinary.animation.VectorExplosionGenerator",
    super := "Object",
    interfaces := #[],
    isInterface := false,
    fields := #[("RANDOM", JV.null), ("ROTATION", JV.null), ("vectorAnimationUtil", JV.null), ("randomRotationFactory", JV.null)],
    statics := #[("instance", JV.null)],
    methods := #[
        ("getInstance_0", #[], true, m_getInstance_0), 
        ("createList_3", #["BasicArrayList", "int", "VectorExplosionType"], false, m_createList_3), 
        ("getInstance_3", #["intArrArr", "int", "VectorExplosionType"], false, m_getInstance_3), 
        ("getInstanceStartFrame_4", #["intArrArr", "int", "VectorExplosionType", "boolean"], false, m_getInstanceStartFrame_4), 
        ("createListFromPoints_4", #["BasicArrayList", "intArrArr", "int", "VectorExplosionType"], false, m_createListFromPoints_4), 
        ("createPointsBasicArrayList_1", #["intArrArr"], false, m_createPointsBasicArrayList_1), 
        ("jinit_0", #[], false, jinit_0)],
    fieldInit := jfields,
    clinit := jclinit }

end jclass_VectorExplosionGenerator


